package simple.test;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import simple.dao.BoardDao;
import simple.entity.Board;



public class ContextTest {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ContextTest.class);
	}
	
	
	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		DataSource source = ctx.getBean(DataSource.class);
		logger.trace("datasource 확인 : " + source);
		
//		JdbcTemplate temp = ctx.getBean(JdbcTemplate.class);
//		logger.trace("temp : " + temp);
//		
//		BoardDao dao = ctx.getBean(BoardDao.class);
//		Board board = new Board();
//		board.setBoardContent("정발산 ㄱㄱㄱㄱ");
//		board.setBoardTitle("정발산ㄱㄱㄱㄱㄱ");
//		board.setBoardType("F");
//		
//		logger.trace("insert : " + dao.createBoard(board));
		
	}
	
	
}

