package com.sample.app.dao;

import java.util.List;

import com.sample.app.vo.StaffSkill;

public interface StaffSkillDao {

	void add(StaffSkill staffSkill);
	List<StaffSkill> getSkillByStaffNo(int staffNo);
	void deleteByStaffNo(int staffNo);
}
