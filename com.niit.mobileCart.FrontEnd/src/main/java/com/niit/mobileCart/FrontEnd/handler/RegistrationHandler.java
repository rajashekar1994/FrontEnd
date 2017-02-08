package com.niit.mobileCart.FrontEnd.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.mobileCart.backEnd.dao.UserDao;
import com.niit.mobileCart.backEnd.model.User;

@Component
public class RegistrationHandler {

	@Autowired
	UserDao userDao;


	public User initFlow(){
		return new User();
	}

	public String validateDetails(User user,MessageContext messageContext){
		String status = "success";
		if(user.getId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if(user.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("name").defaultText("UserName cannt be empty").build());
			status="failure";
		}
		if(user.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
	
		
		if(user.getMobile().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("Mobile cannot be Empty").build());
			status = "failure";
		}
		
		
		return status;
	}
	
	public String saveDetails(User user){
		userDao.save(user);
		return "success";
	}

}
