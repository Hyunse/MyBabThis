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
@SessionAttributes("loginUser")
public class UserLoginController {
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserLoginController.class);
	}
	
	@Autowired
	UserService userservice;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String enterLogin(Model model){
		
		model.addAttribute("loginUser", new Users());
		return "/login";
		
	}

	@RequestMapping(value="/login/confirm", method=RequestMethod.POST)
	public String login(@ModelAttribute("loginUser") Users user){
		
	
		user= userservice.login(user);
		
		if(user == null){
			logger.trace("로그인 실패");
			return "redirect:/login/login_fail";
		}
		
		
		return "redirect:/main/main";
		
	}
	@RequestMapping(value="/login/login_fail", method=RequestMethod.GET)
	public String loginFail(){
		
		
		return "/login/login_fail";
		
	}
	
	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	public String goMain(Model model){
		
		model.addAttribute("loginUser", new Users());
		
		return "/main/main";
		
	}
	
	@RequestMapping(value="/mypage/myinfo", params="_event_logout", method=RequestMethod.POST)
	public String reinput(@ModelAttribute("Users") Users user, SessionStatus sessionstatus){
		
		logger.trace("로그아웃 성공");
		sessionstatus.setComplete();
		return "main/main";
	}

}
