package mybabthis.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletResponse;

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
	public String afterWriteRestaurant(@ModelAttribute("restaurant") Restaurant restaurant, Model model, HttpServletResponse response){
		service.createRestaurant(restaurant);
		//model.addAttribute("restaurant", new Restaurant());
		String url;
		url=restaurant.getLocName();
		logger.error("이거출력 : "+restaurant.getLocName());
		logger.error("이거출력 : "+url);
String uname="";
try {
	uname = java.net.URLEncoder.encode(url,"utf-8");
} catch (UnsupportedEncodingException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


		return  "redirect:/restaurant/list?locName="+uname;
		
	}

}
