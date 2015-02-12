package mybabthis.service;

import java.util.List;

import mybabthis.dao.LicenseDao;
import mybabthis.dao.RestaurantDao;
import mybabthis.dao.ReviewDao;
import mybabthis.entity.License;
import mybabthis.entity.Restaurant;
import mybabthis.entity.Review;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewServiceImpl.class);
	}
	
	@Autowired
	ReviewDao dao;

	@Autowired
	LicenseDao licenseDao;

	@Autowired
	RestaurantDao restaurantDao;
	
	@Override
	public int createReview(Review review) {
		

		int result = dao.createReview(review);
		String userId=review.getUserId();
		int resNo = review.getResNo();

		Restaurant res = restaurantDao.selectRestaurantByNo(resNo);
		String locName = res.getLocName();
		License license = licenseDao.getLicense(userId, locName);
		
		logger.trace("체크할 라이센스 : "+license);
		
		int licenseNo = license.getLicenseNo();
		
		//여기서 라이센스가 null 이 아니면 비교하자.
		if (license!=null){
			//자격증 취득 회원에서 아이디랑, 라이센스넘버로 셀렉해와서,
			//라이센스가 이미 등록되지 않았으면 
			
				
			
			
		}
		
		

		
		return result;
	}

	@Override
	public int updateReview(Review review) {
		int result = dao.updateReview(review);
		return result;
	}

	@Override
	public int deleteReview(int reviewNo) {
		int result = dao.deleteReview(reviewNo);
		return result;
	}

	@Override
	public Review getReviewByReviewNo(int reviewNo) {
		Review result = dao.getReviewByReviewNo(reviewNo);
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

	@Override
	public float getAverageScore(int resNo) {
		float result=dao.getAverageScore(resNo);
		return result;
	}

}
