package com.hoahau.dao;

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

import com.hoahau.daoImp.ChiTietVongSoKhaoImpl;
import com.hoahau.entity.ChiTietVongSoKhao;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ChiTietVongSoKhaoDao implements ChiTietVongSoKhaoImpl {
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongSoKhao> listChiTietVongSoKhao() {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM ChiTietVongSoKhao";
		List<ChiTietVongSoKhao> listChiTietVongSoKhao = session.createQuery(query).list();
		return listChiTietVongSoKhao;
	}

	@Override
	@Transactional
	public ChiTietVongSoKhao thongTinChiTietVongSoKhao(String MaThiSinh) {
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongSoKhao ctvsk where ctvsk.MaThiSinh="+"'"+MaThiSinh+"'";
		ChiTietVongSoKhao chiTietVongSoKhao =  (ChiTietVongSoKhao) session.createQuery(query).uniqueResult();
		return chiTietVongSoKhao;
	}

	@Override
	@Transactional
	public void ThemChiTietVongSoKhao(ChiTietVongSoKhao chiTietVongSoKhao) {
		Session session = sessionFactory.getCurrentSession();
		session.save(chiTietVongSoKhao);
	}
	
	@Override
	@Transactional
	public void ThemChiTietVongSoKhaoToListTs(ChiTietVongSoKhao chiTietVongSoKhao) {
		Session session = sessionFactory.getCurrentSession();
		String hql =  "insert into ChiTietVongSoKhao (MaThiSinh, TenThiSinh)"
		        + " select MaThiSinh, TenThiSinh from ThiSinhDuThi";
		int rowsAffected = session.createQuery(hql).executeUpdate();
		if (rowsAffected > 0) {
		    System.out.println(rowsAffected + "(s) were inserted");
		}
	}

	@Override
	@Transactional
	public void updateChiTietVongSoKhao(ChiTietVongSoKhao chiTietVongSoKhao) {
		Session session = sessionFactory.getCurrentSession();
		session.update(chiTietVongSoKhao);
	}

	@Override
	@Transactional
	public void deleteChiTietVongSoKhao(String MaThiSinh) {	
		ChiTietVongSoKhao chiTietVongSoKhaoId = sessionFactory.getCurrentSession().load(ChiTietVongSoKhao.class, MaThiSinh);
		if (null != MaThiSinh) {
			this.sessionFactory.getCurrentSession().delete(chiTietVongSoKhaoId);
		}
		 
	}

	@Override
	@Transactional
	public List<ChiTietVongSoKhao> listDiemTbVongSoKhao() {
		Session session = sessionFactory.getCurrentSession();
		String query = "select ctvsk.MaThiSinh,ctvsk.TenThiSinh,ctvsk.DiemHinhThe,ctvsk.DiemTraLoiPhongVan,ctvsk.DiemCatwalkTheoNhac,sum(ctvsk.DiemHinhThe+ctvsk.DiemTraLoiPhongVan+ctvsk.DiemCatwalkTheoNhac)/3 as DiemTrungBinh from ChiTietVongSoKhao ctvsk "
				+ "group by ctvsk.MaThiSinh,ctvsk.TenThiSinh,ctvsk.DiemHinhThe,ctvsk.DiemTraLoiPhongVan,ctvsk.DiemCatwalkTheoNhac order by DiemTrungBinh desc";
		SQLQuery query2 = session.createSQLQuery(query);
		query2.addEntity(ChiTietVongSoKhao.class);
		query2.addScalar("DiemTrungBinh");
		@SuppressWarnings("unchecked")
		List<Object[]> listDTB = query2.list();
		
		// Giữ thứ tự chèn...
		LinkedList<ChiTietVongSoKhao> dtbTietVongSoKhaos = new LinkedList<ChiTietVongSoKhao>();
		 // Kết quả xử lí...
		for(Object[] entry : listDTB) {
			ChiTietVongSoKhao dtbsokhao = (ChiTietVongSoKhao) entry[0];
			Float diemtrungbinh  = ((Number)entry[1]).floatValue();
			dtbsokhao.setDiemTrungBinh(diemtrungbinh);
			dtbTietVongSoKhaos.add(dtbsokhao);
			
		}
		return dtbTietVongSoKhaos;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongSoKhao> listDiemHinhThe(){
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongSoKhao order by DiemHinhThe desc";
		List<ChiTietVongSoKhao> listDiemHinhThe = session.createQuery(query).list();
		return listDiemHinhThe;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongSoKhao> listDiemPhongVan(){
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongSoKhao order by DiemTraLoiPhongVan desc";
		List<ChiTietVongSoKhao> listDiemPhongVan = session.createQuery(query).list();
		return listDiemPhongVan;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongSoKhao> listDiemCatWalkTheoNhac(){
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongSoKhao order by DiemCatwalkTheoNhac desc";
		List<ChiTietVongSoKhao> listDiemCatWalk = session.createQuery(query).list();
		return listDiemCatWalk;
	}
}
