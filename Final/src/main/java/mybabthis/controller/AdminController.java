package mybabthis.controller;

import mybabthis.entity.Users;
import mybabthis.service.BoardService;
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

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminController.class);
	}

	@Autowired
	BoardService boardService;
	@Autowired
	UserService userService;

	/**
	 * 관리자 페이지 메인으로 이동
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/main",  method=RequestMethod.GET)
	public String goAdminMain(Model model){
		
		return "admin/main";
	}
	
	@RequestMapping(value="/myinfo",  method=RequestMethod.GET)
	public String goAdminMyinfo(Model model){
		
		return "admin/admin_myinfo";
	}
	
	@RequestMapping(value="/users_list", params={"userId"},  method=RequestMethod.GET)
	public String enterAdminUsersList(@RequestParam int resNo, Model model){
		
		return "admin/admin_user_detail";
	}
	
	@RequestMapping(value="/users",  method=RequestMethod.GET)
	public String goAdminUsers(@ModelAttribute("userList") Users user, Model model){
		
		return "admin/admin_users";
	}
	
	@RequestMapping(value="/board",  method=RequestMethod.GET)
	public String goAdminBoard(Model model){
		
		return "admin/admin_board";
	}
	
	@RequestMapping(value="/message",  method=RequestMethod.GET)
	public String goAdminMessage(Model model){
		
		return "admin/admin_message";
	}
	
	

}
