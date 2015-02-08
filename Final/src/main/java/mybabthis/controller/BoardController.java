package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Board;
import mybabthis.entity.Users;
import mybabthis.service.BoardService;

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
@SessionAttributes("logUser")
@RequestMapping(value = "/board")
public class BoardController {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(BoardController.class);
	}

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public String writeBoard(@ModelAttribute("boardInfo") Board board) {	// 새로 입력한 게시글 정보
		
		if(board.getBoardContent() != null) {
			boardService.write(board);
		} else {
			logger.error("내용을 입력해주세요");
		}
		
		return "redirect:list";

	}

	/** 
	 * 게시글 목록보기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String enterBoard(Model model) {
		List<Board> list = null;

		list = boardService.viewAllBoard();
		model.addAttribute("boardList", list);
		logger.trace("GoBoard : " + list);
		
		return "board/board_list";

	}
	
	/**
	 * 선택한 게시글 내용 보기
	 * @param boardNo
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/detail", method = RequestMethod.GET, params={"boardNo"})
	public String enterBoardByNo(@RequestParam int boardNo, Model model) {
		Board board = null;

		board = boardService.viewBoardByNo(boardNo);
		model.addAttribute("boardDetail", board);
		logger.trace("게시글 정보 : " + board.toString());
		
		return "board/board_detail";
	}
	
	
	/**
	 * 게시글 작성하기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String enterBoardByNo(Model model) {
		model.addAttribute("boardInfo", new Board());
		return "board/board_write";
	}
	
}
