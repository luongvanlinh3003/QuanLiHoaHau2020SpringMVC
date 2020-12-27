package com.hoahau.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="GiaiThuong")
public class GiaiThuong {
	@Id
	private String MaGiaiThuong;
	
	private String MaThiSinh;
	
	private String TenGiaiThuong;
	
	private String TriGiaGiaiThuong;
	
	private String MoTaGiaiThuong;

	public String getMaGiaiThuong() {
		return MaGiaiThuong;
	}

	public void setMaGiaiThuong(String maGiaiThuong) {
		MaGiaiThuong = maGiaiThuong;
	}

	public String getMaThiSinh() {
		return MaThiSinh;
	}

	public void setMaThiSinh(String maThiSinh) {
		MaThiSinh = maThiSinh;
	}

	public String getTenGiaiThuong() {
		return TenGiaiThuong;
	}

	public void setTenGiaiThuong(String tenGiaiThuong) {
		TenGiaiThuong = tenGiaiThuong;
	}

	public String getTriGiaGiaiThuong() {
		return TriGiaGiaiThuong;
	}

	public void setTriGiaGiaiThuong(String triGiaGiaiThuong) {
		TriGiaGiaiThuong = triGiaGiaiThuong;
	}

	public String getMoTaGiaiThuong() {
		return MoTaGiaiThuong;
	}

	public void setMoTaGiaiThuong(String moTaGiaiThuong) {
		MoTaGiaiThuong = moTaGiaiThuong;
	}
	
	
}
