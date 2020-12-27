package com.hoahau.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hoahau.entity.ChiTietVongBanKet;
import com.hoahau.entity.ChiTietVongChungKet;
import com.hoahau.service.ChiTietVongChungKetService;

@Controller
@RequestMapping("/admin/quanlivongchungket")
public class QuanLiDiemVongChungKetController {
	@Autowired
	private ChiTietVongChungKetService chiTietVongChungKetService;
	
	@GetMapping("/diemtrungbinh")
	public String listDTBThongTinThiSinh(Model model) {
		List<ChiTietVongChungKet> chiTietDiemTBVongChungKet = new ArrayList<ChiTietVongChungKet>();
		chiTietDiemTBVongChungKet = chiTietVongChungKetService.listDiemTbVongChungKet();
		model.addAttribute("listDtbVongBanKet", chiTietDiemTBVongChungKet);
		return "QuanLiVongChungKetDTB";
	}
	
	@GetMapping
	public String listThongTinThiSinh(Model model) {
		List<ChiTietVongChungKet> chiTietVongChungKet = new ArrayList<ChiTietVongChungKet>();
		chiTietVongChungKet = chiTietVongChungKetService.listChiTietVongChungKet();
		model.addAttribute("listThongTinThiSinh", chiTietVongChungKet);
		return "QuanLiVongChungKet";
	}
	
	@GetMapping("/new")
	public String ThemChiTietVongChungKet(Map<String, Object> map) {
		ChiTietVongChungKet chiTietVongChungKet = new ChiTietVongChungKet();
		map.put("chitietvongchungket", chiTietVongChungKet);
		return "ThemChiTietVongChungKet";
	}
	
	@PostMapping("/save")
	public String SaveChiTietVongChungKet(@ModelAttribute("chitietvongchungket") ChiTietVongChungKet chiTietVongChungKet) {
		chiTietVongChungKetService.ThemChiTietVongChungKet(chiTietVongChungKet);
		return "redirect:/admin/quanlivongchungket";
	}
	

	@GetMapping("/savetovongbanket")
	public String SaveChungKetToBanKet(ChiTietVongChungKet chiTietVongChungKet) {
		chiTietVongChungKetService.ThemChiTietVongChungKetToVongBanKet(chiTietVongChungKet);
		return "redirect:/admin/quanlivongchungket";
	}
	
	@GetMapping("/edit")
	public ModelAndView GetChiTietVongChungKet(@RequestParam String MaThiSinh) {
		ModelAndView modelAndView = new ModelAndView("ChinhSuaChiTietVongChungKet");
		ChiTietVongChungKet chiTietVongChungKet = chiTietVongChungKetService.thongTinChiTietVongChungKet(MaThiSinh);
		modelAndView.addObject("chitietvongchungket", chiTietVongChungKet);
		return modelAndView;
	}
	
	@PostMapping("/edit")
	public String UpdateChiTietVongChungKet(@ModelAttribute("chitietvongchungket") ChiTietVongChungKet chiTietVongChungKet) {
		chiTietVongChungKetService.updateChiTietVongChungKet(chiTietVongChungKet);
		return "redirect:/admin/quanlivongchungket";
	}
	
	@GetMapping("/delete/{MaThiSinh}")
	public String DeleteChiTietVongChungKet(@PathVariable String MaThiSinh) {
		chiTietVongChungKetService.deleteChiTietVongChungKet(MaThiSinh);
		return "redirect:/admin/quanlivongchungket";
	}
}
