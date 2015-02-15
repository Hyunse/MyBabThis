package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Users;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String selectList() {
		return "admin/admin_users_jqgrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/admin/Users/getList")
	@ResponseBody
	public List<Users> list(HttpServletRequest request, HttpSession session) throws Exception {
		return userService.selectAllUser();
	}
	
	//DELETE user
	@RequestMapping(value = "/admin/Users/leave", method = RequestMethod.POST)
	public String deleteUser(@RequestParam String oper, String id) {
		logger.error("OPER"+oper);
		logger.error("ID"+id);
		userService.out(id);
		return "admin/admin_users_jqgrid";
	}
}
