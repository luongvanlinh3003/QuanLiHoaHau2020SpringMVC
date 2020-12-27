package com.hoahau.daoImp;

import java.util.List;

import com.hoahau.entity.ThiSinhDuThi;

public interface PhanTrangImplThongTinThiSinh{
	public List<ThiSinhDuThi> findAll(Integer offset, Integer maxResult);
	public Long count();
}
