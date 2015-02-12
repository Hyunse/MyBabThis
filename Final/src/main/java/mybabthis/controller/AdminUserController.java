package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Users;
import mybabthis.service.BoardService;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller()
@RequestMapping(value = "/admin")
public class AdminUserController {
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminUserController.class);
	}

	@Autowired
	BoardService boardService;
	@Autowired
	UserService userService;
	
	/**
	 * 회원관리 페이지에서 전체 회원을 목록으로 보여주기
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/userlist",  method=RequestMethod.GET)
	public String userListAll(Model model){		

		logger.trace("회원관리 페이지로 이동");
		return "/admin/admin_user";
	}
	
	@RequestMapping(value = "/userData")
	public ModelAndView list(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<Users> list = userService.selectAllUser();
		
		String json = new Gson().toJson(list);
		String jsonString = "{\"total\":" + list.size() + ", \"records\" :" + json + "}";
		mav.addObject("jsonString", jsonString);
		logger.trace(jsonString);
		mav.setViewName("../../listData");
		return mav;
	}

}
