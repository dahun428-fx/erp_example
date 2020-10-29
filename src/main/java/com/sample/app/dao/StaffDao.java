package com.sample.app.dao;

import java.util.List;
import java.util.Map;

import com.sample.app.vo.Staff;

public interface StaffDao {
	void add(Staff staff);
	List<Staff> getAllStaff(Map<String, Object> param);
	
}
