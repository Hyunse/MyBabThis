package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Users;
import mybabthis.entity.Restaurant;
import mybabthis.service.BoardService;
import mybabthis.service.RestaurantService;
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
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"loginUser", "userList"})
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
	@Autowired
	RestaurantService restaurantService;

	/**
	 * 관리자 페이지 메인으로 이동
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/main",  method=RequestMethod.GET)
	public String goAdminMain(Model model){
		
		return "admin/admin_myinfo";
	}
	
	/**
	 * 개인정보 페이지로 이동
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/myinfo", method=RequestMethod.GET)
	public String goAdminMyinfo(@ModelAttribute("loginUser") Users user, Model model){
		model.addAttribute("loginUser", user);
		return "admin/admin_myinfo";

	}
	
	@RequestMapping(value="/myinfo",  params={"_event_update"}, method=RequestMethod.POST)
	public String myinfoUpdate(@ModelAttribute("loginUser") Users user, Model model){

		userService.updateUser(user);
		return "redirect:/admin/admin_menu";
	}
	
	
	/*게시물 관리 페이지에서 맛집 게시판 
	public String restaurantListAll(Model model){
	 List<Restaurant> list = restaurantService.selectAllRestuarants();
	 model.addAttribute("restaurantList", list);
	 model.addAttributes("count", list.size());
	 return "";
	 
	 
	}*/
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String getAllRestaurantList(Model model){
		List<Restaurant> restaurants = restaurantService.selectAllRestuarants();
		model.addAttribute("restaurants",restaurants);
		return "admin/admin_board";
	}
	
	@RequestMapping(value="/list",params={"locName"}, method=RequestMethod.GET)
	public String getRestaurantListbyLoc(@RequestParam String locName, Model model){
		List<Restaurant> restaurants = restaurantService.selectRestaurantsByLocation(locName);
		model.addAttribute("restaurant", new Restaurant());
		model.addAttribute("restaurants",restaurants);
		return "admin/admin_board";
		
	}
	
	public String restaurantListAll(Model model){
		
		return "/restaurant/list";
	}
	
//	/**
//	 * 회원관리 페이지에서 전체 회원을 목록으로 보여주기
//	 * @param user
//	 * @param model
//	 * @return
//	 */
//	@RequestMapping(value="/users",  method=RequestMethod.GET)
//	public String userListAll(Model model){		
//		List<Users> list = userService.selectAllUser();
//		model.addAttribute("userList", list);
//		model.addAttribute("count", list.size());
//		return "admin/admin_users";
//	}
	
	/**
	 * 회원관리 페이지에서 회원을 아이디로 검색하기
	 * @param user
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/users", params={"userId"},  method=RequestMethod.GET)
	public String searchUserId(@RequestParam String userId,  Model model){
		Users user = userService.searchUserId(userId);
		model.addAttribute("userList", user);
		return "admin/admin_users";
	}
	
	@RequestMapping(value="/users", params={"userName"},  method=RequestMethod.GET)
	public String searchUserName(@RequestParam String userName,  Model model){
		List<Users> user = userService.searchUserName(userName);
		model.addAttribute("userList", user);
		model.addAttribute("count", user.size());
		return "admin/admin_users";
	}
	
	@RequestMapping(value="/users", params={"userEmail"},  method=RequestMethod.GET)
	public String searchUseruserEmail(@RequestParam String userEmail,  Model model){
		Users user = userService.searchUserEmail(userEmail);
		model.addAttribute("userList", user);
		return "admin/admin_users";
	}
	
	@RequestMapping(value="/users", params={"userGender"},  method=RequestMethod.GET)
	public String searchUserGender(@RequestParam String userGender,  Model model){
		List<Users> user = userService.searchUserGender(userGender);
		model.addAttribute("userList", user);
		
		return "admin/admin_users";
	}
	
	@RequestMapping(value="/users", params={"userRegdate"},  method=RequestMethod.GET)
	public String searchUserRegdate(@RequestParam String userRegdate,  Model model){
		List<Users> user = userService.searchUserRegdate(userRegdate);
		model.addAttribute("userList", user);
		
		return "admin/admin_users";
	}
	
	@RequestMapping(value="/users", params={"userUpdateDate"},  method=RequestMethod.GET)
	public String searchUserUpdateDate(@RequestParam String userUpdateDate,  Model model){
		List<Users> user = userService.searchUserUpdateDate(userUpdateDate);
		model.addAttribute("userList", user);
		
		return "admin/admin_users";
	}
	
	@RequestMapping(value="/users", params={"userGrade"},  method=RequestMethod.GET)
	public String searchUserGrade(@RequestParam String userGrade,  Model model){
		List<Users> user = userService.searchUserGrade(userGrade);
		model.addAttribute("userList", user);
		
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
