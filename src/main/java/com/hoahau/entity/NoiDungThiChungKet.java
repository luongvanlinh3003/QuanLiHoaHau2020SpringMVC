package com.hoahau.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="NoiDungThiChungKet")
public class NoiDungThiChungKet {
	@Id
	private String MaThiSinh;
	
	@OneToOne
	@JoinColumn(name="MaThiSinh")
	ThiSinhDuThi thiSinhDuThi;
	
	private String HinhAnhPhanThiUngXuTs;
	
	private String MoTaPhanThiUngXuTs;
	
	private String HinhAnhPhanThiPhongVanTs;
	
	private String MoTaPhanThiPhongVanTs;
	
	private String HinhAnhHoatDongXaHoiTs;
	
	private String MoTaHoatDongXaHoiTs;
	
	private String HinhAnhPhanThiNgoaiNguTs;
	
	private String MoTaPhanThiNgoaiNguThiSinh;

	public String getMaThiSinh() {
		return MaThiSinh;
	}

	public void setMaThiSinh(String maThiSinh) {
		MaThiSinh = maThiSinh;
	}

	public String getHinhAnhPhanThiUngXuTs() {
		return HinhAnhPhanThiUngXuTs;
	}

	public void setHinhAnhPhanThiUngXuTs(String hinhAnhPhanThiUngXuTs) {
		HinhAnhPhanThiUngXuTs = hinhAnhPhanThiUngXuTs;
	}

	public String getMoTaPhanThiUngXuTs() {
		return MoTaPhanThiUngXuTs;
	}

	public void setMoTaPhanThiUngXuTs(String moTaPhanThiUngXuTs) {
		MoTaPhanThiUngXuTs = moTaPhanThiUngXuTs;
	}

	public String getHinhAnhPhanThiPhongVanTs() {
		return HinhAnhPhanThiPhongVanTs;
	}

	public void setHinhAnhPhanThiPhongVanTs(String hinhAnhPhanThiPhongVanTs) {
		HinhAnhPhanThiPhongVanTs = hinhAnhPhanThiPhongVanTs;
	}

	public String getMoTaPhanThiPhongVanTs() {
		return MoTaPhanThiPhongVanTs;
	}

	public void setMoTaPhanThiPhongVanTs(String moTaPhanThiPhongVanTs) {
		MoTaPhanThiPhongVanTs = moTaPhanThiPhongVanTs;
	}

	public String getHinhAnhHoatDongXaHoiTs() {
		return HinhAnhHoatDongXaHoiTs;
	}

	public void setHinhAnhHoatDongXaHoiTs(String hinhAnhHoatDongXaHoiTs) {
		HinhAnhHoatDongXaHoiTs = hinhAnhHoatDongXaHoiTs;
	}

	public String getMoTaHoatDongXaHoiTs() {
		return MoTaHoatDongXaHoiTs;
	}

	public void setMoTaHoatDongXaHoiTs(String moTaHoatDongXaHoiTs) {
		MoTaHoatDongXaHoiTs = moTaHoatDongXaHoiTs;
	}

	public String getHinhAnhPhanThiNgoaiNguTs() {
		return HinhAnhPhanThiNgoaiNguTs;
	}

	public void setHinhAnhPhanThiNgoaiNguTs(String hinhAnhPhanThiNgoaiNguTs) {
		HinhAnhPhanThiNgoaiNguTs = hinhAnhPhanThiNgoaiNguTs;
	}

	public String getMoTaPhanThiNgoaiNguThiSinh() {
		return MoTaPhanThiNgoaiNguThiSinh;
	}

	public void setMoTaPhanThiNgoaiNguThiSinh(String moTaPhanThiNgoaiNguThiSinh) {
		MoTaPhanThiNgoaiNguThiSinh = moTaPhanThiNgoaiNguThiSinh;
	}

	public ThiSinhDuThi getThiSinhDuThi() {
		return thiSinhDuThi;
	}

	public void setThiSinhDuThi(ThiSinhDuThi thiSinhDuThi) {
		this.thiSinhDuThi = thiSinhDuThi;
	}
	
	
}
