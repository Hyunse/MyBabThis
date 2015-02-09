package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Rreply;
import mybabthis.service.RreplyService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("rreply")
public class RreplyController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(RreplyController.class);
	}
	@Autowired
	RreplyService service;
	
	//작성폼
		@RequestMapping(value="/rreply/write", method=RequestMethod.GET)
		public String redirToRreplyForm(Model model){
			model.addAttribute("rreply", new Rreply());
			return "rreply/write";
		}
		
		
		//작성하기
		@RequestMapping(value="/rreply/write", params="rwrite", method=RequestMethod.POST)
		public String write(@ModelAttribute("rreply") Rreply rreply){
			logger.trace("됫나");
			service.createRreply(rreply);
			return "redirect:/rreply/list?resNo="+rreply.getResNo();
		}
		
		
		//리스트
		@RequestMapping(value="/rreply/list", method=RequestMethod.GET, params={"resNo"})
		public String getRreplyByResNo(@RequestParam int resNo, Model model){
			List<Rreply> rreplys = service.getRreplyByResNo(resNo);
			model.addAttribute("rreplys", rreplys);
			return "rreply/list";
		}
	
}