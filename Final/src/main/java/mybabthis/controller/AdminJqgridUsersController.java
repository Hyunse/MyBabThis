package mybabthis.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Users;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminJqgridUsersController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminJqgridUsersController.class);
	}

	@Autowired
	UserService userService;

	//페이지 불러오기
	@RequestMapping(value = "/admin/Users", method = RequestMethod.GET)
	public String goPage(Locale locale, Model model) {
/*		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		logger.error(formattedDate);*/
		return "admin/admin_users_jqgrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/admin/Users/getList")
	@ResponseBody
	public List<Users> selectList(HttpServletRequest request, HttpSession session) throws Exception {
		
		return userService.selectAllUser();
	}
	
	//DELETE user
	@RequestMapping(value = "/admin/Users/deleteOne", method = RequestMethod.POST)
	public String deleteUser(@RequestParam String oper, String id) {
		userService.out(id);
		return "admin/admin_users_jqgrid";
	}
}
