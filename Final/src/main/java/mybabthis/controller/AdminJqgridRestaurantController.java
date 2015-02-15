package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Restaurant;
import mybabthis.entity.Users;
import mybabthis.service.RestaurantService;
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
public class AdminJqgridRestaurantController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminJqgridRestaurantController.class);
	}

	@Autowired
	RestaurantService restaurantService;

	//페이지 불러오기
	@RequestMapping(value = "/admin/Restaurant", method = RequestMethod.GET)
	public String selectList() {
		return "admin/admin_restaurant_jqgrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/admin/Restaurant/getList")
	@ResponseBody
	public List<Restaurant> list(HttpServletRequest request, HttpSession session) throws Exception {
		return restaurantService.selectAllRestuarants();
	}
	
	//DELETE user
	@RequestMapping(value = "/admin/Restaurant/leave", method = RequestMethod.POST)
	public String deleteUser(@RequestParam String oper, int id) {
		logger.error("OPER"+oper);
		logger.error("ID"+id);
		restaurantService.deleteRestaurant(id);
		return "admin/admin_restaurant_jqgrid";
	}
}
