package com.zohocrm.utitlity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component  // means EmailServiceImpl class should be maintain in this SpringBoot

public class EmailServiceImpl implements EmailService {

	@Autowired  // due to used class 
    private JavaMailSender emailSender;

	@Override
	public void sendSimpleMessage(String to, String subject, String text) { // here , two email address subject and text

		 SimpleMailMessage message = new SimpleMailMessage(); 
	        message.setFrom("noreply@baeldung.com");
	        message.setTo(to); 
	        message.setSubject(subject); 
	        message.setText(text);
	        emailSender.send(message);
	}

}
