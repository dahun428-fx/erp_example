package com.sample.app.vo;

import java.util.Arrays;

public class StaffSkill {

	private int no;
	private Staff staff;
	private CodeSkill[] skills;
	
	public StaffSkill() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	public CodeSkill[] getSkills() {
		return skills;
	}

	public void setSkills(CodeSkill[] skills) {
		this.skills = skills;
	}

	@Override
	public String toString() {
		return "StaffSkill [no=" + no + ", staff=" + staff + ", skills=" + Arrays.toString(skills) + "]";
	}

	
}
