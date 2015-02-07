package simple.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import simple.dao.ReviewDao;
import simple.entity.Review;

@Service
public class ReviewServiceImpl implements ReviewService {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewServiceImpl.class);
	}
	
	@Autowired
	ReviewDao dao;
	
	@Override
	public int createReview(Review review) {
		int result = dao.createReview(review);
		return result;
	}

	@Override
	public int updateReview(Review review) {
		int result = dao.updateReview(review);
		return result;
	}

	@Override
	public int deleteReview(Review review) {
		int result = dao.deleteReview(review);
		return result;
	}

	@Override
	public Review getReviewByReviewNo(int reviewNo) {
		logger.trace("serviceImpl : 전");
		Review result = dao.getReviewByReviewNo(reviewNo);
		logger.trace("serviceImpl : 후");
		return result;
	}

	@Override
	public List<Review> getReviewByResNo(int resNo) {
		List<Review> result = dao.getReviewByResNo(resNo);
		return result;
	}

	@Override
	public List<Review> getReviewByUserId(String userId) {
		List<Review> result = dao.getReviewByUserId(userId);
		return result;
	}

	@Override
	public List<Review> getAllReview() {
		List<Review> result = dao.getAllReview();
		return result;
	}

}
