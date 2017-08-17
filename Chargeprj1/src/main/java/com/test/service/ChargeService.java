package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.hibernate.dao.ChargeDao;
import com.test.model.Charge;

@Service
public class ChargeService {
	
	@Autowired
	private ChargeDao chargeDao;
	
	
	
	@Transactional
	public void insertCharge(String date , String subject , String cost , String reason) {		
		Charge charge = new Charge(date, subject, cost, reason);
	    chargeDao.insertCharge(charge);
	}

	@Transactional
	public void deleteCharge(int idCharge) {
		
			this.chargeDao.deleteCharge(idCharge);
		
	}

	@Transactional
	public void updateCharge(int idCharge ,String date , String subject , String cost , String reason) {
		Charge charge = new Charge(idCharge , date, subject, cost, reason);
	    chargeDao.updateCharge(charge);
	}


	@Transactional
	public List<Charge> getChargeById(int idCharge) {

		return this.chargeDao.getChargeById(idCharge);
	}


	@Transactional
	public List<Charge> getChargeByReason(String reason) {

		return this.chargeDao.getChargeByReason(reason);
	}

	@Transactional
	public List<Charge> getChargeBySubject(String subject) {

		return this.chargeDao.getChargeBySubject(subject);
	}

	@Transactional
	public List<Charge> getChargeByDate(String dateStart, String dateEnd) {
		
		return this.chargeDao.getChargeByDate(dateStart, dateEnd);
	}

}
