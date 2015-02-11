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

@Controller
@RequestMapping(value = "/meeting")
public class MeetingController {
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(MeetingController.class);
	}

	@Autowired
	BoardService boardService;
	@Autowired
	BreplyService breplyService;

	/**
	 * 번개모임 게시판에 글 작성 확인하기
	 * @param board
	 * @return
	 */
	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public String writeBoard(@ModelAttribute("boardInfo") Board board) {	// 새로 입력한 게시글 정보
		// 에러처리

		boardService.write(board);		
		return "redirect:list";		

	}

	

	/** 
	 * 번개모임 게시판 목록보기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String enterMeeting(@ModelAttribute("boardInfo") Board board, Model model) {
		List<Board> list = null;
		
		// 타입이 M인거 불러오기
		list = boardService.viewBoardByMeeting(board.getBoardType());
		model.addAttribute("boardList", list);
		logger.trace("GoBoard : " + list);
		
		return "meeting/meeting_list";

	}
	
	
	/**
	 * 번개모임 게시판에서 선택한 글 내용 보기
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
		return "meeting/meeting_detail";
	}
	
	
	/**
	 *  번개모임 게시판 글 작성하기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String enterBoardByNo(Model model) {
		Board board = new Board();
		board.setBoardType("M");
		model.addAttribute("boardInfo", board);
		return "meeting/meeting_write";
	}
	
	/**
	 * 번개모임 게시판 수정화면으로 이동
	 * @param boardNo
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/update",  method=RequestMethod.GET, params={"boardNo"})
	public String goEditBoard(@RequestParam int boardNo, Model model){
		
		Board board = boardService.viewBoardByNo(boardNo);
		model.addAttribute("editBoard",board);
		
		return "/meeting/meeting_edit";
	}
	
	@RequestMapping(value="/write", params="breply_write", method=RequestMethod.POST)
	public String write(@ModelAttribute("breply") Breply breply){
		breplyService.createBreply(breply);
		return "redirect:/meeting/detail?boardNo="+breply.getBoardNo();
	}
	
	
	/**
	 * 번개모임 게시판 글 수정하기
	 * @param board
	 * @return
	 */
	@RequestMapping(value="/edit", params="_event_edit", method=RequestMethod.POST)
	public String editBoard(@ModelAttribute("editBoard") Board board){
		
		boardService.updateBoard(board);
		
		return "redirect:/meeting/list";
	}

	/**
	 * 번개모임 게시판 글 삭제하기
	 * @param board
	 * @return
	 */
	@RequestMapping(value="/edit", params="_event_delete", method=RequestMethod.POST)
	public String deleteBoard(@ModelAttribute("editBoard") Board board){
		
		boardService.delete(board.getBoardNo());
		logger.trace("번호: " +board.getBoardNo());
		return "redirect:/meeting/list";
	}

}
