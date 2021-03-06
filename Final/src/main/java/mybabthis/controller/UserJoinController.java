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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("loginUser")
public class UserJoinController {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserLoginController.class);
	}

	@Autowired
	UserService userservice;

	/**
	 * 가입 페이지로
	 */
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String enterJoin(Model model) {
		Users users = new Users();
		users.setUserImg("star.png");
		model.addAttribute("loginCheck", users);
		return "join/join_enter";

	}
	
	/**
	 * 가입 페이지로
	 */
	@RequestMapping(value = "/joinform", method = RequestMethod.GET)
	public String enterJoinForm(Model model) {
		model.addAttribute("loginCheck", new Users());
		return "join/joinform";

	}


	/**
	 * 가입 페이지에서 가입 확인을 눌렀을때
	 */
	@RequestMapping(value = "/join/confirm", method = RequestMethod.POST)
	public String join(@ModelAttribute("loginCheck") Users user,Model model) {

		int result =0;
		logger.trace("=======================================================" + user);
		result =userservice.join(user);
		
		if(result >0 ){
			logger.trace("가입 성공!!" + user);
			user.setUserGrade("학사");
			model.addAttribute("loginUser",user);
			return "redirect:/main";
		}
		
		return "join/join_fail";

	}

	/**
	 * 가입페이지로
	 */


	@RequestMapping(value = "/join/id", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive1(@RequestParam String id) {

		Users user = userservice.searchUserId(id);

		if (user != null) {
			  return "<font color='red'>중복된 아이디 입니다.</font>";
		}
		return "<font color='blue'>사용 가능한 아이디 입니다.</font>";
	}
	
	@RequestMapping(value = "/join/name", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive2(@RequestParam String name) {

		Users user = userservice.searchUserByName(name);
		if (user != null) {
			  return "<font color='red'>중복된 이름 입니다.</font>";
		}
		return "<font color='blue'>사용 가능한 이름 입니다.</font>";
	}
	@RequestMapping(value = "/join/email", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive3(@RequestParam String email) {

		Users user = userservice.searchUserEmail(email);
		
		if (user != null) {
			  return "<font color='red'>중복된 이메일 입니다.</font>";
		}
		return "<font color='blue'>사용 가능한 이메일 입니다.</font>";
	}

}
