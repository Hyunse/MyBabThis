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

@Controller
public class RestaurantWriteController {

	static final Logger logger = LoggerFactory
			.getLogger(RestaurantWriteController.class);
	
	@Autowired
	RestaurantService service;
	
	@RequestMapping(value="/restaurant/write", method=RequestMethod.GET)
	public String enterWriteRestaurant(Model model){
		model.addAttribute("restaurant", new Restaurant());
		return "/restaurant/restaurant_write";
	}
	
	
	@RequestMapping(value="/restaurant/writed",method=RequestMethod.POST)
	public String afterWriteRestaurant(@ModelAttribute("restaurant") Restaurant restaurant){
		logger.trace("이거출력 : "+restaurant);
		service.createRestaurant(restaurant);
		return  "redirect:/restaurant/list";
	}

}
