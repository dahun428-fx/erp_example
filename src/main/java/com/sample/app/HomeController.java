package com.sample.app;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sample.app.service.CodeService;
import com.sample.app.vo.CodeDepartment;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private CodeService codeService;
	
	@RequestMapping("/")
	public String home(Locale locale, Model model) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("query", "getAllCodeDepartment");
		List<CodeDepartment> list = codeService.codeDepartmentList(param);
		model.addAttribute("name", "jung");
		model.addAttribute("list", list);
		return "home";
	}
	
}
