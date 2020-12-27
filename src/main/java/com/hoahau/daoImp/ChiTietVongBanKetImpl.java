package com.hoahau.daoImp;

import java.util.List;
import com.hoahau.entity.ChiTietVongBanKet;
import com.hoahau.entity.ChiTietVongSoKhao;

public interface ChiTietVongBanKetImpl {
	List<ChiTietVongBanKet> listChiTietVongBanKet();
	ChiTietVongBanKet thongTinChiTietVongBanKet(String MaThiSinh);
	void ThemChiTietVongBanKet(ChiTietVongBanKet chiTietVongBanKet);
	void updateChiTietVongBanKet(ChiTietVongBanKet chiTietVongBanKet);
	void deleteChiTietVongBanKet(String MaThiSinh);
	void ThemChiTietVongBanKetToVongSoKhao(ChiTietVongBanKet chiTietVongBanKet);
	List<ChiTietVongBanKet> listDiemTbVongBanKet();
	List<ChiTietVongBanKet> listDiemAoDai();
	List<ChiTietVongBanKet> listDiemAoTam();
	List<ChiTietVongBanKet> listDiemDaHoi();
	void listTopSoKhao();
}
