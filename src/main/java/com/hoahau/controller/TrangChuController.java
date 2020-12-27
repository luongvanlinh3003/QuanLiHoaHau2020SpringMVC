package com.hoahau.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class TrangChuController {
	
	@GetMapping
	public String TrangChu() {
		return "TrangChu";
	}
	
	@GetMapping("lichtrinhvongsokhao")
	public String LichTrinhVongSoKhao() {
		return "VongSoKhao";
	}
	
	@GetMapping("lichtrinhvongbanket")
	public String LichTrinhVongBanKet() {
		return "VongBanKet";
	}
	
	@GetMapping("lichtrinhvongchungket")
	public String LichTrinhVongChungKet() {
		return "VongChungKet";
	}
	
}
