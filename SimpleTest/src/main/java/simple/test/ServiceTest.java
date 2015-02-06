package simple.test;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import simple.entity.Users;
import simple.service.UserService;

public class ServiceTest {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ServiceTest.class);
	}
	

	
	
	public static void main(String[] args) {
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		UserService st = ctx.getBean(UserService.class);
		logger.trace("service : " + st);
		
	Users user = new Users();
		
		user.setUserEmail("simsim@gom.net");
		user.setUserGender("1");
		user.setUserPass("12");
		user.setUserId("a");
		user.setUserName("Kim");
		user.setUserPhone("010-000-0000");

		logger.trace("유저 조인 : " +st.join(user));
		
		logger.trace("유저 로그인 : " + st.login(user));
		
		logger.trace("유저 수정 : " + st.updateUser(user));
		
		logger.trace("유저 삭제 : " + st.leave(user.getUserId(), user.getUserPass()));
	}
	
	
}
