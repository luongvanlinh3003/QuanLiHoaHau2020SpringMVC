package com.hoahau.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="BanGiamKhao")
public class BanGiamKhao {
	@Id
	String MaBanGiamKhao;
	String TenBanGiamKhao;
	String DiaChi;
	Date NgaySinh;
	String NgheNghiep;
	public String getMaBanGiamKhao() {
		return MaBanGiamKhao;
	}
	public void setMaBanGiamKhao(String maBanGiamKhao) {
		MaBanGiamKhao = maBanGiamKhao;
	}
	public String getTenBanGiamKhao() {
		return TenBanGiamKhao;
	}
	public void setTenBanGiamKhao(String tenBanGiamKhao) {
		TenBanGiamKhao = tenBanGiamKhao;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getNgheNghiep() {
		return NgheNghiep;
	}
	public void setNgheNghiep(String ngheNghiep) {
		NgheNghiep = ngheNghiep;
	}
	
}
