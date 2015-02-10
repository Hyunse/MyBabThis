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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes({"loginUser","loginCheck"})
public class UserLoginController {
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserLoginController.class);
	}
	
	@Autowired
	UserService userservice;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String enterLogin(Model model){
		
		model.addAttribute("loginCheck", new Users());
		return "login/login_enter";
		
	}

	@RequestMapping(value="/login/confirm", method=RequestMethod.POST)
	public String login(@ModelAttribute("loginCheck") Users user,Model model){
		
		
		user= userservice.login(user);
		
		if(user == null){
			logger.trace("로그인 실패");
			return "redirect:/login/login_fail";
		}
		model.addAttribute("loginUser", user);
		return "redirect:/main";
		
	}
	@RequestMapping(value="/login/login_fail", method=RequestMethod.GET)
	public String loginFail(){
		
		
		return "/login/login_fail";
		
	}
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String goMain(){
		
		return "main";
		
	}
	

	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(SessionStatus sessionstatus){
		
		logger.trace("로그아웃 성공");
		sessionstatus.setComplete();
		return "redirect:/main";
	}
}
