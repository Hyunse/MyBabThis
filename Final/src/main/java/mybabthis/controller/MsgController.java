package mybabthis.controller;

import mybabthis.entity.Msg;
import mybabthis.service.MsgService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/msg")
public class MsgController {
	
	static final Logger logger = LoggerFactory.getLogger(MsgController.class);
	
	@Autowired
	MsgService service;
	
	@RequestMapping(value="/send",params={"receiver"},method=RequestMethod.GET)
	public String sendMsg(@RequestParam String receiver, Model model){
		model.addAttribute("receiver",receiver);
		model.addAttribute("msg", new Msg());
		return "msg/msg_send";
	}
	
	@RequestMapping(value="/sended",method=RequestMethod.POST)
	public String sendMsg(@ModelAttribute("msg") Msg msg){
		service.sendMsg(msg);
		return "msg/msg_send";
	}
	
	
	/*메시지컨트롤러에서

	처리할것들이,,,,,
	
	입력하는건
	쪽지보내기,
	
	신고하기,	
	
	리스트 출력하는건
	받은 쪽지 읽어오기,
	보낸쪽지 읽어오기,
	
	신고읽어오기,
	*/
	
	

}
