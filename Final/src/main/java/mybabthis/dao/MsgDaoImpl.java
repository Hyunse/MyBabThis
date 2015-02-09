package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Msg;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MsgDaoImpl implements MsgDao{
	static final Logger logger = LoggerFactory.getLogger(MsgDaoImpl.class);

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String nameSpace="mybabthis.mappers.MsgMapper.";
	
	
	@Override
	public int sendMsg(Msg msg) {
		logger.trace("쪽지쓰기 시도");
		String stmt=nameSpace+"sendMsg";
		int result=sqlSession.update(stmt,msg);
		return result;
		
	}

	@Override
	public int sendReport(Msg msg) {
		logger.trace("쪽지쓰기 시도");
		String stmt=nameSpace+"sendReport";
		int result=sqlSession.update(stmt,msg);
		return result;
	}

	@Override
	public int deleteMsg(int msgNo) {
		logger.trace("쪽지 삭제 시도");
		String stmt=nameSpace+"deleteMsg";
		int result=sqlSession.update(stmt,msgNo);
		return result;
		
	}

	@Override
	public List<Msg> selectMsgByReceiver(String receiver) {
		logger.trace("쪽지불러오기 받은사람-"+receiver +" 시도");
		String stmt = nameSpace +"selectMsgByReceiver";
		List<Msg> result=sqlSession.selectList(stmt,receiver);
		return result;
	}
	
	

	@Override
	public List<Msg> selectMsgBySender(String sender) {
		logger.trace("쪽지불러오기 보낸사람-"+sender +" 시도");
		String stmt = nameSpace +"selectMsgBySender";
		List<Msg> result=sqlSession.selectList(stmt,sender);
		return result;
	}

	@Override
	public List<Msg> selectReport() {
		logger.trace("신고 불러오기");
		String stmt = nameSpace +"selectReport";
		List<Msg> result=sqlSession.selectList(stmt);
		return result;
	}
	
	

}
