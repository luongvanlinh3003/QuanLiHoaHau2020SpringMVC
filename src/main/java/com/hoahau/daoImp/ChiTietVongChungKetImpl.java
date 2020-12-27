package com.hoahau.daoImp;

import java.util.List;
import com.hoahau.entity.ChiTietVongChungKet;

public interface ChiTietVongChungKetImpl {
	List<ChiTietVongChungKet> listChiTietVongChungKet();
	ChiTietVongChungKet thongTinChiTietVongChungKet(String MaThiSinh);
	void ThemChiTietVongChungKet(ChiTietVongChungKet chiTietVongChungKet);
	void updateChiTietVongChungKet(ChiTietVongChungKet chiTietVongChungKet);
	void deleteChiTietVongChungKet(String MaThiSinh);
	void ThemChiTietVongChungKetToVongBanKet(ChiTietVongChungKet chiTietVongChungKet);
	List<ChiTietVongChungKet> listDiemUngXu();
	List<ChiTietVongChungKet> listDiemNgoaiNgu();
	List<ChiTietVongChungKet> listDiemHoatDongXaHoi();
	List<ChiTietVongChungKet> listDiemTbVongChungKet();
}
