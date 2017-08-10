package com.test.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Charge {
	@Id
	@Column(name="idCharge")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idCharge;
	@Column(name="Date")
	private String date;
	@Column(name="Subject")
	private String subject;
	@Column(name="Reason")
	private String reason;
	@Column(name="Cost")
	private String cost;
	@Column(name="Note")
	private String note;

	public Charge(String date , String subject , String cost ,String reason) {
		this.date=date;
		this.subject=subject;
		this.cost=cost;
		this.reason=reason;
	}
	public Charge(int idCharge , String date , String subject , String cost ,String reason) {
		this.idCharge=idCharge;
		this.date=date;
		this.subject=subject;
		this.cost=cost;
		this.reason=reason;
	}
	public Charge() {
		super();
	}

	public int getIdCharge() {
		return idCharge;
	}
	public void setIdCharge(int idCharge) {
		this.idCharge = idCharge;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
