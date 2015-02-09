package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Board;
import mybabthis.service.BoardService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/meeting")
public class MeetingController {
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(MeetingController.class);
	}

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public String writeBoard(@ModelAttribute("boardInfo") Board board) {	// 새로 입력한 게시글 정보
		// 에러처리

		boardService.write(board);		
		return "redirect:meeting/list";		

	}

	

	/** 
	 * 번개모임 글 목록보기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String enterMeeting(Model model) {
		List<Board> list = null;
		
		// 타입이 M인거 불러오기
		list = boardService.viewAllBoard();
		model.addAttribute("boardList", list);
		logger.trace("GoBoard : " + list);
		
		return "meeting/meeting_list";

	}

}
