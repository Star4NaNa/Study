package com.test;

import com.biz.impl.StudentBizImpl;
import com.entity.Student;

public class Test {

	public static void main(String[] args) {
		StudentBizImpl sBiz=new StudentBizImpl();
		Student student=new Student();
		student.setSname("admin");
		boolean test=sBiz.valiStudent(student);
		if(test){
			System.out.println("占用");
			
		}else{
			System.out.println("可用");
			
		}

	}

}
