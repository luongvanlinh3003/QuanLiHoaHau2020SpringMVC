package com.hoahau.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hoahau.dao.ThiSinhDuThiDao;
import com.hoahau.daoImp.ThiSinhDuThiImp;
import com.hoahau.entity.ThiSinhDuThi;

@Service
public class ThiSinhDuThiService implements ThiSinhDuThiImp{
	@Autowired
	ThiSinhDuThiDao thiSinhDuThiDao;

	@Override
	public List<ThiSinhDuThi> listThiSinhDuThi() {
		return thiSinhDuThiDao.listThiSinhDuThi();
	}
	
	
	@Override
	public ThiSinhDuThi thongTinChiTietThiSinh(String MaThiSinh) {
		return thiSinhDuThiDao.thongTinChiTietThiSinh(MaThiSinh);
	}

	@Override
	public void ThemThiSinh(ThiSinhDuThi thiSinhDuThi) {
		thiSinhDuThiDao.ThemThiSinh(thiSinhDuThi);
	}

	@Override
	public void updateThiSinh(ThiSinhDuThi thiSinhDuThi) {
		 thiSinhDuThiDao.updateThiSinh(thiSinhDuThi);
	}

	@Override
	public void deleteThiSinh(String thiSinhId) {
		thiSinhDuThiDao.deleteThiSinh(thiSinhId);
	}
	
}
