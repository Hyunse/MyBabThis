package mybabthis.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybabthis.entity.Restaurant;
import mybabthis.entity.Review;
import mybabthis.entity.Rreply;
import mybabthis.service.RestaurantService;
import mybabthis.service.ReviewService;
import mybabthis.service.RreplyService;
import net.sf.json.JSONArray;

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
public class RestaurantController {
	static final Logger logger = LoggerFactory
			.getLogger(RestaurantController.class);


	@Autowired
	RestaurantService service;
	@Autowired
	ReviewService rev_sevice;
	@Autowired
	RreplyService rrep_service;
	

	

	@RequestMapping(value="/restaurant/list", method=RequestMethod.GET)
	public String getAllRestaurantList(Model model){
		List<Restaurant> restaurants = service.selectAllRestuarants();
		model.addAttribute("restaurant", new Restaurant());
		model.addAttribute("restaurants",restaurants);
		model.addAttribute("boardLoc", "서울 전체");
		return "/restaurant/restaurant_list";
		
	}
	
	@RequestMapping(value="/restaurant/list",params={"locName"}, method=RequestMethod.GET)
	public String getRestaurantListbyLoc(@RequestParam String locName, Model model){
		List<Restaurant> restaurants = service.selectRestaurantsByLocation(locName);
		model.addAttribute("restaurant", new Restaurant());
		model.addAttribute("restaurants",restaurants);
		model.addAttribute("boardLoc", locName);
		return "/restaurant/restaurant_list";
		
	}
	@RequestMapping(value="/main",params={"search"}, method=RequestMethod.GET)
	public String search(@RequestParam String search,Model model){
		List<Restaurant> restaurants = service.selectRestaurantsByResName(search);

		model.addAttribute("restaurant", new Restaurant());
		model.addAttribute("restaurants",restaurants);
		model.addAttribute("boardLoc", "검색결과");
		return "/restaurant/restaurant_list";
		
	}
	
	@RequestMapping(value="/restaurant/list",params={"resName"}, method=RequestMethod.GET)
	public String getRestaurantListbyName(@RequestParam String resName, Model model){
		List<Restaurant> restaurants = service.selectRestaurantsByResName(resName);

		model.addAttribute("restaurant", new Restaurant());
		model.addAttribute("restaurants",restaurants);
		model.addAttribute("boardLoc", "검색결과");
		return "/restaurant/restaurant_list";
		
	}
	
	@RequestMapping(value="/restaurant/view",params={"resNo"}, method=RequestMethod.GET)
	public String getRestaurantView(@RequestParam int resNo, Model model){
		Restaurant restaurant = service.selectRestaurantByNo(resNo);
		List<Review> reviews = rev_sevice.getReviewByResNo(resNo);
		List<Rreply> rreplys = rrep_service.getRreplyByResNo(resNo);
		model.addAttribute("restaurant",restaurant);
		model.addAttribute("reviews", reviews);
		model.addAttribute("rreplys", rreplys);
		model.addAttribute("resNo",resNo);
		return "restaurant/restaurant_view";
		
	}
	
	@RequestMapping(value = "/autocomplete", method = RequestMethod.POST)
    public void AutoTest(Locale locale, Model model, HttpServletRequest request,
            HttpServletResponse resp) throws IOException {
         
        String result = request.getParameter("term");
     
        List<Restaurant> list = service.getAllRestuarantsAtSearch(result); //result값이 포함되어 있는 emp테이블의 네임을 리턴
 
        JSONArray ja = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            ja.add(list.get(i).getResName());
        }
 
        PrintWriter out = resp.getWriter();
 
        out.print(ja.toString());
 
    }
	


	
	
}
