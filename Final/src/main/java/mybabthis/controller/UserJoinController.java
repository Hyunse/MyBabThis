package mybabthis.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


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
		model.addAttribute("Users", new Users());
		return "join";
		
	}

	@RequestMapping(value="/join/confirm", method=RequestMethod.POST)
	public String login(@ModelAttribute("Users") Users user){
		
	
		userservice.join(user);
		
		return "redirect:/main/main";
		
	}
	@RequestMapping(value="/id", method=RequestMethod.GET)
	public String ajaxPageCall(Model model){
	
		model.addAttribute("Users", new Users());
		return "join";
		
	}


	@RequestMapping(value="/id", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive(@RequestParam String id , HttpServletRequest request){
		logger.trace("-------------------------------------------------------------------------------");
		
		Users user =userservice.selectUser(id);
		
		if(user != null){
			logger.trace("----------------------중복 아이디");
			return "중복된 아이디 입니다.";
		}
		logger.trace("----------------------사용가능 아이디");
		return "사용 가능한 아이디 입니다.";
	}
	
}
