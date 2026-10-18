package com.student.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {

	private static SessionFactory sessionfactory;
	
	static {
		sessionfactory = new Configuration().configure().buildSessionFactory();
		
	}
	
	public static SessionFactory getSession() {
		return sessionfactory;
	}
}
