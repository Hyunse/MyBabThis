package mybabthis.service;

import java.util.List;

import mybabthis.entity.Msg;

public interface MsgService {

	int sendMsg(Msg msg);
	int sendReport(Msg msg);
	int deleteMsg(int msgNo);
	
	List<Msg> selectMsgByReceiver(String receiver);
	List<Msg> selectMsgBySender(String sender);
	
	List<Msg> selectReport();

}
