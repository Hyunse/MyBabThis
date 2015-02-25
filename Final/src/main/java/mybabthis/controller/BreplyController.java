package mybabthis.controller;


import mybabthis.entity.Breply;
import mybabthis.entity.Users;
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
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class BreplyController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(BreplyController.class);
	}
	@Autowired
	BreplyService service;
	
	//작성폼k;
		@RequestMapping(value="/breply/write", method=RequestMethod.GET)
		public String redirToBreplyForm(Model model){
			model.addAttribute("breply", new Breply());
			return "breply/write";
		}
		
		
		//작성하기
		@RequestMapping(value="/breply/write", params="breply_write", method=RequestMethod.POST)
		public String write(@ModelAttribute("breply") Breply breply){
			service.createBreply(breply);
			return "redirect:/board/detail?boardNo="+breply.getBoardNo();
		}
		
		
		//리스트로가기
		@RequestMapping(value="/breply/list", method=RequestMethod.GET, params={"boardNo"})
		public String getRreplyByBoardNo(@RequestParam int boardNo, Model model){
			return "redirect:/board/detail?boardNo="+boardNo;
		}
		
	
/*		//수정폼으로
		@RequestMapping(value="/breply/edit", method=RequestMethod.GET,  params={"breplyNo"})
		public String edit(@RequestParam int breplyNo, Model model){
			Breply breply = service.getBreplyByBreplyNo(breplyNo);  
			model.addAttribute("breply",breply );
			return "breply/edit";
		}
		*/
		
			
		//수정하기
		@RequestMapping(value="/breply/update", params="breply_update", method=RequestMethod.POST)
		public String update(@ModelAttribute("breply") Breply breply){
			service.updateBreply(breply);
			return "redirect:/board/detail?boardNo="+breply.getBoardNo();
		}
		
		//삭제하기
		@RequestMapping(value="/breply/delete",  method=RequestMethod.GET,  params={"breplyNo", "boardNo"})
		public String delete(@RequestParam int breplyNo, int boardNo, Model model){
			service.deleteBreply(breplyNo);
			return "redirect:/board/detail?boardNo="+boardNo;
		}
		
		
	
	
}
