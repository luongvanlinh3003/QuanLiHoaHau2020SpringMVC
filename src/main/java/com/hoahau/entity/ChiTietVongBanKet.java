package com.hoahau.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="ChiTietVongBanKet")
public class ChiTietVongBanKet  implements Serializable{

	private static final long serialVersionUID = 8292367844746878272L;

	@Id
	private String MaThiSinh;
	
	private String TenThiSinh;
		
	private Float DiemTrangPhucAoDai;
	
	private Float DiemTrangPhucAoTam;
	
	private Float DiemTrangPhucDaHoi;
	
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

	public Float getDiemTrangPhucAoDai() {
		return DiemTrangPhucAoDai;
	}

	public void setDiemTrangPhucAoDai(Float diemTrangPhucAoDai) {
		DiemTrangPhucAoDai = diemTrangPhucAoDai;
	}

	public Float getDiemTrangPhucAoTam() {
		return DiemTrangPhucAoTam;
	}

	public void setDiemTrangPhucAoTam(Float diemTrangPhucAoTam) {
		DiemTrangPhucAoTam = diemTrangPhucAoTam;
	}

	public Float getDiemTrangPhucDaHoi() {
		return DiemTrangPhucDaHoi;
	}

	public void setDiemTrangPhucDaHoi(Float diemTrangPhucDaHoi) {
		DiemTrangPhucDaHoi = diemTrangPhucDaHoi;
	}

	public Float getDiemTrungBinh() {
		return DiemTrungBinh;
	}

	public void setDiemTrungBinh(Float diemTrungBinh) {
		DiemTrungBinh = diemTrungBinh;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
