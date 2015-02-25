package mybabthis.controller;

import mybabthis.entity.Users;
import mybabthis.service.MailService;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MailController {
	
	private final static Logger logger;

	static {
		logger = LoggerFactory.getLogger(MailController.class);
	}
    /*public static void main( String[] args )
    {
    	ApplicationContext context = 
             new ClassPathXmlApplicationContext("spring/application-config.xml");
 
    	MailService mm = (MailService) context.getBean("mailMail");
       	System.out.println("mm :" + mm);
    	mm.sendMail("anzmf00@gmail.com",
    		   "anzmf00@gmail.com",
    		   "Testing123", 
    		   "Testing only \n\n Hello Spring Email Sender");
 
    }*/
    @Autowired
    MailService mailservice;
    
    @Autowired
    UserService userservcie;
    
    @RequestMapping(value = "/email" ,method = RequestMethod.GET)
	public String enterEmail() {
		
		
			return "email/email_enter";
		}
    
    @RequestMapping(value = "/email/search", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public @ResponseBody String mailAjax(@RequestParam String email) {
		logger.trace("-------------------------------------------------------------------------------");
		
		Users user = userservcie.searchUserEmail(email);
		
		if (user != null) {
			logger.trace("----------------------등록된 이메일");
			mailservice.sendMail("anzmf00@gmail.com",
		    		   email,
		    		   	"아이디/비밀번호 확인 메일", 
		    		   "안녕하세요! 오늘,맛집,성공적 입니다. 고객님이 잊어버린 아이디와 비밀번호 입니다. <br><br> 아이디  :  "
		    		   	+ user.getUserId() + "     비번  :  "+ user.getUserPass());
			
			return "등록된 이메일 입니다.";
			  
		}
		logger.trace("----------------------등록되지 않는 이메일");
		return "등록되지 않는 이메일 입니다.";
	}
}
