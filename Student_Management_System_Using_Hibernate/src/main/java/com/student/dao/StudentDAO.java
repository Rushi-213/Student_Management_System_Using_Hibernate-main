package com.student.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.student.student.Student;
import com.student.utils.HibernateUtils;

public class StudentDAO implements StudentInterface {

	@Override
	public boolean insertData(Student student) {
		Transaction tx = null;
		
		try(Session session = HibernateUtils.getSession().openSession()){
			tx = session.beginTransaction();
			session.persist(student);
			tx.commit();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return true;
		
	}

	@Override
	public List<Student> getStudent() {
		Session session = HibernateUtils.getSession().openSession();
		Transaction tx = session.beginTransaction();
		List<Student> list = session.createQuery("from Student", Student.class).list();
		return list;
	}
	
}
