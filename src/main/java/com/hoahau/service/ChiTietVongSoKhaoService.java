package com.hoahau.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoahau.dao.ChiTietVongSoKhaoDao;
import com.hoahau.daoImp.ChiTietVongSoKhaoImpl;
import com.hoahau.entity.ChiTietVongSoKhao;

@Service
public class ChiTietVongSoKhaoService implements ChiTietVongSoKhaoImpl{
	@Autowired
	private ChiTietVongSoKhaoDao chitietvongsokhaodao;

	@Override
	public List<ChiTietVongSoKhao> listChiTietVongSoKhao() {
		return chitietvongsokhaodao.listChiTietVongSoKhao();
	}

	@Override
	public ChiTietVongSoKhao thongTinChiTietVongSoKhao(String MaThiSinh) {
		return chitietvongsokhaodao.thongTinChiTietVongSoKhao(MaThiSinh);
	}

	@Override
	public void ThemChiTietVongSoKhao(ChiTietVongSoKhao chiTietVongSoKhao) {
		this.chitietvongsokhaodao.ThemChiTietVongSoKhao(chiTietVongSoKhao);
	}

	@Override
	public void updateChiTietVongSoKhao(ChiTietVongSoKhao chiTietVongSoKhao) {
		this.chitietvongsokhaodao.updateChiTietVongSoKhao(chiTietVongSoKhao);
	}

	@Override
	public void deleteChiTietVongSoKhao(String MaThiSinh) {
		this.chitietvongsokhaodao.deleteChiTietVongSoKhao(MaThiSinh);
	}

	@Override
	public List<ChiTietVongSoKhao> listDiemTbVongSoKhao() {
		
		return chitietvongsokhaodao.listDiemTbVongSoKhao();
	}

	@Override
	public List<ChiTietVongSoKhao> listDiemHinhThe() {
		return chitietvongsokhaodao.listDiemHinhThe();
	}

	@Override
	public void ThemChiTietVongSoKhaoToListTs(ChiTietVongSoKhao chiTietVongSoKhao) {
		this.chitietvongsokhaodao.ThemChiTietVongSoKhaoToListTs(chiTietVongSoKhao);
		
	}

	@Override
	public List<ChiTietVongSoKhao> listDiemPhongVan() {
		return chitietvongsokhaodao.listDiemPhongVan();
	}

	@Override
	public List<ChiTietVongSoKhao> listDiemCatWalkTheoNhac() {
		return chitietvongsokhaodao.listDiemCatWalkTheoNhac();
	}
}
