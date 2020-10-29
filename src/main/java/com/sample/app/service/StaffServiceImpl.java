package com.sample.app.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.app.dao.StaffDao;
import com.sample.app.dao.StaffSkillDao;
import com.sample.app.form.AddForm;
import com.sample.app.vo.CodeDepartment;
import com.sample.app.vo.CodeSchool;
import com.sample.app.vo.CodeSkill;
import com.sample.app.vo.Staff;
import com.sample.app.vo.StaffSkill;

@Service
public class StaffServiceImpl implements StaffService{

	@Autowired
	private StaffDao staffDao;
	
	@Autowired
	private StaffSkillDao skillDao;
	
	@Transactional
	public void addStaff(AddForm addForm) {
		if(addForm == null) {
			new RuntimeException("정보가 존재하지 않습니다.");
		}
		Staff staff = new Staff();
		staff.setName(addForm.getName());
		staff.setJuminNo(this.toStringJumin(addForm.getJuminFirst(), addForm.getJuminSecond()));
		staff.setGraduateDay(this.toDateGradudate(addForm.getEndYear(), addForm.getEndMonth(), addForm.getEndDay()));
		
		CodeSchool school = new CodeSchool();
		school.setCode(addForm.getEducation());
		
		CodeDepartment department = new CodeDepartment();
		department.setCode(addForm.getDepartmentCode());
		
		staff.setSchool(school);
		staff.setDepartment(department);
		
		//staff insert
		staffDao.add(staff);
//		System.out.println(staff);

		StaffSkill staffSkill = new StaffSkill();
		staffSkill.setStaff(staff); 
		staffSkill.setSkills(this.getStaffSkillArray(addForm.getSkillCode()));
		
		//staffSkill insert
		skillDao.add(staffSkill);
		System.out.println(staffSkill);
	}
	private CodeSkill[] getStaffSkillArray(int[] skillcodes) {
		CodeSkill[] codeSkills = new CodeSkill[skillcodes.length];
		for(int i = 0; i < skillcodes.length; i++) {
			CodeSkill codeSkill = new CodeSkill();
			codeSkill.setCode(skillcodes[i]);
			codeSkills[i] = codeSkill;
		}
		return codeSkills;
	}
	
	private String toStringJumin(int first, int second) {
		StringBuffer sb = new StringBuffer();
		sb.append(first)
			.append("-")
			.append(second);
		return sb.toString();
	}
	private Date toDateGradudate(String year, String month, String day) {
		StringBuffer sb = new StringBuffer();
		sb.append(year).append("-").append(month).append("-").append(day);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-M-d");
		
		Date date = null;
		try {
			date = df.parse(sb.toString());
		} catch (Exception e) {
			e.printStackTrace();
			new RuntimeException("유효하지 않은 날짜 형식입니다.");
		}
		
		return date;
	}
}
