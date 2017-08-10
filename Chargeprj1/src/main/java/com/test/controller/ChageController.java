package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.model.Charge;
import com.test.service.ChargeService;

@Controller
public class ChageController {
	@Autowired
	private ChargeService chargeService;
	@Autowired
	private List subjects_list;
	
	
	
	@RequestMapping(value="/insert_form")
	public String insert (Model model) {
		String inputView ="Insert";
		model.addAttribute("subjects_list",subjects_list);
		return inputView;
	}
	
	
	@RequestMapping(value="/insert_charge")
	public String insert_Charge(@RequestParam String Date,
								@RequestParam String subject,
								@RequestParam String Cost,
								@RequestParam String Reason) {
		
		chargeService.insertCharge(Date, subject, Cost, Reason);
		
		return "Success";
	}
	
	@RequestMapping(value="/update")
	public String updateCharge(Model model,
							   @RequestParam int idCharge,
							   @RequestParam String Date,
							   @RequestParam String subject,
							   @RequestParam String Cost,
							   @RequestParam String Reason) {	
		
		chargeService.updateCharge(idCharge ,Date, subject, Cost, Reason);
		return "Success";
	}
	
	@RequestMapping(value="/remove")
	public String deleteById(@RequestParam int idCharge) {
		chargeService.deleteCharge(idCharge);
		return "Success";
	}
	
	@RequestMapping(value="query_form")
	public String query(Model model) {
		String queryView = "Query";
		model.addAttribute("subjects_list",subjects_list);
		return queryView;
	}
	
	@RequestMapping(value="/queryId")
	public String queryId(Model model,
						  @RequestParam int idCharge) {
		
		model.addAttribute("Charge",new Charge());
		model.addAttribute("charges",chargeService.getChargeById(idCharge));
		model.addAttribute("subjects_list",subjects_list);
		
		return "UpdateAndDeleteConfirm";
	}
	
	@RequestMapping(value="/queryReason")
	public String queryReason(Model model,
							  @RequestParam String Reason) {
		model.addAttribute("Charge",new Charge());
		model.addAttribute("charges",this.chargeService.getChargeByReason(Reason));
		
		return "ViewQuery";
	}
	@RequestMapping(value="/queryDate")
	public String queryDate(Model model,
							@RequestParam String DateStart,
							@RequestParam String DateEnd) {
		model.addAttribute("Charage", new Charge());
		model.addAttribute("charges",this.chargeService.getChargeByDate(DateStart, DateEnd));			
		return "ViewQuery";
		
	}
	
	@RequestMapping(value="/querySubject")
	public String querySubject(Model model,
							   @RequestParam String subject) {
		model.addAttribute("Charage", new Charge());
		model.addAttribute("charges",this.chargeService.getChargeBySubject(subject));
		
		return "ViewQuery";
	}
}
