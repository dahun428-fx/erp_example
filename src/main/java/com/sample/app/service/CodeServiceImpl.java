package com.sample.app.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.app.dao.CodeDepartmentDao;
import com.sample.app.dao.CodeSchoolDao;
import com.sample.app.vo.CodeDepartment;
import com.sample.app.vo.CodeSchool;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	private CodeDepartmentDao codeDepartmentDao;
	
	@Autowired
	private CodeSchoolDao codeSchoolDao;
	
	public List<CodeDepartment> codeDepartmentList(Map<String, Object> param) {
		String query = (String) param.get("query");
		if("getAllCodeDepartment".equals(query)) {
			return codeDepartmentDao.getAllCodeDepartment();
		}
		
		return codeDepartmentDao.getAllCodeDepartment();
	}
	
	@Override
	public List<CodeSchool> codeSchoolList(Map<String, Object> param) {
		String query = (String) param.get("query");
		
		if("getAllCodeSchool".equals(query)) {
			return codeSchoolDao.getAllCodeSchoolDao();
		}
		
		return codeSchoolDao.getAllCodeSchoolDao();
	}
}
