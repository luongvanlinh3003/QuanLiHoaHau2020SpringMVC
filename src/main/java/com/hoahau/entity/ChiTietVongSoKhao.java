package com.hoahau.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="ChiTietVongSoKhao")
public class ChiTietVongSoKhao implements Serializable {

	private static final long serialVersionUID = 5770604964697289624L;

	@Id
	private String MaThiSinh;
	
	private String TenThiSinh;
	
	private Float DiemHinhThe;
	
	private Float DiemTraLoiPhongVan;
	
	private Float DiemCatwalkTheoNhac;
	
	private Float DiemTrungBinh;
	
	
	public Float getDiemTrungBinh() {
		return DiemTrungBinh;
	}

	public void setDiemTrungBinh(Float diemTrungBinh) {
		DiemTrungBinh = diemTrungBinh;
	}

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

	public Float getDiemHinhThe() {
		return DiemHinhThe;
	}

	public void setDiemHinhThe(Float diemHinhThe) {
		DiemHinhThe = diemHinhThe;
	}

	public Float getDiemTraLoiPhongVan() {
		return DiemTraLoiPhongVan;
	}

	public void setDiemTraLoiPhongVan(Float diemTraLoiPhongVan) {
		DiemTraLoiPhongVan = diemTraLoiPhongVan;
	}

	public Float getDiemCatwalkTheoNhac() {
		return DiemCatwalkTheoNhac;
	}

	public void setDiemCatwalkTheoNhac(Float diemCatwalkTheoNhac) {
		DiemCatwalkTheoNhac = diemCatwalkTheoNhac;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
