package com.hoahau.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.hoahau.daoImp.PhanTrangImplChiTietVongSoKhao;
import com.hoahau.entity.ChiTietVongSoKhao;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class PhanTrangDaoChiTietVongSoKhao implements PhanTrangImplChiTietVongSoKhao{

	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked" })
	@Override
	public List<ChiTietVongSoKhao> findAll(Integer offset, Integer maxResult) {
		 return sessionFactory.openSession()
	                .createCriteria(ChiTietVongSoKhao.class)
	                .setFirstResult(offset!=null?offset:0)
	                .setMaxResults(maxResult!=null?maxResult:5)
	                .list();
	}

	@Override
	public Long count() {
		return (Long)sessionFactory.openSession()
                .createCriteria(ChiTietVongSoKhao.class)
                .setProjection(Projections.rowCount())
                .uniqueResult();
	}

}
