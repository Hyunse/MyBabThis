package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Review;
import mybabthis.service.ReviewService;

import org.junit.runner.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReviewController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewController.class);
	}
	
	@Autowired
	ReviewService service;
		
	//리스트
/*	@RequestMapping(value="/review/list", method=RequestMethod.GET, params={"resNo"})
	public String getReviewByResNo(@RequestParam int resNo, Model model){
		List<Review> reviews = service.getReviewByResNo(resNo);
		model.addAttribute("reviews", reviews);
		return "review/list";
	}*/
	
	//상세보기
	@RequestMapping(value="/review/detail", method=RequestMethod.GET, params={"reviewNo"})
	public String getReviewByReviewNo(@RequestParam int reviewNo, Model model){
		Review review = service.getReviewByReviewNo(reviewNo);
		model.addAttribute("review", review);
		return "review/detail";
	}
	

}
