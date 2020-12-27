package com.hoahau.dao;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.hoahau.daoImp.ChiTietVongChungKetImpl;
import com.hoahau.entity.ChiTietVongChungKet;
import com.hoahau.entity.ChiTietVongSoKhao;


@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ChiTietVongChungKetDao implements ChiTietVongChungKetImpl {
	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongChungKet> listChiTietVongChungKet() {
		Session session = sessionFactory.getCurrentSession();
		List<ChiTietVongChungKet> listChiTietVongChungKet = new ArrayList<ChiTietVongChungKet>();
		String query = "FROM ChiTietVongChungKet";
		listChiTietVongChungKet = session.createQuery(query).list();
		return listChiTietVongChungKet;
	}

	@Override
	@Transactional
	public ChiTietVongChungKet thongTinChiTietVongChungKet(String MaThiSinh) {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM ChiTietVongChungKet ct where ct.MaThiSinh="+"'"+MaThiSinh+"'";
		ChiTietVongChungKet chiTietVongChungKet = (ChiTietVongChungKet) session.createQuery(query).uniqueResult();
		return chiTietVongChungKet;
	}

	@Override
	@Transactional
	public void ThemChiTietVongChungKet(ChiTietVongChungKet chiTietVongChungKet) {
		Session session = sessionFactory.getCurrentSession();
		session.save(chiTietVongChungKet);
	}

	@Override
	@Transactional
	public void updateChiTietVongChungKet(ChiTietVongChungKet chiTietVongChungKet) {
		Session session = sessionFactory.getCurrentSession();
		session.update(chiTietVongChungKet);	
	}

	@Override
	@Transactional
	public void deleteChiTietVongChungKet(String MaThiSinh) {
		ChiTietVongChungKet chiTietVongChungKetId = sessionFactory.getCurrentSession().load(ChiTietVongChungKet.class, MaThiSinh);
		if(null != MaThiSinh) {
			this.sessionFactory.getCurrentSession().delete(chiTietVongChungKetId);
		}
	}
	
	@Override
	@Transactional
	public List<ChiTietVongChungKet> listDiemTbVongChungKet() {
		Session session = sessionFactory.getCurrentSession();
		String query = "select ctvsk.MaThiSinh,ctvsk.TenThiSinh,ctvsk.DiemUngXu,ctvsk.DiemNgoaiNgu,ctvsk.DiemHoatDongXaHoi,sum(ctvsk.DiemUngXu+ctvsk.DiemNgoaiNgu+ctvsk.DiemHoatDongXaHoi)/3 as DiemTrungBinh from ChiTietVongChungKet ctvsk "
				+ "group by ctvsk.MaThiSinh,ctvsk.TenThiSinh,ctvsk.DiemUngXu,ctvsk.DiemNgoaiNgu,ctvsk.DiemHoatDongXaHoi order by DiemTrungBinh desc";
		SQLQuery query2 = session.createSQLQuery(query);
		query2.addEntity(ChiTietVongChungKet.class);
		query2.addScalar("DiemTrungBinh");
		@SuppressWarnings("unchecked")
		List<Object[]> listDTB = query2.list();
		
		// Giữ thứ tự chèn...
		LinkedList<ChiTietVongChungKet> dtbTietVongChungKet = new LinkedList<ChiTietVongChungKet>();
		 // Kết quả xử lí...
		for(Object[] entry : listDTB) {
			ChiTietVongChungKet dtbChungket = (ChiTietVongChungKet) entry[0];
			float diemtrungbinh  = ((Number)entry[1]).floatValue();
			dtbChungket.setDiemTrungBinh(diemtrungbinh);
			dtbTietVongChungKet.add(dtbChungket);
		}
		return dtbTietVongChungKet;
	}
	
	@Override
	@Transactional
	public void ThemChiTietVongChungKetToVongBanKet(ChiTietVongChungKet chiTietVongChungKet) {
		Session session = sessionFactory.getCurrentSession();
		String hql =  "insert into ChiTietVongChungKet (MaThiSinh, TenThiSinh)"
		        + " select MaThiSinh, TenThiSinh from ChiTietVongBanKet";
		int rowsAffected = session.createQuery(hql).executeUpdate();
		if (rowsAffected > 0) {
		    System.out.println(rowsAffected + "(s) were inserted");
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongChungKet> listDiemUngXu(){
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongChungKet order by DiemUngXu desc";
		List<ChiTietVongChungKet> listDiemUngXu = session.createQuery(query).list();
		return listDiemUngXu;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongChungKet> listDiemNgoaiNgu(){
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongChungKet order by DiemNgoaiNgu desc";
		List<ChiTietVongChungKet> listDiemNgoaiNgu = session.createQuery(query).list();
		return listDiemNgoaiNgu;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongChungKet> listDiemHoatDongXaHoi(){
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongChungKet order by DiemHoatDongXaHoi desc";
		List<ChiTietVongChungKet> listDiemHoatDongXaHoi = session.createQuery(query).list();
		return listDiemHoatDongXaHoi;
	}
}
