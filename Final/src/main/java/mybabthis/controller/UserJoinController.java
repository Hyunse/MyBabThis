package mybabthis.controller;

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
		model.addAttribute("Users", new Users());
		return "join";

	}


	/**
	 * 가입 페이지에서 가입 확인을 눌렀을때
	 */
	@RequestMapping(value = "/join/confirm", method = RequestMethod.POST)
	public String join(@ModelAttribute("Users") Users user, Model model) {

		userservice.join(user);
		model.addAttribute("loginUser", user);
		return "redirect:/main";

	}

	/**
	 * 가입페이지로
	 */
/*	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String ajaxPageCall(Model model) {

		model.addAttribute("Users", new Users());
		return "join";

	}*/

	@RequestMapping(value = "/join", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive1(@RequestParam String id) {
		logger.trace("-------------------------------------------------------------------------------");

		Users user = userservice.selectUser(id);

		if (user != null) {
			logger.trace("----------------------중복 아이디");
			  return "중복된 아이디 입니다.";
		}
		logger.trace("----------------------사용가능 아이디");
		return "사용 가능한 아이디 입니다.";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive2(@RequestParam String name) {
		logger.trace("-------------------------------------------------------------------------------");

		Users user = userservice.selectUser(name);

		if (user != null) {
			logger.trace("----------------------중복 아이디");
			  return "중복된 아이디 입니다.";
		}
		logger.trace("----------------------사용가능 아이디");
		return "사용 가능한 아이디 입니다.";
	}

}
