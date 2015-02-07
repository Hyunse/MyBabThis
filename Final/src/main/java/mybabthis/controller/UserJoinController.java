package mybabthis.controller;

import mybabthis.entity.Users;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserJoinController {


	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserLoginController.class);
	}
	
	@Autowired
	UserService userservice;
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String enterLogin(Model model){
		
		return "/join";
		
	}

	@RequestMapping(value="/join/confirm", method=RequestMethod.POST)
	public String login(@ModelAttribute("Users") Users user){
		
	
		userservice.join(user);
		
		return "redirect:/main/main";
		
	}

	
	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	public String goMain(){
		
		
		return "/main/main";
		
	}
}
