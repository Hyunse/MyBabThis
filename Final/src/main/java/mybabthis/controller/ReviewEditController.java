package mybabthis.controller;

import mybabthis.entity.Review;
import mybabthis.service.RestaurantService;
import mybabthis.service.ReviewService;

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
@SessionAttributes("review")
public class ReviewEditController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewController.class);
	}
	
	@Autowired
	ReviewService service;
	
	@Autowired
	RestaurantService res_service;
	
	//작성폼으로
	@RequestMapping(value="/review/write", method=RequestMethod.GET,  params={"userId", "resNo"})
	public String redirToReviewForm(@RequestParam String userId, int resNo, Model model){
		Review review = new Review();
		review.setUserId(userId);
		review.setResNo(resNo);
		model.addAttribute("review", review);
		return "review/write";
	}
	
	//작성하기
	@RequestMapping(value="/review/write", params="write", method=RequestMethod.POST)
	public String write(@ModelAttribute("review") Review review){
		service.createReview(review);
/*		float avgScore=service.getAverageScore(review.getResNo());
		Restaurant restaurant = new Restaurant();
		restaurant.setResNo(review.getResNo());
		restaurant.setResScore(avgScore);
		res_service.updateResScore(restaurant);*/

		return "redirect:/restaurant/view?resNo="+review.getResNo();
	}
	
	//삭제하기
	@RequestMapping(value="/review/delete",  method=RequestMethod.GET,  params={"reviewNo", "resNo"})
	public String delete(@RequestParam int reviewNo, int resNo, Model model){
		service.deleteReview(reviewNo);
		return "redirect:/restaurant/view?resNo="+resNo; //session 에 담긴 restaurant정보로 처리해야 할 듯
	}
	
	//수정폼으로
	@RequestMapping(value="/review/edit", method=RequestMethod.GET,  params={"reviewNo"})
	public String edit(@RequestParam int reviewNo, Model model){
		Review review = service.getReviewByReviewNo(reviewNo); //session 에 담아서 바로 처리할 순 없낭? 
		model.addAttribute("review", review);
		return "review/edit";
	}
	
	//수정하기
	@RequestMapping(value="/review/update", params="_event_confirmed", method=RequestMethod.POST)
	public String update(@ModelAttribute("review") Review review){
		service.updateReview(review);
		return "redirect:/review/detail?reviewNo="+review.getReviewNo();
	}
	
	//재입력하기
	@RequestMapping(value="/review/update", params="_event_reverse", method=RequestMethod.POST)
	public String reinput(@ModelAttribute("review")  Review review){
		return "review/edit";
	}
	

}
