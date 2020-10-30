package com.sample.app.service;

import java.util.List;
import java.util.Map;

import com.sample.app.form.AddForm;
import com.sample.app.vo.Staff;

public interface StaffService {

	void addStaff(AddForm addForm);
	Map<String, Object> list(Map<String, Object> param);
	Map<String, Object> getStaff(int staffNo);
	void updateStaff(AddForm addForm);
	void deleteStaff(int staffNo);
	boolean isDuplicatedJumin(String jumin, int staffNo);
}
