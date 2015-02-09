package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Restaurant;
import mybabthis.entity.Review;
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
public class RestaurantController {
	static final Logger logger = LoggerFactory
			.getLogger(RestaurantController.class);


	@Autowired
	RestaurantService service;
	@Autowired
	ReviewService rev_sevice;
	

	@RequestMapping(value="/restaurant/list", method=RequestMethod.GET)
	public String getAllRestaurantList(Model model){
		List<Restaurant> restaurants = service.selectAllRestuarants();
		
		model.addAttribute("restaurants",restaurants);
		return "/restaurant/restaurant_list";
		
	}
	
	@RequestMapping(value="/restaurant/list",params={"locName"}, method=RequestMethod.GET)
	public String getRestaurantListbyLoc(@RequestParam String locName, Model model){
		List<Restaurant> restaurants = service.selectRestaurantsByLocation(locName);
		
		model.addAttribute("restaurants",restaurants);
		return "/restaurant/restaurant_list";
		
	}
	
	@RequestMapping(value="/restaurant/list",params={"resName"}, method=RequestMethod.GET)
	public String getRestaurantListbyName(@RequestParam String resName, Model model){
		List<Restaurant> restaurants = service.selectRestaurantsByResName(resName);
		
		model.addAttribute("restaurants",restaurants);
		return "/restaurant/restaurant_list";
		
	}
	
	@RequestMapping(value="/restaurant/view",params={"resNo"}, method=RequestMethod.GET)
	public String getRestaurantView(@RequestParam int resNo, Model model){
		Restaurant restaurant = service.selectRestaurantByNo(resNo);
		List<Review> reviews = rev_sevice.getReviewByResNo(resNo);
		model.addAttribute("restaurant",restaurant);
		model.addAttribute("reviews", reviews);
		model.addAttribute("resNo",resNo);
		return "restaurant/restaurant_view";
		
	}
	
	
}
