package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Review;
import mybabthis.service.ReviewService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminJqgridReviewController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminJqgridReviewController.class);
	}

	@Autowired
	ReviewService reviewService;

	//페이지 불러오기
	@RequestMapping(value = "/admin/Review", method = RequestMethod.GET)
	public String goPage() {
		return "admin/admin_review_jqgrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/admin/Review/getList")
	@ResponseBody
	public List<Review> selectList(HttpServletRequest request, HttpSession session) throws Exception {
		return reviewService.getAllReview();
	}
	
	//DELETE review
	@RequestMapping(value = "/admin/Review/deleteOne", method = RequestMethod.POST)
	public String deleteReview(@RequestParam String oper, int id) {
		reviewService.deleteReview(id);
		return "admin/admin_review_jqgrid";
	}
}
