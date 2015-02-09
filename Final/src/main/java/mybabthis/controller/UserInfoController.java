package mybabthis.controller;

import mybabthis.entity.Users;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value="/mypage/myinfo", method=RequestMethod.GET)
	public String enterLogin(@ModelAttribute("loginUser") Users user){
		
		logger.trace("개인정보 위치입니다.");
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
		
		userservice.updateUser(user);
		return "redirect:/mypage/myinfo";
		
	}

}
