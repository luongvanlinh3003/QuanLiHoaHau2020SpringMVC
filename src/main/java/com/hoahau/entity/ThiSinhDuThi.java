package com.hoahau.entity;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity(name="ThiSinhDuThi")
public class ThiSinhDuThi {
	
	@Id
	String MaThiSinh;
	
	String TenThiSinh;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date NgaySinh;

	String DiaChi;
	
	String Email;
	
	String SoDienThoai;
	
	String AnhChanDung;
	
	String TrinhDo;
	
	int SoDoVong1;
	
	int SoDoVong2;
	
	int SoDoVong3;

	float ChieuCao;
	
	int CanNang;
	
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
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getSoDienThoai() {
		return SoDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		SoDienThoai = soDienThoai;
	}
	public String getAnhChanDung() {
		return AnhChanDung;
	}
	public void setAnhChanDung(String anhChanDung) {
		AnhChanDung = anhChanDung;
	}
	public String getTrinhDo() {
		return TrinhDo;
	}
	public void setTrinhDo(String trinhDo) {
		TrinhDo = trinhDo;
	}
	public float getChieuCao() {
		return ChieuCao;
	}
	public void setChieuCao(float chieuCao) {
		ChieuCao = chieuCao;
	}
	public int getSoDoVong1() {
		return SoDoVong1;
	}
	public void setSoDoVong1(int soDoVong1) {
		SoDoVong1 = soDoVong1;
	}
	public int getSoDoVong2() {
		return SoDoVong2;
	}
	public void setSoDoVong2(int soDoVong2) {
		SoDoVong2 = soDoVong2;
	}
	public int getSoDoVong3() {
		return SoDoVong3;
	}
	public void setSoDoVong3(int soDoVong3) {
		SoDoVong3 = soDoVong3;
	}
	public int getCanNang() {
		return CanNang;
	}
	public void setCanNang(int canNang) {
		CanNang = canNang;
	}
		
}
