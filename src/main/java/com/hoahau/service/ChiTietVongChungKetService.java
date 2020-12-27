package com.hoahau.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoahau.dao.ChiTietVongChungKetDao;
import com.hoahau.daoImp.ChiTietVongChungKetImpl;
import com.hoahau.entity.ChiTietVongChungKet;

@Service
public class ChiTietVongChungKetService implements ChiTietVongChungKetImpl {
	
	@Autowired
	private ChiTietVongChungKetDao chitietvongchungketdao;

	@Override
	public List<ChiTietVongChungKet> listChiTietVongChungKet() {
		return chitietvongchungketdao.listChiTietVongChungKet();
	}

	@Override
	public ChiTietVongChungKet thongTinChiTietVongChungKet(String MaThiSinh) {
		return chitietvongchungketdao.thongTinChiTietVongChungKet(MaThiSinh);
	}

	@Override
	public void ThemChiTietVongChungKet(ChiTietVongChungKet chiTietVongChungKet) {
		chitietvongchungketdao.ThemChiTietVongChungKet(chiTietVongChungKet);
	}

	@Override
	public void updateChiTietVongChungKet(ChiTietVongChungKet chiTietVongChungKet) {
		chitietvongchungketdao.updateChiTietVongChungKet(chiTietVongChungKet);
	}

	@Override
	public void deleteChiTietVongChungKet(String MaThiSinh) {
		chitietvongchungketdao.deleteChiTietVongChungKet(MaThiSinh);
	}

	@Override
	public void ThemChiTietVongChungKetToVongBanKet(ChiTietVongChungKet chiTietVongChungKet) {
		this.chitietvongchungketdao.ThemChiTietVongChungKetToVongBanKet(chiTietVongChungKet);
		
	}

	@Override
	public List<ChiTietVongChungKet> listDiemUngXu() {
		return chitietvongchungketdao.listDiemUngXu();
	}

	@Override
	public List<ChiTietVongChungKet> listDiemNgoaiNgu() {
		return chitietvongchungketdao.listDiemNgoaiNgu();
	}

	@Override
	public List<ChiTietVongChungKet> listDiemHoatDongXaHoi() {
		return chitietvongchungketdao.listDiemHoatDongXaHoi();
	}

	@Override
	public List<ChiTietVongChungKet> listDiemTbVongChungKet() {
		return chitietvongchungketdao.listDiemTbVongChungKet();
	}
	
}
