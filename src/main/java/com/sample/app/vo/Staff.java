package com.sample.app.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Staff {
	
	private int no;
	private String name;
	private String juminNo;
	private CodeSchool school;
	private CodeDepartment department;
	@JsonFormat("yyyy-MM-dd")
	private Date graduateDay;

	public Staff() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJuminNo() {
		return juminNo;
	}

	public void setJuminNo(String juminNo) {
		this.juminNo = juminNo;
	}

	public CodeSchool getSchool() {
		return school;
	}

	public void setSchool(CodeSchool school) {
		this.school = school;
	}

	public CodeDepartment getDepartment() {
		return department;
	}

	public void setDepartment(CodeDepartment department) {
		this.department = department;
	}

	public Date getGraduateDay() {
		return graduateDay;
	}

	public void setGraduateDay(Date graduateDay) {
		this.graduateDay = graduateDay;
	}

	@Override
	public String toString() {
		return "Staff [no=" + no + ", name=" + name + ", juminNo=" + juminNo + ", school=" + school + ", department="
				+ department + ", graduateDay=" + graduateDay + "]";
	}
	
	

}
