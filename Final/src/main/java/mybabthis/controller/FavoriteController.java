package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Favorite;
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

	@RequestMapping(value = "/restaurant/restaurant_list", method = RequestMethod.GET)
	public String favoriteForm(Model model) {
		model.addAttribute("favorite", new Favorite());
		return "restaurant/restaurant_list";
	}

	//즐겨찾기 버튼 으로
	@RequestMapping(value = "/favorite/create", params={"resNo","userId"}, method = RequestMethod.GET)
	public String write(@RequestParam int resNo, String userId) {
		Favorite favorite=new Favorite();
		favorite.setResNo(resNo);
		favorite.setUserId(userId);
		service.createFavorite(favorite);
		return "restaurant/restaurant_list";
	}
//즐겨찾기 추가 
	@RequestMapping(value = "/favorite/list", params = "userId", method = RequestMethod.GET)
	public String getFavorite(@RequestParam String userId, Model model) {
		logger.trace("됫나");
		List<Integer> resNos = service.getFavoriteByUserId(userId);
		model.addAttribute("resNos", resNos);
		return "redirect:/favorite/list";
	}

	// 삭제하기
	@RequestMapping(value = "/favorite/delete", method = RequestMethod.POST)
	public String delete(@RequestParam String userId, int resNo) {
		Favorite favorite = new Favorite();
		favorite.setResNo(resNo);
		favorite.setUserId(userId);
		service.deleteFavorite(favorite);
		return "redirect:/favorite/list?userId=" + favorite.getUserId();
	}

	

}
