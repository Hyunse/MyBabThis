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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class SampleController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminController.class);
	}

	@Autowired
	UserService userService;

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String userListAll(Model model) {
		List<Users> list = userService.selectAllUser();
		model.addAttribute("userList", list);
		model.addAttribute("count", list.size());
		return "admin/admin_users";
	}

	// Controller
	@RequestMapping(value = "/c", method = RequestMethod.GET)
	public ModelAndView AjaxView() {
		ModelAndView mav = new ModelAndView();
		List<Users> list = userService.selectAllUser();

		mav.addObject("list", list);
		String json = new Gson().toJson(list);
		String jsonString = "{\"total\":" + list.size() + ", \"records\" :"
				+ json + "}";
		
		
		mav.addObject("jsonString", jsonString);
		mav.setViewName("jsonView");
		logger.error("mav: " + mav);
		return mav;
	}

	@RequestMapping(value = "/a")
	public ModelAndView list(HttpServletRequest request, HttpSession session)
			throws Exception {
		ModelAndView mav = new ModelAndView();
		List<Users> list = userService.selectAllUser();
		String abc = "{\"total\":1,\"records\":[{\"userId\":\"aaa\"}]}";
		String json = new Gson().toJson(list);
		String jsonString = "{\"total\":" + list.size() + ", \"records\" :"
				+ json + "}";
		mav.addObject("jsonString", jsonString);
		logger.trace(jsonString);
		logger.trace(abc);
		mav.setViewName("../../listData");
		return mav;
	}

}
