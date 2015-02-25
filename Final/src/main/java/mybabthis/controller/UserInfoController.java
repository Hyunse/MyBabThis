package mybabthis.controller;

import java.util.List;

import mybabthis.entity.License;
import mybabthis.entity.Users;
import mybabthis.exception.ServiceFailException;
import mybabthis.service.LicenseService;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes("loginUser")
public class UserInfoController {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserInfoController.class);
	}
	
	@Autowired
	UserService userservice;
	
	@Autowired
	LicenseService licenseService;
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String enterMypage(@ModelAttribute("loginUser") Users user){
		
		logger.trace("개인정보 위치입니다.");
		return "mypage/mypage_enter";
		
	}
	
	@RequestMapping(value="/mypage/myinfo", method=RequestMethod.GET)
	public String enterLogin(@ModelAttribute("loginUser") Users user,Model model){
		
		logger.trace("개인정보 위치입니다.");
		
		List<License> licenses = licenseService.getLicensesById(user.getUserId());

		model.addAttribute("licenses",licenses);
		
		return "mypage/myinfo";
		
	}
	
	
	@RequestMapping(value="/mypage/myinfo", params="_event_delete", method=RequestMethod.POST)
	public String reinput(@ModelAttribute("loginUser") Users user, SessionStatus sessionstatus){
		
		userservice.leave(user.getUserId(), user.getUserPass());
		logger.trace("삭제 성공");
		sessionstatus.setComplete();
		return "main";
	}
	
	@RequestMapping(value="/mypage/myinfo", params="_event_update", method=RequestMethod.POST)
	public String update(@ModelAttribute("loginUser") Users user){
		
		try{
		
		userservice.updateUser(user);
		
		}catch(ServiceFailException e){
			
			e.printStackTrace();
			
		}
		return "redirect:/mypage/myinfo";
		
	}
	
	@ExceptionHandler(Exception.class)
	public String handleException(){
		return "error";
		
	}
	@ExceptionHandler
	public String exceptionParameter(RuntimeException e){
		logger.error("UserInfoController",e);
		return "error";
		
	}

}
