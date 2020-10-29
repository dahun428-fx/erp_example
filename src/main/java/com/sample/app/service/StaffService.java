package com.sample.app.service;

import java.util.List;
import java.util.Map;

import com.sample.app.form.AddForm;

public interface StaffService {

	void addStaff(AddForm addForm);
	Map<String, Object> list(Map<String, Object> param);
}
