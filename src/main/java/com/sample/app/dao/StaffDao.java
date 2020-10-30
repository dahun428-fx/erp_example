package com.sample.app.dao;

import java.util.List;
import java.util.Map;

import com.sample.app.vo.Staff;

public interface StaffDao {
	void add(Staff staff);
	List<Staff> getAllStaff(Map<String, Object> param);
	int totalStaffCounts(Map<String, Object> param);
	Staff getStaffByNo(int staffNo);
	void updateStaff(Staff staff);
	void deleteStaff(int staffNo);
}
