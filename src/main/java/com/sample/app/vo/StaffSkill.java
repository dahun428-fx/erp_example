package com.sample.app.vo;

public class StaffSkill {

	private int no;
	private Staff staff;
	private CodeSkill skill;
	
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

	public CodeSkill getSkill() {
		return skill;
	}

	public void setSkill(CodeSkill skill) {
		this.skill = skill;
	}

	@Override
	public String toString() {
		return "StaffSkill [no=" + no + ", staff=" + staff + ", skill=" + skill + "]";
	}
	
}
