package com.hoahau.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="ChiTietVongChungKet")
public class ChiTietVongChungKet {
	
	@Id
	private String MaThiSinh;
	
	private String TenThiSinh;

	private Float DiemUngXu;
	  
	private Float DiemNgoaiNgu;
	  
	private Float DiemHoatDongXaHoi;
	
	private Float DiemTrungBinh;

	public String getMaThiSinh() {
		return MaThiSinh;
	}

	public void setMaThiSinh(String maThiSinh) {
		MaThiSinh = maThiSinh;
	}

	public String getTenThiSinh() {
		return TenThiSinh;
	}

	public void setTenThiSinh(String tenThiSinh) {
		TenThiSinh = tenThiSinh;
	}

	public Float getDiemUngXu() {
		return DiemUngXu;
	}

	public void setDiemUngXu(Float diemUngXu) {
		DiemUngXu = diemUngXu;
	}

	public Float getDiemNgoaiNgu() {
		return DiemNgoaiNgu;
	}

	public void setDiemNgoaiNgu(Float diemNgoaiNgu) {
		DiemNgoaiNgu = diemNgoaiNgu;
	}

	public Float getDiemHoatDongXaHoi() {
		return DiemHoatDongXaHoi;
	}

	public void setDiemHoatDongXaHoi(Float diemHoatDongXaHoi) {
		DiemHoatDongXaHoi = diemHoatDongXaHoi;
	}

	public Float getDiemTrungBinh() {
		return DiemTrungBinh;
	}

	public void setDiemTrungBinh(Float diemTrungBinh) {
		DiemTrungBinh = diemTrungBinh;
	}

}
