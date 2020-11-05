package com.sample.app.dao;

import java.util.List;

import com.sample.app.vo.CodeDepartment;

public interface CodeDepartmentDao {

	List<CodeDepartment> getAllCodeDepartment();
	CodeDepartment getDepartmentByCode(int code);
}
