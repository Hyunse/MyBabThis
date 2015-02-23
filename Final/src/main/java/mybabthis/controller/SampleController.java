package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Users;
import mybabthis.service.UserService;
import net.sf.json.JSONArray;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SampleController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminController.class);
	}

	@Autowired
	UserService userService;

	/*@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String userListAll(Model model) {
		List<Users> list = userService.selectAllUser();
		model.addAttribute("userList", list);
		model.addAttribute("count", list.size());
		return "admin/admin_users";
	}*/

	// 일단 얘는 현재 안됨. 제이슨객체로 넘어가서, 제이슨 인벨리드라고 오류남

/*	// Controller
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
	}*/
/*
	@RequestMapping(value = "/a")
	public ModelAndView list(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<Restaurant> restaurants = restaurantService.selectAllRestuarants();
		String json = new Gson().toJson(restaurants);
		String jsonString = "{\"total\":" + restaurants.size() + ", \"records\" :"+ json + "}";
		mav.addObject("jsonString", jsonString);
		logger.trace(jsonString);
		mav.setViewName("../../listData");
		return mav;
	}
	*/
	
	@RequestMapping(value = "/a")
	@ResponseBody
	public List<Users> list(HttpServletRequest request, HttpSession session) throws Exception {
		return userService.selectAllUser();
	}
	
	
	//리스트 페이지로 요청
	@RequestMapping(value = "/sample/sampleGrid", method = RequestMethod.GET)
	public String gachon() {
		return "sample/sampleGrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/sample/getList", method = RequestMethod.POST)
	@ResponseBody
	public JSONArray selectList() {
		return JSONArray.fromObject(userService.selectAllUser());
	}
	
	
	//ADD user
	@RequestMapping(value = "/sample/addUser", method = RequestMethod.POST)
	public String addUser(@RequestParam String oper, String userId, String userEmail, String userName) {
		logger.error("넘어옴  "+oper+"    "+userId);
		Users user = new Users();
		user.setUserId(userId);
		user.setUserEmail(userEmail);
		user.setUserGender("1");
		user.setUserPass("12");
		user.setUserName(userName);
		user.setUserPhone("010-000-0000");
		
		userService.join(user);

		logger.error("넘기기직전");
		
		return "../../NewFile";
	}

}
