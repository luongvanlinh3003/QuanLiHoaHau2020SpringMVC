package com.hoahau.daoImp;

import java.util.List;

import com.hoahau.entity.ThiSinhDuThi;

public interface ThiSinhDuThiImp {
	List<ThiSinhDuThi> listThiSinhDuThi();
	ThiSinhDuThi thongTinChiTietThiSinh(String MaThiSinh);
	void ThemThiSinh(ThiSinhDuThi thiSinhDuThi);
	void updateThiSinh(ThiSinhDuThi thiSinhDuThi);
	void deleteThiSinh(String thiSinhId);
}
