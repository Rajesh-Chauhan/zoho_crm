package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.service.ContactService;
import com.zohocrm.service.LeadService;

@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadServ;
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("view")
	public String viewOneLead() {
		return "create_lead";
	}
	@RequestMapping("saveLead")
	public String saveOneLead(@ModelAttribute("Lead") Lead lead,ModelMap model) {
		leadServ.saveLead(lead);
		model.addAttribute("lead", lead);
		return "lead_info";
	}
	
    @RequestMapping("/listalleads")
	public String listAllLeads(ModelMap model) {
		List<Lead> leads = leadServ.findAllLeads();
		model.addAttribute("leads", leads);
		return "lead_result";
	}
    
    @RequestMapping("/getLeadById")
    public String getLeadById(@RequestParam("id") long id,ModelMap model) {
    Lead lead= leadServ.getLead(id);
    model.addAttribute("lead", lead);
	return "lead_info";
    	
    }
    
    @RequestMapping("/convertLead")
    public String convertLead(@RequestParam("id") long id,ModelMap model) {
    Lead lead= leadServ.getLead(id);
    Contact contact= new Contact();
    contact.setFirstName(lead.getFirstName());
    contact.setLastName(lead.getLastName());
    contact.setEmail(lead.getEmail());
    contact.setLeadSource(lead.getLeadSource());
    contact.setMobile(lead.getMobile());
    contactService.saveContact(contact);
    leadServ.deleteLead(id);
    
    List<Contact> contacts = contactService.findAllContacts();
    model.addAttribute("contacts", contacts);
	return "contact_result";
    }
}
