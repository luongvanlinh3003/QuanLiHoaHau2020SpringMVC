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
import com.hoahau.entity.ChiTietVongSoKhao;
import com.hoahau.service.ChiTietVongBanKetService;

@Controller
@RequestMapping("/admin/quanlivongbanket")
public class QuanLiDiemVongBanKetController {

	@Autowired
	private ChiTietVongBanKetService chitietvongbanketservice;
	
	@GetMapping("/diemtrungbinh")
	public String listDTBThongTinThiSinh(Model model) {
		List<ChiTietVongBanKet> chiTietVongBanKet = new ArrayList<ChiTietVongBanKet>();
		chiTietVongBanKet = chitietvongbanketservice.listDiemTbVongBanKet();
		model.addAttribute("listDtbVongBanKet", chiTietVongBanKet);
		return "QuanLiVongBanKetDTB";
	}
	
	@GetMapping("/diemaodai")
	public String listDiemHinhTheThiSinh(Model model) {
		List<ChiTietVongBanKet> chiTietBanKet = new ArrayList<ChiTietVongBanKet>();
		chiTietBanKet = chitietvongbanketservice.listDiemAoDai();
		model.addAttribute("listDiemAoDaiThiSinh", chiTietBanKet);
		return "QuanLiVongBanKetAD";
	}
	
	@GetMapping("/diemaotam")
	public String listDiemPhongVanThiSinh(Model model) {
		List<ChiTietVongBanKet> chiTietVongBanKets = new ArrayList<ChiTietVongBanKet>();
		chiTietVongBanKets = chitietvongbanketservice.listDiemAoTam();
		model.addAttribute("listDiemAoTamThiSinh", chiTietVongBanKets);
		return "QuanLiVongBanKetAT";
	}
	
	@GetMapping("/diemdahoi")
	public String listDiemCatWalkThiSinh(Model model) {
		List<ChiTietVongBanKet> chiTietVongBanKets = new ArrayList<ChiTietVongBanKet>();
		chiTietVongBanKets = chitietvongbanketservice.listDiemDaHoi();
		model.addAttribute("listDiemDaHoiThiSinh", chiTietVongBanKets);
		return "QuanLiVongBanKetDH";
	}
	
	@GetMapping
	public String listThongTinThiSinh(Model model) {
		List<ChiTietVongBanKet> chiTietVongbanket = new ArrayList<ChiTietVongBanKet>();
		chiTietVongbanket = chitietvongbanketservice.listChiTietVongBanKet();
		model.addAttribute("listThongTinThiSinhBanKet", chiTietVongbanket);
		return "QuanLiVongBanKet";
	}
	
	@GetMapping("/new")
	public String ThemChiTietVongBanKet(Map<String, Object> map) {
		ChiTietVongBanKet chiTietVongBanKet = new ChiTietVongBanKet();
		map.put("chitietvongbanket", chiTietVongBanKet);
		return "ThemChiTietVongBanKet";
	}
	
	@PostMapping("/save")
	public String SaveChiTietVongBanKet(@ModelAttribute("chitietvongbanket") ChiTietVongBanKet chiTietVongBanKet) {
		chitietvongbanketservice.ThemChiTietVongBanKet(chiTietVongBanKet);
		return "redirect:/admin/quanlivongbanket";
	}
	
	@GetMapping("/savetovongsokhao")
	public String SaveListThiSinhToChiTietBanKet(ChiTietVongBanKet chiTietVongBanKet) {
		chitietvongbanketservice.ThemChiTietVongBanKetToVongSoKhao(chiTietVongBanKet);
		return "redirect:/admin/quanlivongbanket";
	}
	
	@GetMapping("/edit")
	public ModelAndView GetChiTietVongBanKet(@RequestParam String MaThiSinh) {
		ModelAndView modelAndView = new ModelAndView("ChinhSuaChiTietVongBanKet");
		ChiTietVongBanKet chiTietVongBanKet = chitietvongbanketservice.thongTinChiTietVongBanKet(MaThiSinh);
		modelAndView.addObject("chitietvongbanket", chiTietVongBanKet);
		return modelAndView;
	}
	
	@PostMapping("/edit")
	public String UpdateChiTietVongBanKet(@ModelAttribute("chitietvongbanket") ChiTietVongBanKet chiTietVongBanKet) {
		chitietvongbanketservice.updateChiTietVongBanKet(chiTietVongBanKet);
		return "redirect:/admin/quanlivongbanket";
	}
	
	
	@GetMapping("/delete/{MaThiSinh}")
	public String DeleteChiTietVongBanKet(@PathVariable String MaThiSinh) {
		chitietvongbanketservice.deleteChiTietVongBanKet(MaThiSinh);
		return "redirect:/admin/quanlivongbanket";
	}
}
