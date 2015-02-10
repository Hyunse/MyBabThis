package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Favorite;
import mybabthis.entity.Restaurant;
import mybabthis.service.FavoriteService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("favorite")
public class FavoriteController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(FavoriteController.class);
	}
	@Autowired
	FavoriteService service;

	/*
	@RequestMapping(value = "/restaurant/restaurant_list", method = RequestMethod.GET)
	public String favoriteForm(Model model) {
		model.addAttribute("favorite", new Favorite());
		return "restaurant/restaurant_list";
	}

*/
	//즐겨찾기 버튼 으로
	@RequestMapping(value = "/favorite/create", params={"resNo","userId"}, method = RequestMethod.GET)
	public String write(@RequestParam int resNo, String userId) {
		
		Favorite favorite=new Favorite();
		favorite.setResNo(resNo);
		favorite.setUserId(userId);
		int result=service.validationCheck(favorite);
		if(result==0){
		
			service.createFavorite(favorite);
		
		}
		else{
			return "favorite/fail";
		}
		
		return "redirect:/restaurant/view?resNo="+resNo;
	}
	
	
//즐겨찾기 리스트  
	@RequestMapping(value = "/favorite/list", params = {"userId"}, method = RequestMethod.GET)
	public String getFavorite(@RequestParam String userId, Model model) {

		Favorite favorite= new Favorite();
		favorite.setUserId(userId);
		List<Restaurant> rastaurants = service.getResByJoin(favorite);
		
		model.addAttribute("rastaurants",rastaurants);
		return "favorite/list";
	}

	// 삭제하기
	@RequestMapping(value = "/favorite/delete",params={"userId", "resNo"}, method = RequestMethod.GET)
	public String delete(@RequestParam String userId, int resNo) {
		Favorite favorite = new Favorite();
		favorite.setResNo(resNo);
		favorite.setUserId(userId);
		logger.error("rr");
		service.deleteFavorite(favorite);
		logger.error("ddd");
		return "redirect:/favorite/list?userId="+userId;
	}

	

}
