package com.zohocrm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zohocrm.entities.Billing;
import com.zohocrm.service.BillingService;

@Controller
public class BillingController {
	
	@Autowired
	private BillingService billingService;
	
	
	@RequestMapping("/generate")
	public String generateBill(@ModelAttribute("bill") Billing bill) {
		billingService.generateOneBill(bill);
		return "billing_result";
		
	}

}
