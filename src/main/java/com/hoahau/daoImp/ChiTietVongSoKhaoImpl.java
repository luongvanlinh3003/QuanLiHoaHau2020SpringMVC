package com.hoahau.daoImp;

import java.util.List;

import com.hoahau.entity.ChiTietVongSoKhao;

public interface ChiTietVongSoKhaoImpl {
	List<ChiTietVongSoKhao> listChiTietVongSoKhao();
	void ThemChiTietVongSoKhaoToListTs(ChiTietVongSoKhao chiTietVongSoKhao);
	ChiTietVongSoKhao thongTinChiTietVongSoKhao(String MaThiSinh);
	void ThemChiTietVongSoKhao(ChiTietVongSoKhao chiTietVongSoKhao);
	void updateChiTietVongSoKhao(ChiTietVongSoKhao chiTietVongSoKhao);
	void deleteChiTietVongSoKhao(String MaThiSinh);
	List<ChiTietVongSoKhao> listDiemTbVongSoKhao();
	List<ChiTietVongSoKhao>listDiemHinhThe();
	List<ChiTietVongSoKhao> listDiemPhongVan();
	List<ChiTietVongSoKhao> listDiemCatWalkTheoNhac();
}
