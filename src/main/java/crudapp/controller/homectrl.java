package crudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import crudapp.dao.StudentDao;
import crudapp.entity.Student;

@Controller
public class homectrl {
	@Autowired
	private StudentDao studentDao;
	
	@RequestMapping("/")
	public String home(Model m) {
		List<Student> students=studentDao.getAllStudents();
		m.addAttribute("student",students);
		return "index";
	}
	@RequestMapping("/add")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "add";
	}
	@RequestMapping(value="/handle",method=RequestMethod.POST)
	public RedirectView handlePoduct(@ModelAttribute Student student,HttpServletRequest request) {
		studentDao.save(student);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	@RequestMapping("/delete/{studentId}")
	public RedirectView deleteStudent(@PathVariable("studentId") int sid,HttpServletRequest request) {
		this.studentDao.deleteStudent(sid);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	@RequestMapping("/update/{studentId}")
	public String updateStudent(@PathVariable("studentId") int sid,Model m) {
		Student student=this.studentDao.getStudent(sid);
		m.addAttribute("student", student);
		return "update";
	}
}
