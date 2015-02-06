package mybabthis.test;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;



public class ContextTest {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ContextTest.class);
	}
	
	
	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application_config.xml");
		DataSource source = ctx.getBean(DataSource.class);
		logger.trace("datasource 확인 : " + source);
		
	}
	
	
}

