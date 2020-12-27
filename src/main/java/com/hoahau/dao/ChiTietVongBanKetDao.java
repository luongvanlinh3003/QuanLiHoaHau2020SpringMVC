package com.hoahau.dao;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.hoahau.daoImp.ChiTietVongBanKetImpl;
import com.hoahau.entity.ChiTietVongBanKet;
import com.hoahau.entity.ChiTietVongSoKhao;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietVongBanKetDao implements ChiTietVongBanKetImpl {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongBanKet> listChiTietVongBanKet() {
		Session session = sessionFactory.getCurrentSession();
		List<ChiTietVongBanKet> listChiTietVongBanKet = new ArrayList<ChiTietVongBanKet>();
		String query = "FROM ChiTietVongBanKet";
		listChiTietVongBanKet = session.createQuery(query).list();
		return listChiTietVongBanKet;
	}

	@Override
	@Transactional
	public ChiTietVongBanKet thongTinChiTietVongBanKet(String MaThiSinh) {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM ChiTietVongBanKet ct where ct.MaThiSinh=" + "'" + MaThiSinh + "'";
		ChiTietVongBanKet chiTietVongBanKet = (ChiTietVongBanKet) session.createQuery(query).uniqueResult();
		return chiTietVongBanKet;
	}

	@Override
	@Transactional
	public void ThemChiTietVongBanKet(ChiTietVongBanKet chiTietVongBanKet) {
		Session session = sessionFactory.getCurrentSession();
		session.save(chiTietVongBanKet);
	}

	@Override
	@Transactional
	public void updateChiTietVongBanKet(ChiTietVongBanKet chiTietVongBanKet) {
		Session session = sessionFactory.getCurrentSession();
		session.update(chiTietVongBanKet);
	}

	@Override
	@Transactional
	public void deleteChiTietVongBanKet(String MaThiSinh) {
		ChiTietVongBanKet chiTietVongBanKetId = sessionFactory.getCurrentSession().load(ChiTietVongBanKet.class,
				MaThiSinh);
		if (null != MaThiSinh) {
			this.sessionFactory.getCurrentSession().delete(chiTietVongBanKetId);
		}
	}

	@Override
	@Transactional
	public List<ChiTietVongBanKet> listDiemTbVongBanKet() {
		Session session = sessionFactory.getCurrentSession();
		String query = "select ctvsk.MaThiSinh,ctvsk.TenThiSinh,ctvsk.DiemTrangPhucAoDai,ctvsk.DiemTrangPhucAoTam,ctvsk.DiemTrangPhucDaHoi,sum(ctvsk.DiemTrangPhucAoDai+ctvsk.DiemTrangPhucAoTam+ctvsk.DiemTrangPhucDaHoi)/3 as DiemTrungBinh from ChiTietVongBanKet ctvsk "
				+ "group by ctvsk.MaThiSinh,ctvsk.TenThiSinh,ctvsk.DiemTrangPhucAoDai,ctvsk.DiemTrangPhucAoTam,ctvsk.DiemTrangPhucDaHoi order by DiemTrungBinh desc";
		SQLQuery query2 = session.createSQLQuery(query);
		query2.addEntity(ChiTietVongBanKet.class);
		query2.addScalar("DiemTrungBinh");
		@SuppressWarnings("unchecked")
		List<Object[]> listDTB = query2.list();
		// Giữ thứ tự chèn...
		LinkedList<ChiTietVongBanKet> dtbTietVongBanKet = new LinkedList<ChiTietVongBanKet>();
		// Kết quả xử lí...
		for (Object[] entry : listDTB) {
			ChiTietVongBanKet dtbbanket = (ChiTietVongBanKet) entry[0];
			float diemtrungbinh = ((Number) entry[1]).floatValue();
			dtbbanket.setDiemTrungBinh(diemtrungbinh);
			dtbTietVongBanKet.add(dtbbanket);
		}
		return dtbTietVongBanKet;
	}

	@Override
	@Transactional
	public void ThemChiTietVongBanKetToVongSoKhao(ChiTietVongBanKet chiTietVongBanKet) {
		
		Session session = sessionFactory.getCurrentSession();
		String hql = "insert into ChiTietVongBanKet (MaThiSinh, TenThiSinh)"
				+ " select ctvsk.MaThiSinh, ctvsk.TenThiSinh from ChiTietVongSoKhao ctvsk group by ctvsk.MaThiSinh, ctvsk.TenThiSinh order by sum(ctvsk.DiemHinhThe+ctvsk.DiemTraLoiPhongVan+ctvsk.DiemCatwalkTheoNhac)/3 desc";
		int rowsAffected = session.createQuery(hql).executeUpdate();
		if (rowsAffected > 0) {
			System.out.println(rowsAffected + "(s) were inserted");
		}
	}

	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public void listTopSoKhao() {
		Session session = sessionFactory.getCurrentSession();
		String query = "select ctvsk.MaThiSinh, ctvsk.TenThiSinh from ChiTietVongSoKhao ctvsk group by ctvsk.MaThiSinh,ctvsk.TenThiSinh order by sum(ctvsk.DiemHinhThe+ctvsk.DiemTraLoiPhongVan+ctvsk.DiemCatwalkTheoNhac)/3 desc";
		Query query1 = (Query) session.createSQLQuery(query).setFirstResult(0).setMaxResults(5);
		List<ChiTietVongSoKhao> soKhaos = query1.list();
		String query2 = "insert into ChiTietVongBanKet (MaThiSinh, TenThiSinh) select :list from ChiTietVongSoKhao";
		query1.setParameterList("list", soKhaos);
		Query query3 = session.createSQLQuery(query2);
		int rowsAffected = query3.executeUpdate();
		if (rowsAffected > 0) {
			System.out.println(rowsAffected + "(s) were inserted");
		}
	}
	 

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongBanKet> listDiemAoDai() {
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongBanKet order by DiemTrangPhucAoDai desc";
		List<ChiTietVongBanKet> listDiemAoDai = session.createQuery(query).list();
		return listDiemAoDai;
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongBanKet> listDiemAoTam() {
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongBanKet order by DiemTrangPhucAoTam desc";
		List<ChiTietVongBanKet> listDiemAoTam = session.createQuery(query).list();
		return listDiemAoTam;
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChiTietVongBanKet> listDiemDaHoi() {
		Session session = sessionFactory.getCurrentSession();
		String query = "from ChiTietVongBanKet order by DiemTrangPhucDaHoi desc";
		List<ChiTietVongBanKet> listDiemDaHoi = session.createQuery(query).list();
		return listDiemDaHoi;
	}

}
