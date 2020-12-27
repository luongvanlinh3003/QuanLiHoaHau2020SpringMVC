package com.hoahau.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="ChucVu")
public class ChucVu {
	@Id
	String MaChucVu;
	String TenChucVu;
	public String getMaChucVu() {
		return MaChucVu;
	}
	public void setMaChucVu(String maChucVu) {
		MaChucVu = maChucVu;
	}
	public String getTenChucVu() {
		return TenChucVu;
	}
	public void setTenChucVu(String tenChucVu) {
		TenChucVu = tenChucVu;
	}
	
}
