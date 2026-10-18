package com.student.dao;

import java.util.List;

import com.student.student.Student;

public interface StudentInterface {
	public boolean insertData(Student student);
	List<Student> getStudent();
}
