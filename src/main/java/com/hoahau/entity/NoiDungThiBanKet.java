package com.hoahau.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="NoiDungThiBanKet")
public class NoiDungThiBanKet {
	@Id
	private String MaThiSinh;
	
	@OneToOne()
	@JoinColumn(name="MaThiSinh")
	ThiSinhDuThi thiSinhDuThi;
	
	private String HinhAnhPhanThiAoDaiTs;
	
	private String MoTaPhanThiAoDaiTs;
	
	private String HinhAnhPhanThiAoTamTs;
	
	private String MoTaPhanThiAoTamTs;
	
	private String HinhAnhPhanThiDaHoiTs;
	
	private String MoTaPhanThiDaHoiTs;

	public String getMaThiSinh() {
		return MaThiSinh;
	}

	public void setMaThiSinh(String maThiSinh) {
		MaThiSinh = maThiSinh;
	}

	public String getHinhAnhPhanThiAoDaiTs() {
		return HinhAnhPhanThiAoDaiTs;
	}

	public void setHinhAnhPhanThiAoDaiTs(String hinhAnhPhanThiAoDaiTs) {
		HinhAnhPhanThiAoDaiTs = hinhAnhPhanThiAoDaiTs;
	}

	public String getMoTaPhanThiAoDaiTs() {
		return MoTaPhanThiAoDaiTs;
	}

	public void setMoTaPhanThiAoDaiTs(String moTaPhanThiAoDaiTs) {
		MoTaPhanThiAoDaiTs = moTaPhanThiAoDaiTs;
	}

	public String getHinhAnhPhanThiAoTamTs() {
		return HinhAnhPhanThiAoTamTs;
	}

	public void setHinhAnhPhanThiAoTamTs(String hinhAnhPhanThiAoTamTs) {
		HinhAnhPhanThiAoTamTs = hinhAnhPhanThiAoTamTs;
	}

	public String getMoTaPhanThiAoTamTs() {
		return MoTaPhanThiAoTamTs;
	}

	public void setMoTaPhanThiAoTamTs(String moTaPhanThiAoTamTs) {
		MoTaPhanThiAoTamTs = moTaPhanThiAoTamTs;
	}

	public String getHinhAnhPhanThiDaHoiTs() {
		return HinhAnhPhanThiDaHoiTs;
	}

	public void setHinhAnhPhanThiDaHoiTs(String hinhAnhPhanThiDaHoiTs) {
		HinhAnhPhanThiDaHoiTs = hinhAnhPhanThiDaHoiTs;
	}

	public String getMoTaPhanThiDaHoiTs() {
		return MoTaPhanThiDaHoiTs;
	}

	public void setMoTaPhanThiDaHoiTs(String moTaPhanThiDaHoiTs) {
		MoTaPhanThiDaHoiTs = moTaPhanThiDaHoiTs;
	}

	public ThiSinhDuThi getThiSinhDuThi() {
		return thiSinhDuThi;
	}

	public void setThiSinhDuThi(ThiSinhDuThi thiSinhDuThi) {
		this.thiSinhDuThi = thiSinhDuThi;
	}
	
	
}
