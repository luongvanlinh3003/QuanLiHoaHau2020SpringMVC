package com.hoahau.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hoahau.daoImp.ThiSinhDuThiImp;
import com.hoahau.entity.ThiSinhDuThi;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ThiSinhDuThiDao implements ThiSinhDuThiImp {
	
	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ThiSinhDuThi> listThiSinhDuThi() {
		Session session = sessionFactory.getCurrentSession();
		List<ThiSinhDuThi> listThiSinh = new ArrayList<ThiSinhDuThi>();
		String query = "FROM ThiSinhDuThi";
		listThiSinh =(List<ThiSinhDuThi>) session.createQuery(query).list();
		return listThiSinh;
	}
	

	@Override
	@Transactional
	public ThiSinhDuThi thongTinChiTietThiSinh(String MaThiSinh) {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM ThiSinhDuThi ts where ts.MaThiSinh="+"'"+MaThiSinh+"'";
		ThiSinhDuThi chiTietThiSinh = (ThiSinhDuThi) session.createQuery(query).uniqueResult(); 
		return chiTietThiSinh;
	}

	@Override
	@Transactional
	public void ThemThiSinh(ThiSinhDuThi thiSinhDuThi) {
		Session session = sessionFactory.getCurrentSession();
		session.save(thiSinhDuThi);	
	}

	@Override
	@Transactional
	public void updateThiSinh(ThiSinhDuThi thiSinhDuThi) {
		Session session =  sessionFactory.getCurrentSession();
		session.update(thiSinhDuThi);
	}

	@Override
	@Transactional
	public void deleteThiSinh(String thiSinhId) {
		ThiSinhDuThi thiSinhDuThi = sessionFactory.getCurrentSession().load(ThiSinhDuThi.class, thiSinhId);
		if(null != thiSinhDuThi) {
			this.sessionFactory.getCurrentSession().delete(thiSinhDuThi);
		}
	}
	
}
