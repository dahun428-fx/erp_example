package com.sample.app.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.app.form.SearchForm;
import com.sample.app.service.CodeService;
import com.sample.app.vo.CodeDepartment;
import com.sample.app.vo.CodeSchool;
import com.sample.app.vo.CodeSkill;

@Controller
public class StaffController {

	@Autowired
	private CodeService codeService;
	
	@GetMapping("/main.do")
	public String main(Model model) {
		
		SearchForm searchForm = new SearchForm();
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("query", "getAllCodeSchool");
		List<CodeSchool> schoolList = codeService.codeSchoolList(param);
		param.put("query", "getAllCodeSkill");
		List<CodeSkill> skillList = codeService.codeSkillList(param);
		param.put("query", "getAllCodeDepartment");
		List<CodeDepartment> deptList = codeService.codeDepartmentList(param);
		
		model.addAttribute("schoolList", schoolList);
		model.addAttribute("skillList", skillList);
		model.addAttribute("deptList", deptList);
		model.addAttribute("todayDate", new Date());
		model.addAttribute("searchForm", searchForm);
		
		return "staff/staff_search_form";
	}
	@PostMapping("/search.do")
	public String search(@ModelAttribute("searchForm") SearchForm searchForm, Model model) {
		System.out.println(searchForm);

		Map<String, Object> param = new HashMap<String, Object>();
		param.put("query", "getAllCodeSchool");
		List<CodeSchool> schoolList = codeService.codeSchoolList(param);
		param.put("query", "getAllCodeSkill");
		List<CodeSkill> skillList = codeService.codeSkillList(param);
		param.put("query", "getAllCodeDepartment");
		List<CodeDepartment> deptList = codeService.codeDepartmentList(param);
		
		model.addAttribute("schoolList", schoolList);
		model.addAttribute("skillList", skillList);
		model.addAttribute("deptList", deptList);
		model.addAttribute("todayDate", new Date());
		model.addAttribute("searchForm", searchForm);
		
		return "staff/staff_search_form";
	}
	@PostMapping("/add.do")
	public String add() {
		
		
		return "redirect:/main.do";
	}
}
