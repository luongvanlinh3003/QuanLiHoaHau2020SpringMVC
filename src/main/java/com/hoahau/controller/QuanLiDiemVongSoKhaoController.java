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
	ChiTietVongSoKhaoService chitietvonggiamkhaoservice;
	
	/*
	 * @GetMapping public String listchitietvongsokhaoAdmin(Model model,Integer
	 * offset, Integer maxResults) { List<ChiTietVongSoKhao> list =
	 * chitietvonggiamkhaoservice.findAll(offset, maxResults);
	 * System.out.println("------------------ list size :"+list.size());
	 * model.addAttribute("count", chitietvonggiamkhaoservice.count());
	 * System.out.println(" --------------count : "+chitietvonggiamkhaoservice.count
	 * ()); model.addAttribute("offset", offset);
	 * model.addAttribute("listThiSinhDuThi", list); return "QuanLiVongSoKhao"; }
	 */
	
	@GetMapping("/diemtrungbinh")
	public String listDTBThongTinThiSinh(Model model,ChiTietVongSoKhao chiTietVongSoKhao) {
		List<ChiTietVongSoKhao> chiTietVongSoKhaos = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongSoKhaos = chitietvonggiamkhaoservice.listDiemTbVongSoKhao(); 
		model.addAttribute("listDtbThiSinh", chiTietVongSoKhaos);
		return "QuanLiVongSoKhaoDTB";
	}
	
	@GetMapping("/diemhinhthe")
	public String listDiemHinhTheThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongSoKhaos = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongSoKhaos = chitietvonggiamkhaoservice.listDiemHinhThe();
		model.addAttribute("listDiemHinhTheThiSinh", chiTietVongSoKhaos);
		return "QuanLiVongSoKhaoDHT";
	}
	
	@GetMapping("/diemtraloiphongvan")
	public String listDiemPhongVanThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongSoKhaos = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongSoKhaos = chitietvonggiamkhaoservice.listDiemPhongVan();
		model.addAttribute("listDiemPhongVanThiSinh", chiTietVongSoKhaos);
		return "QuanLiVongSoKhaoDPV";
	}
	
	@GetMapping("/diemcatwalk")
	public String listDiemCatWalkThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongSoKhaos = new ArrayList<ChiTietVongSoKhao>();
		chiTietVongSoKhaos = chitietvonggiamkhaoservice.listDiemCatWalkTheoNhac();
		model.addAttribute("listDiemCatWalkThiSinh", chiTietVongSoKhaos);
		return "QuanLiVongSoKhaoCatWalk";
	}
	
	@GetMapping
	public String listThongTinThiSinh(Model model) {
		List<ChiTietVongSoKhao> chiTietVongSoKhaos = new ArrayList<ChiTietVongSoKhao>();
        chiTietVongSoKhaos = chitietvonggiamkhaoservice.listChiTietVongSoKhao();  
		model.addAttribute("listThongTinThiSinh", chiTietVongSoKhaos);
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
		chitietvonggiamkhaoservice.ThemChiTietVongSoKhao(chiTietVongSoKhao);
		return "redirect:/admin/quanlivongsokhao";
	}
	
	@GetMapping("/savetothisinh")
	public String SaveListThiSinhToChiTietSoKhao(ChiTietVongSoKhao chiTietVongSoKhao) {
		chitietvonggiamkhaoservice.ThemChiTietVongSoKhaoToListTs(chiTietVongSoKhao);
		return "redirect:/admin/quanlivongsokhao";
	}
	
	@GetMapping("/edit")
	public ModelAndView GetChiTietVongSoKhao(@RequestParam String MaThiSinh) {
		ModelAndView modelAndView = new ModelAndView("ChinhSuaChiTietVongSoKhao");
		ChiTietVongSoKhao chiTietVongSoKhao = chitietvonggiamkhaoservice.thongTinChiTietVongSoKhao(MaThiSinh);
		modelAndView.addObject("chitietvongsokhao", chiTietVongSoKhao);
		return modelAndView;
	}
	
	@PostMapping("/edit")
	public String UpdateChiTietVongSoKhao(@ModelAttribute("chitietvongsokhao") ChiTietVongSoKhao chiTietVongSoKhao) {
		chitietvonggiamkhaoservice.updateChiTietVongSoKhao(chiTietVongSoKhao);
		return "redirect:/admin/quanlivongsokhao";
	}
	
	
	@GetMapping("/delete/{MaThiSinh}")
	public String DeleteChiTietVongSoKhao(@PathVariable String MaThiSinh) {
		chitietvonggiamkhaoservice.deleteChiTietVongSoKhao(MaThiSinh);
		return "redirect:/admin/quanlivongsokhao";
	}
	
}
