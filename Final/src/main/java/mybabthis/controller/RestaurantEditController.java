package mybabthis.controller;

import mybabthis.entity.Restaurant;
import mybabthis.service.RestaurantService;

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
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes("restaurant")
public class RestaurantEditController {

	static final Logger logger = LoggerFactory
			.getLogger(RestaurantEditController.class);
	
	@Autowired
	RestaurantService service;


	@RequestMapping(value="/restaurant/edit", params={"resNo"}, method=RequestMethod.GET)
	public String enterEditRestaurant(@RequestParam int resNo,Model model){
		logger.trace("맛집 게시물 수정 페이지로");
		Restaurant restaurant = service.selectRestaurantByNo(resNo);
		model.addAttribute("restaurant",restaurant);
		return "restaurant/restaurant_edit";
	}
	
	@RequestMapping(value="/restaurant/edited", method=RequestMethod.POST)
	public String afterEditRestaurant(@ModelAttribute("restaurant") Restaurant restaurant,SessionStatus sessionStatus){
		logger.trace("맛집게시물 수정시도");
		service.updateRestaurant(restaurant);
		logger.trace("맛집게시물 수정했음");
		sessionStatus.setComplete();
		return "redirect:/restaurant/list";
	}
	
	@RequestMapping(value="/restaurant/delete", params={"resNo", "locName"}, method=RequestMethod.GET)
	public String deleteRestaurant(@RequestParam int resNo, String locName, Model model){
		logger.trace("맛집게시물 삭제 : 번호 - "+resNo);
		service.deleteRestaurant(resNo);
		return "redirect:/restaurant/list?locName="+locName;
	}
	
	

}
