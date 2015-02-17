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
	public String goPage() {
		return "admin/admin_rreply_jqgrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/admin/Restaurant/getList")
	@ResponseBody
	public List<Restaurant> selectList(HttpServletRequest request, HttpSession session) throws Exception {
		return restaurantService.selectAllRestuarants();
	}
	
	//DELETE restaurant
	@RequestMapping(value = "/admin/Restaurant/deleteOne", method = RequestMethod.POST)
	public String deleteRestaurant(@RequestParam String oper, int id) {
		restaurantService.deleteRestaurant(id);
		return "admin/admin_restaurant_jqgrid";
	}
}
