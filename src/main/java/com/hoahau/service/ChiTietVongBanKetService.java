package com.hoahau.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoahau.dao.ChiTietVongBanKetDao;
import com.hoahau.daoImp.ChiTietVongBanKetImpl;
import com.hoahau.entity.ChiTietVongBanKet;

@Service
public class ChiTietVongBanKetService implements ChiTietVongBanKetImpl {

	@Autowired
	private ChiTietVongBanKetDao chitietvongbanketdao;
	
	@Override
	public List<ChiTietVongBanKet> listChiTietVongBanKet() {
		return chitietvongbanketdao.listChiTietVongBanKet();
	}

	@Override
	public ChiTietVongBanKet thongTinChiTietVongBanKet(String MaThiSinh) {
		return chitietvongbanketdao.thongTinChiTietVongBanKet(MaThiSinh);
	}

	@Override
	public void ThemChiTietVongBanKet(ChiTietVongBanKet chiTietVongBanKet) {
		chitietvongbanketdao.ThemChiTietVongBanKet(chiTietVongBanKet);
		
	}

	@Override
	public void updateChiTietVongBanKet(ChiTietVongBanKet chiTietVongBanKet) {
		chitietvongbanketdao.updateChiTietVongBanKet(chiTietVongBanKet);
		
	}

	@Override
	public void deleteChiTietVongBanKet(String MaThiSinh) {
		chitietvongbanketdao.deleteChiTietVongBanKet(MaThiSinh);
	}

	@Override
	public void ThemChiTietVongBanKetToVongSoKhao(ChiTietVongBanKet chiTietVongBanKet) {
		this.chitietvongbanketdao.ThemChiTietVongBanKetToVongSoKhao(chiTietVongBanKet);
		
	}

	@Override
	public List<ChiTietVongBanKet> listDiemTbVongBanKet() {
		return chitietvongbanketdao.listDiemTbVongBanKet();
	}

	@Override
	public List<ChiTietVongBanKet> listDiemAoDai() {
		return chitietvongbanketdao.listDiemAoDai();
	}

	@Override
	public List<ChiTietVongBanKet> listDiemAoTam() {
		return chitietvongbanketdao.listDiemAoTam();
	}

	@Override
	public List<ChiTietVongBanKet> listDiemDaHoi() {
		return chitietvongbanketdao.listDiemDaHoi();
	}

	@Override
	public void listTopSoKhao() {
		this.chitietvongbanketdao.listTopSoKhao();
	}

}
