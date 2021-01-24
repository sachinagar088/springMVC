package crudapp.dao;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import crudapp.entity.Student;
@Component
public class StudentDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void save(Student student)
	{
		this.hibernateTemplate.saveOrUpdate(student);
		
	}
	public List<Student> getAllStudents(){
		List<Student> students=this.hibernateTemplate.loadAll(Student.class);
		return students;
	}
	@Transactional
	public void deleteStudent(int sid) {
		Student s = this.hibernateTemplate.load(Student.class,sid);
		this.hibernateTemplate.delete(s);
	}
	public Student getStudent(int sid) {
		return this.hibernateTemplate.get(Student.class, sid);
	}

}
