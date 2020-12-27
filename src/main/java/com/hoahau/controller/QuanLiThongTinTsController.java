package com.hoahau.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.hoahau.entity.ThiSinhDuThi;
import com.hoahau.service.ThiSinhDuThiService;


@Controller
@RequestMapping("/admin/quanlithongtinthisinh")
public class QuanLiThongTinTsController {
	@Autowired
	ThiSinhDuThiService thiSinhDuThiService;

	@GetMapping
	public String listThongTinThiSinh(Model model) {
		List<ThiSinhDuThi> chiTietVongSoKhaos = new ArrayList<ThiSinhDuThi>();
		chiTietVongSoKhaos = thiSinhDuThiService.listThiSinhDuThi();
		model.addAttribute("listThongTinThiSinh", chiTietVongSoKhaos);
		return "QuanLiThongTinThiSinh";
	}
	
	@GetMapping("/new")
	public String themThiSinh(Map<String, Object> map) {
		ThiSinhDuThi thiSinhDuThi = new ThiSinhDuThi();
		map.put("thisinhduthi", thiSinhDuThi);
		return "ThemThiSinh";
	}
	
	@PostMapping("/save")
	public String themThiSinhDuThi(@ModelAttribute("thisinhduthi") ThiSinhDuThi thiSinhDuThi,@RequestParam(value="file") 
	CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request) {
			
		String nameFile = commonsMultipartFiles.getOriginalFilename();
		System.out.println(nameFile);
		if(!"".equals(nameFile)){
			String dirFile = request.getServletContext().getRealPath("/resources/image/");
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();
			}
			try {
				commonsMultipartFiles.transferTo(new File(fileDir+File.separator+nameFile));
				System.out.println("Upload file thành công!");
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}
		
		thiSinhDuThi.setAnhChanDung(nameFile);
		thiSinhDuThiService.ThemThiSinh(thiSinhDuThi);
									
		return "redirect:/admin/quanlithongtinthisinh";
	}
	
	@PostMapping("/edit")
	public String CapNhatThiSinhDuThi(@ModelAttribute("thisinhduthi") ThiSinhDuThi thiSinhDuThi,@RequestParam(value="file") 
	CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request) {
			
		String nameFile = commonsMultipartFiles.getOriginalFilename();
		System.out.println(nameFile);
		if(!"".equals(nameFile)){
			String dirFile = request.getServletContext().getRealPath("/resources/image/");
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();
			}
			try {
				commonsMultipartFiles.transferTo(new File(fileDir+File.separator+nameFile));
				System.out.println("Upload file thành công!");
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}
		
		if(nameFile == "") {
					thiSinhDuThi.setAnhChanDung(thiSinhDuThi.getAnhChanDung());
					thiSinhDuThiService.updateThiSinh(thiSinhDuThi);
		}else if(nameFile != "") {
				thiSinhDuThi.setAnhChanDung(nameFile);
				thiSinhDuThiService.updateThiSinh(thiSinhDuThi);
		}
							
		return "redirect:/admin/quanlithongtinthisinh";
	}
	
	@GetMapping("/edit")
	public ModelAndView CapNhatThiSinh(@RequestParam String MaThiSinh) {
		ModelAndView modelAndView = new ModelAndView("ChinhSuaThiSinh");
		ThiSinhDuThi thiSinhDuThi = thiSinhDuThiService.thongTinChiTietThiSinh(MaThiSinh);
		modelAndView.addObject("thisinhduthi", thiSinhDuThi);
		return modelAndView;
	}
	
	@GetMapping("/delete/{MaThiSinh}")
	public String xoaThiSinh(@PathVariable String MaThiSinh,Model model) {
		thiSinhDuThiService.deleteThiSinh(MaThiSinh);
		return "redirect:/admin/quanlithongtinthisinh";
	}

}
