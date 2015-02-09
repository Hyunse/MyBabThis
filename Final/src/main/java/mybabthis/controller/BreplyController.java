package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Breply;
import mybabthis.entity.Rreply;
import mybabthis.service.BreplyService;

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
@SessionAttributes("breply")
public class BreplyController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(BreplyController.class);
	}
	@Autowired
	BreplyService service;
	
	//작성폼
		@RequestMapping(value="/breply/write", method=RequestMethod.GET)
		public String redirToBreplyForm(Model model){
			model.addAttribute("breply", new Breply());
			return "breply/write";
		}
		
		
		//작성하기
		@RequestMapping(value="/breply/write", params="bwrite", method=RequestMethod.POST)
		public String write(@ModelAttribute("breply") Breply breply){
			logger.trace("됫나");
			service.createBreply(breply);
			return "redirect:/breply/list?boardNo="+breply.getBoardNo();
		}
		
		
		//리스트
		@RequestMapping(value="/breply/list", method=RequestMethod.GET, params={"boardNo"})
		public String getRreplyByBoardNo(@RequestParam int boardNo, Model model){
			List<Breply> breplys = service.getBreplyByBoardNo(boardNo);
			model.addAttribute("breplys", breplys);
			return "breply/list";
		}
		
	
		//수정폼으로
		@RequestMapping(value="/breply/edit", method=RequestMethod.GET,  params={"breplyNo"})
		public String edit(@RequestParam int breplyNo, Model model){
			Breply breply = service.getBreplyByBreplyNo(breplyNo);  
			model.addAttribute("breply",breply );
			return "breply/edit";
		}
		
		
		//수정하기
		@RequestMapping(value="/breply/update", params="_event_confirmed", method=RequestMethod.POST)
		public String update(@ModelAttribute("breply") Breply breply){
			service.updateBreply(breply);
			return "redirect:/breply/list?boardNo="+breply.getBoardNo();
		}
		
		//삭제하기
		@RequestMapping(value="/breply/delete",  method=RequestMethod.GET,  params={"breplyNo", "boardNo"})
		public String delete(@RequestParam int breplyNo, int boardNo, Model model){
			service.deleteBreply(breplyNo);
			return "redirect:/breply/list?boardNo="+boardNo; 
		}
		
		
	
	
}
