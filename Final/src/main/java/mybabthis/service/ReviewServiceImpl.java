package mybabthis.service;

import java.util.List;

import mybabthis.dao.LicenseDao;
import mybabthis.dao.RestaurantDao;
import mybabthis.dao.ReviewDao;
import mybabthis.dao.UserDao;
import mybabthis.entity.License;
import mybabthis.entity.LicensedUser;
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
	@Autowired
	UserDao userDao;
	
	@Override
	public int createReview(Review review) {

		int result = dao.createReview(review);

		this.averageScore(review.getResNo());
		
		
		if(userDao.getUserById(review.getUserId()).getUserGrade().equals("관리자")){
			logger.trace("관리자라 등급체크안함");
		}
		else{
		
			this.checkGrade(review);
		}

		return result;
	}
	
	private int averageScore(int resNo){
		//Reviews의 평점 계산
		float avgScore=dao.getAverageScore(resNo);
		Restaurant restaurant = new Restaurant();
		restaurant.setResNo(resNo);
		restaurant.setResScore(avgScore);
		//계산된 평점으로 restaurant 점수 업데이트
		return restaurantDao.updateResScore(restaurant);
	}
	
	

	private int checkGrade(Review review) {
		
		logger.trace("확인 : 등급체크");

		String userId = review.getUserId();
		int resNo = review.getResNo();

		Restaurant res = restaurantDao.selectRestaurantByNo(resNo);
		String locName = res.getLocName();
		License license = licenseDao.getLicenseByLocName(userId, locName);

		logger.trace("체크할 라이센스 : " + license);

		// 여기서 라이센스가 null 이 아니면 비교하자.
		if (license != null) {
			// 자격증 취득 회원에서 아이디랑, 라이센스넘버로 셀렉해와서,
			// 라이센스가 이미 등록되지 않았으면
			// 새로 추가.

			int licenseNo = license.getLicenseNo();
			LicensedUser licensedUserTemp =  new LicensedUser();
			licensedUserTemp.setUserId(userId);
			licensedUserTemp.setLicenseNo(licenseNo);
			LicensedUser licensedUser = licenseDao.getLicensedUser(licensedUserTemp);
			if (licensedUser == null) {
				licensedUser = new LicensedUser();
				logger.trace("가지고있는 라이센스 없으니 새로 등록 : 번호 : "+licenseNo + "   아이디 : "+ userId);
				licensedUser.setLicenseNo(licenseNo);
				licensedUser.setUserId(userId);
				licenseDao.insertLicensedUser(licensedUser);

			} else {
				logger.trace("이미 가지고 있는 라이센스 = "+licensedUser);
			}

		}


		logger.trace("이거 출력 확인 2");
		String resKind = res.getResKind();

		License license2 = licenseDao.getLicenseByResKind(userId, resKind);

		// 여기서 라이센스가 null 이 아니면 비교하자.
		if (license2 != null) {
			// 자격증 취득 회원에서 아이디랑, 라이센스넘버로 셀렉해와서,
			// 라이센스가 이미 등록되지 않았으면
			// 새로 추가.

			int licenseNo = license2.getLicenseNo();
			LicensedUser licensedUserTemp =  new LicensedUser();
			licensedUserTemp.setUserId(userId);
			licensedUserTemp.setLicenseNo(licenseNo);
			LicensedUser licensedUser = licenseDao
					.getLicensedUser(licensedUserTemp);
			if (licensedUser == null) {
				logger.trace("가지고있는 라이센스 없으니 새로 등록 : 번호 : "+licenseNo + "   아이디 : "+ userId);
				licensedUser = new LicensedUser();
				licensedUser.setLicenseNo(licenseNo);
				licensedUser.setUserId(userId);
				licenseDao.insertLicensedUser(licensedUser);

			} else {
				logger.trace("이미 가지고 있는 라이센스");
			}

		}
		String userGrade;
		
		int cnt = licenseDao.getLicenseCntById(userId);
		
		logger.trace("확인 : 유저아이디-"+userId+"  취득자격증수-"+cnt);
		if (cnt>=9){
			userGrade="교수";
			userDao.updateUserGrade(userId, userGrade);

			
		}
		else if(cnt>=6){
			userGrade="박사";
			userDao.updateUserGrade(userId, userGrade);
		}
		else if(cnt>=3){
			userGrade="석사";
			userDao.updateUserGrade(userId, userGrade);
		}
		
			

		return 0;
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

}
