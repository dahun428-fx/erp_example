package com.sample.app.service;

import java.util.List;
import java.util.Map;

import com.sample.app.form.AddForm;
import com.sample.app.vo.CodeDepartment;
import com.sample.app.vo.CodeSchool;
import com.sample.app.vo.CodeSkill;

public interface CodeService {
	List<CodeDepartment> codeDepartmentList(Map<String, Object> param);
	List<CodeSchool> codeSchoolList(Map<String, Object> param);
	List<CodeSkill> codeSkillList(Map<String, Object> param);
}
