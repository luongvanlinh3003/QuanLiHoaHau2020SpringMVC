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
import com.hoahau.entity.ChiTietVongSoKhao;
import com.hoahau.service.ChiTietVongSoKhaoService;

@Controller
@RequestMapping("/admin/quanlivongsokhao")
public class QuanLiDiemVongSoKhaoController {
	@Autowired
	private ChiTietVongSoKhaoService chitietvongsokhaoservice;
	
	@GetMapping("/diemtrungbinh")
	public String listDTBThongTinThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongSoKhao = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongSoKhao = chitietvongsokhaoservice.listDiemTbVongSoKhao();
		model.addAttribute("listDtbThiSinh", chiTietVongSoKhao);
		return "QuanLiVongSoKhaoDTB";
	}
	
	@GetMapping("/diemhinhthe")
	public String listDiemHinhTheThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietSoKhao = new ArrayList<ChiTietVongSoKhao>();
		chiTietSoKhao = chitietvongsokhaoservice.listDiemHinhThe();
		model.addAttribute("listDiemHinhTheThiSinh", chiTietSoKhao);
		return "QuanLiVongSoKhaoDHT";
	}
	
	@GetMapping("/diemtraloiphongvan")
	public String listDiemPhongVanThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongSoKhaos = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongSoKhaos = chitietvongsokhaoservice.listDiemPhongVan();
		model.addAttribute("listDiemPhongVanThiSinh", chiTietVongSoKhaos);
		return "QuanLiVongSoKhaoDPV";
	}
	
	@GetMapping("/diemcatwalk")
	public String listDiemCatWalkThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongSoKhaos = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongSoKhaos = chitietvongsokhaoservice.listDiemCatWalkTheoNhac();
		model.addAttribute("listDiemCatWalkThiSinh", chiTietVongSoKhaos);
		return "QuanLiVongSoKhaoCatWalk";
	}
	
	@GetMapping
	public String listThongTinThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongsokhao = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongsokhao = chitietvongsokhaoservice.listChiTietVongSoKhao();
		model.addAttribute("listThongTinThiSinh", chiTietVongsokhao);
		return "QuanLiVongSoKhao";
	}
	
	@GetMapping("/new")
	public String ThemChiTietVongSoKhao(Map<String, Object> map) {
		ChiTietVongSoKhao chiTietVongSoKhao = new ChiTietVongSoKhao();
		map.put("chitietvongsokhao", chiTietVongSoKhao);
		return "ThemChiTietVongSoKhao";
	}
	
	@PostMapping("/save")
	public String SaveChiTietVongSoKhao(@ModelAttribute("chitietvongsokhao") ChiTietVongSoKhao chiTietVongSoKhao) {
		chitietvongsokhaoservice.ThemChiTietVongSoKhao(chiTietVongSoKhao);
		return "redirect:/admin/quanlivongsokhao";
	}
	
	@GetMapping("/savetothisinh")
	public String SaveListThiSinhToChiTietSoKhao(ChiTietVongSoKhao chiTietVongSoKhao) {
		chitietvongsokhaoservice.ThemChiTietVongSoKhao(chiTietVongSoKhao);
		return "redirect:/admin/quanlivongsokhao";
	}
	
	@GetMapping("/edit")
	public ModelAndView GetChiTietVongSoKhao(@RequestParam String MaThiSinh) {
		ModelAndView modelAndView = new ModelAndView("ChinhSuaChiTietVongSoKhao");
		ChiTietVongSoKhao chiTietVongSoKhao = chitietvongsokhaoservice.thongTinChiTietVongSoKhao(MaThiSinh);
		modelAndView.addObject("chitietvongsokhao", chiTietVongSoKhao);
		return modelAndView;
	}
	
	@PostMapping("/edit")
	public String UpdateChiTietVongSoKhao(@ModelAttribute("chitietvongsokhao") ChiTietVongSoKhao chiTietVongSoKhao) {
		chitietvongsokhaoservice.updateChiTietVongSoKhao(chiTietVongSoKhao);
		return "redirect:/admin/quanlivongsokhao";
	}
	
	
	@GetMapping("/delete/{MaThiSinh}")
	public String DeleteChiTietVongBanKet(@PathVariable String MaThiSinh) {
		chitietvongsokhaoservice.deleteChiTietVongSoKhao(MaThiSinh);
		return "redirect:/admin/quanlivongsokhao";
	}
}
