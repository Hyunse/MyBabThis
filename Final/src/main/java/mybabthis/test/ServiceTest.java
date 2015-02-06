package mybabthis.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ServiceTest {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ServiceTest.class);
	}
	

	
	
	public static void main(String[] args) {
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");

		
	}
	
	
}
