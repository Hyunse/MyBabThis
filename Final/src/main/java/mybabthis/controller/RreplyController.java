package mybabthis.controller;

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


@Controller
public class RreplyController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(RreplyController.class);
	}
	@Autowired
	RreplyService service;
	
	//작성폼
		@RequestMapping(value="/rreply/write", method=RequestMethod.GET, params={"resNo"})
		public String redirToRreplyForm(@RequestParam int resNo, Model model){
			Rreply rreply = new Rreply();
			rreply.setResNo(resNo);
			model.addAttribute("rreply", rreply);
			return "rreply/write";
		}
		
		
		//작성하기
		@RequestMapping(value="/rreply/write",  method=RequestMethod.POST)
		public String write(@ModelAttribute("rreply") Rreply rreply){
			service.createRreply(rreply);
			return "redirect:/restaurant/view?resNo="+rreply.getResNo();
		}
		
	
/*		//리스트
		@RequestMapping(value="/rreply/list", method=RequestMethod.GET, params={"resNo"})
		public String getRreplyByResNo(@RequestParam int resNo, Model model){
			logger.error("나오나?1");
			List<Rreply> rreplys = service.getRreplyByResNo(resNo);
			logger.error("나오나?2:"+rreplys);
			model.addAttribute("rreplys", rreplys);
			return "redirect:/restaurant/view?resNo="+resNo;
		}*/
		
	
		//수정폼으로
		@RequestMapping(value="/rreply/edit", method=RequestMethod.GET,  params={"rreplyNo"})
		public String edit(@RequestParam int rreplyNo, Model model){
			Rreply rreply = service.getRreplyByRreplyNo(rreplyNo);  
			model.addAttribute("rreply",rreply );
			return "rreply/edit";
		}
		
		
		//수정하기
		@RequestMapping(value="/rreply/update", method=RequestMethod.POST)
		public String update(@ModelAttribute("rreply") Rreply rreply){
			service.updateRreply(rreply);
			return "redirect:/restaurant/view?resNo="+rreply.getResNo();
		}
		
		//삭제하기
		@RequestMapping(value="/rreply/delete",  method=RequestMethod.GET,  params={"rreplyNo", "resNo"})
		public String delete(@RequestParam int rreplyNo, int resNo, Model model){
			service.deleteRreply(rreplyNo);
			return "redirect:/restaurant/view?resNo="+resNo;
		}
		
		
	
	
}
