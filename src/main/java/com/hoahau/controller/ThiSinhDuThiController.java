package com.hoahau.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.hoahau.entity.ThiSinhDuThi;
import com.hoahau.service.ThiSinhDuThiService;

@Controller
@RequestMapping("thisinh")
public class ThiSinhDuThiController {
	@Autowired
	ThiSinhDuThiService thiSinhDuThiService;
	
	@GetMapping
	public String listThiSinhDuThi(ModelMap modelMap) {
		List<ThiSinhDuThi> listThiSinhDuThi = thiSinhDuThiService.listThiSinhDuThi();
		modelMap.addAttribute("listThiSinh", listThiSinhDuThi);
		return "ThiSinh";
	}
	
	@GetMapping("/{mathisinh}")
	public String chiTietThiSinh(@PathVariable String mathisinh,ModelMap modelMap) {
		
		  ThiSinhDuThi chiTietThiSinhs = thiSinhDuThiService.thongTinChiTietThiSinh(mathisinh);	  
		  modelMap.addAttribute("thisinh", chiTietThiSinhs);
		 
		  return "ChiTietThiSinh";
	}
	
}
