package com.sample.app.dao;

import java.util.List;

import com.sample.app.vo.CodeSchool;

public interface CodeSchoolDao {
	List<CodeSchool> getAllCodeSchoolDao();
	CodeSchool getSchoolByCode(int code);
	
}
