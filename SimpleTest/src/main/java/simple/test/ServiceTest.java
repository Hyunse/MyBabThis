package simple.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import simple.entity.Loc;
import simple.entity.Restaurant;
import simple.entity.Review;
import simple.entity.Users;
import simple.service.ReviewService;
import simple.service.UserService;

public class ServiceTest {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ServiceTest.class);
	}

	public static void main(String[] args) {
		ApplicationContext ctx = new GenericXmlApplicationContext(
				"spring/application-config.xml");
		UserService st = ctx.getBean(UserService.class);
		logger.trace("service : " + st);

		Users user = new Users();
		user.setUserEmail("simsim@gom.net");
		user.setUserGender("1");
		user.setUserPass("12");
		user.setUserId("a");
		user.setUserName("Kim");
		user.setUserPhone("010-000-0000");

		//logger.trace("유저 조인 : " + st.join(user));
		//logger.trace("유저 로그인 : " + st.login(user));
		//logger.trace("유저 수정 : " + st.updateUser(user));
		//logger.trace("유저 삭제 : "
		//		+ st.leave(user.getUserId(), user.getUserPass()));

		
		
		/*ReviewService reviewSt = ctx.getBean(ReviewService.class);
		logger.trace("review service : " + reviewSt);
		Restaurant restaurant = new Restaurant();
		Loc loc = new Loc();
		loc.setLocName("성남");
		restaurant.setResNo(2);
		restaurant.setResName("VIPS");
		restaurant.setResNumber("010-000-0000");
		restaurant.setResScore(5);
		restaurant.setResLoc("경기도 성남시");
		restaurant.setResContent("많이오세요");
		restaurant.setUsers(user);
		restaurant.setResImg("noimage.jsp");
		restaurant.setLoc(loc);
		restaurant.setResKind("피자");
		
		Review review = new Review();
		review.setRestaurant(restaurant);
		review.setReviewScore(5);
		review.setReviewContent("맛있어요!");
		review.setUsers(user);
		review.setReviewNo(8);*/
		//logger.trace("리뷰 작성 : "+reviewSt.createReview(review));
		//logger.trace("리뷰 검색 : "+reviewSt.getReviewByReviewNo(8));
		//logger.trace("리뷰 수정 : "+reviewSt.updateReview(review));
		//logger.trace("리뷰 삭제 : "+reviewSt.deleteReview(review));
	}

}
