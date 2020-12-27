package com.hoahau.daoImp;

import java.util.List;

import com.hoahau.entity.ChiTietVongSoKhao;

public interface PhanTrangImplChiTietVongSoKhao {
	public List<ChiTietVongSoKhao> findAll(Integer offset, Integer maxResult);
	public Long count();
}
