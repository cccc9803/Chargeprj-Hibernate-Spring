package com.test.hibernate.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Expression;
import org.springframework.stereotype.Repository;

import com.test.hibernate.util.HibernateUtil;
import com.test.model.Charge;

@Repository
public class ChargeDao {
	private Session session;

	public ChargeDao() {
		session = HibernateUtil.getSessionFactory().openSession();
	}

	public void insertCharge(Charge charge) {
		Transaction transaction = session.beginTransaction();

		session.save(charge);
		transaction.commit();
		session.save(charge);
		System.out.println("新增資料完成，請至MySQL查詢資料");
		session.close();
	}

	public void deleteCharge(int idCharge) {

		Transaction transaction = session.beginTransaction();
		Charge charge = (Charge) session.load(Charge.class, idCharge);
		session.delete(charge);
		transaction.commit();
		session.close();
		System.out.println("刪除資料完成，請至MySQL查詢資料");

	}

	public void updateCharge(Charge charge) {
		Transaction transaction = session.beginTransaction();
		session.update(charge);
		transaction.commit();
		session.close();
		System.out.println("修改資料完成，請至MySQL查詢資料");

	}

	public List<Charge> getChargeById(int idCharge) {

		List<Charge> charges = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Iterator results = null;
		// 使用Criteria查詢
		Criteria criteria = session.createCriteria(Charge.class);
		
		criteria.add(Expression.eq("idCharge", idCharge));
		results = criteria.list().iterator();
		while (results.hasNext()) {
			Charge charge = (Charge) results.next();
			charges.add(charge);
		}
		session.close();
		return charges;

	}

	public List<Charge> getChargeByReason(String reason) {
		List<Charge> charges = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Iterator results = null;
		Criteria criteria = session.createCriteria(Charge.class);
		criteria.add(Expression.eq("reason", reason));
		results = criteria.list().iterator();
		while (results.hasNext()) {
			Charge charge = (Charge) results.next();
			charges.add(charge);
		}
		session.close();
		return charges;

	}

	public List<Charge> getChargeBySubject(String subject) {
		List<Charge> charges = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Iterator results = null;
		Criteria criteria = session.createCriteria(Charge.class);
		criteria.add(Expression.eqOrIsNull("subject", subject));
		results = criteria.list().iterator();
		while (results.hasNext()) {
			Charge charge = (Charge) results.next();
			charges.add(charge);
		}
		session.close();
		return charges;

	}

	public List<Charge> getChargeByDate(String dateStart, String dateEnd) {
		List<Charge> charges = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Iterator results = null;
		Criteria criteria = session.createCriteria(Charge.class);
		criteria.add(Expression.ge("date", dateStart));
		criteria.add(Expression.le("date", dateEnd));
		results = criteria.list().iterator();
		while (results.hasNext()) {
			Charge charge = (Charge) results.next();
			charges.add(charge);
		}
		session.close();
		
		return charges;
	}
}
