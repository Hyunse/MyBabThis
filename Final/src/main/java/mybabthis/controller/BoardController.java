package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Board;
import mybabthis.entity.Breply;
import mybabthis.service.BoardService;
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
@RequestMapping(value = "/board")
public class BoardController {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(BoardController.class);
	}

	@Autowired
	BoardService boardService;
	@Autowired
	BreplyService breplyService;
	
	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public String writeBoard(@ModelAttribute("boardInfo") Board board) {	// 새로 입력한 게시글 정보

		boardService.write(board);

		
		return "redirect:list";

	}

	/** 
	 * 자유게시판 글 목록보기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String enterBoard(@ModelAttribute("boardInfo") Board board, Model model) {
		List<Board> list = null;

		list = boardService.viewBoardByFree(board.getBoardType());
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
		Board board = boardService.viewBoardByNo(boardNo);
		List<Breply> breplys = breplyService.getBreplyByBoardNo(boardNo);
		model.addAttribute("boardDetail", board);
		model.addAttribute("breplys", breplys);
		model.addAttribute("breply", new Breply());
		logger.trace("게시글 정보 : " + board.toString());
		return "board/board_detail";
	}
	
	
	/**
	 * 게시판 글 작성하기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String enterBoardByNo(Model model) {
		Board board = new Board();
		board.setBoardType("F");
		model.addAttribute("boardInfo", board);
		return "board/board_write";
	}
	
	/**
	 * 게시판 수정화면으로 이동
	 * @param boardNo
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/update",  method=RequestMethod.GET, params={"boardNo"})
	public String goEditBoard(@RequestParam int boardNo, Model model){
		
		Board board = boardService.viewBoardByNo(boardNo);
		model.addAttribute("editBoard",board);
		
		return "/board/board_edit";
	}
	
	/**
	 * 게시판 수정하기
	 * @param board
	 * @return
	 */
	@RequestMapping(value="/edit", params="_event_edit", method=RequestMethod.POST)
	public String editBoard(@ModelAttribute("editBoard") Board board){
		
		boardService.updateBoard(board);
		
		return "redirect:/board/list";
	}

	/**
	 * 게시판 삭제하기
	 * @param board
	 * @return
	 */
	@RequestMapping(value="/edit", params="_event_delete", method=RequestMethod.POST)
	public String deleteBoard(@ModelAttribute("editBoard") Board board){
		
		boardService.delete(board.getBoardNo());
		logger.trace("번호: " +board.getBoardNo());
		return "redirect:/board/list";
	}
}
