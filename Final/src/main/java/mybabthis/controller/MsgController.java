package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Msg;
import mybabthis.entity.Users;
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
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Controller
@RequestMapping(value = "/msg")
public class MsgController {

	static final Logger logger = LoggerFactory.getLogger(MsgController.class);

	@Autowired
	MsgService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String msg(Model model) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
		Users user=(Users)(session.getAttribute("loginUser"));
		
		List<Msg> sendMsgs = service.selectMsgBySender(user.getUserId());
		List<Msg> receiveMsgs = service.selectMsgByReceiver(user.getUserId());
		
		model.addAttribute("sendMsgs", sendMsgs);
		model.addAttribute("receiveMsgs", receiveMsgs);
		return "msg/msg";
	}

	

	// 쪽지보내기
	@RequestMapping(value = "/send", params = { "receiver" }, method = RequestMethod.GET)
	public String enterSendMsg(@RequestParam String receiver, Model model) {
		model.addAttribute("receiver", receiver);
		model.addAttribute("msg", new Msg());
		
		return "msg/msg_send";
	}

	@RequestMapping(value = "/sended", method = RequestMethod.POST)
	public String afterSendedMsg(@ModelAttribute("msg") Msg msg) {
		service.sendMsg(msg);
		return "redirect:/msg/main";
	//return "msg/create";
	
	}

	// 신고하기
	@RequestMapping(value = "/sendReport", params = { "writeType","warnNo" }, method = RequestMethod.GET)
	public String enterSendReport(@RequestParam String writeType, String warnNo , Model model) {
		model.addAttribute("writeType", writeType);
		model.addAttribute("warnNo", warnNo);
		model.addAttribute("msg", new Msg());
		return "msg/report_send";
	}

	@RequestMapping(value = "/sendedReport", method = RequestMethod.POST)
	public String afterSendRepor(@ModelAttribute("msg") Msg msg) {
		service.sendReport(msg);
		return "redirect:/msg/reportList";
	}

	// 보낸쪽지함
	@RequestMapping(value = "/sendList", method = RequestMethod.GET)
	public String getSendList(Model model) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
		Users user=(Users)(session.getAttribute("loginUser"));
		
		List<Msg> sendMsgs = service.selectMsgBySender(user.getUserId());
		model.addAttribute("sendMsgs", sendMsgs);
		return "msg/send_list";
	}

	// 받은쪽지함
	@RequestMapping(value = "/receiveList", method = RequestMethod.GET)
	public String getReceiveList(Model model) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
		Users user=(Users)(session.getAttribute("loginUser"));
		
		List<Msg> receiveMsgs = service.selectMsgByReceiver(user.getUserId());
		model.addAttribute("receiveMsgs", receiveMsgs);
		return "msg/receive_list";
	}

	
	// 신고함
	// 얘는 admin만 권한 줘야함
	@RequestMapping(value = "/reportList", method = RequestMethod.GET)
	public String getReportList(Model model) {
		List<Msg> msgs = service.selectReport();
		model.addAttribute("msgs", msgs);
		return "msg/report_list";
	}

	// 리스트 필요함 - 받은쪽지, 보낸쪽지, 신고쪽지

	/*
	 * 메시지컨트롤러에서
	 * 
	 * 처리할것들이,,,,,
	 * 
	 * 입력하는건 쪽지보내기,
	 * 
	 * 신고하기,
	 * 
	 * 리스트 출력하는건 받은 쪽지 읽어오기, 보낸쪽지 읽어오기,
	 * 
	 * 신고읽어오기,
	 */

}
