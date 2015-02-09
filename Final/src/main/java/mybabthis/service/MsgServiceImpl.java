package mybabthis.service;

import java.util.List;

import mybabthis.dao.MsgDao;
import mybabthis.entity.Msg;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MsgServiceImpl implements MsgService {

	static final Logger logger = LoggerFactory.getLogger(MsgServiceImpl.class);
	
	@Autowired
	MsgDao dao;
	
	
	@Override
	public int sendMsg(Msg msg) {
		int result = dao.sendMsg(msg);
		return result;
		
	}

	@Override
	public int sendReport(Msg msg) {
		int result = dao.sendReport(msg);
		return result;
	}

	@Override
	public int deleteMsg(int msgNo) {
		int result=dao.deleteMsg(msgNo);
		return result;
	}

	@Override
	public List<Msg> selectMsgByReceiver(String receiver) {
		List<Msg> result=dao.selectMsgByReceiver(receiver);
		return result;
		
		
	}

	@Override
	public List<Msg> selectMsgBySender(String sender) {
		List<Msg> result=dao.selectMsgBySender(sender);
		return result;
	}

	@Override
	public List<Msg> selectReport() {
		List<Msg> result=dao.selectReport();
		return result;
	}

}
