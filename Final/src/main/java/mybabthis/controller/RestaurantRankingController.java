package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Restaurant;
import mybabthis.service.RestaurantService;
import mybabthis.service.ReviewService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/ranking")
public class RestaurantRankingController {
	
	static final Logger logger = LoggerFactory.getLogger(RestaurantRankingController.class);


	@Autowired
	RestaurantService service;
	
	/**
	 * 맛집 랭킹 화면으로 이동
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String goRanking(Model model){
		// 랭킹 페이지
		
		return "/ranking/ranking_list";
		
	}
	

	/**
	 * 맛집 랭킹을 모든 지역을 기준으로 보여주기
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public String getAllRestaurantList(Model model){
		// 전체 랭킹순으로 보여주기
		List<Restaurant> restaurants = service.selectAllRestuarants();
		
		model.addAttribute("restaurants",restaurants);
		return "/ranking/ranking_all";
		
	}
	
	/**
	 * 맛집 랭킹을 선택된 지역을 기준으로 보여주기
	 * @param locName
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/view",params={"locName"}, method=RequestMethod.GET)
	public String getRestaurantListbyLoc(@RequestParam String locName, Model model){
		// 지역 이름을 클릭했을 때 랭킹순으로 보여주기
		List<Restaurant> restaurants = service.selectRestaurantsByLocation(locName);
		model.addAttribute("restaurants",restaurants);
		return "/ranking/ranking_view";
		
	}


}
