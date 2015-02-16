package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Board;
import mybabthis.service.BoardService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminJqgridBoardController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminJqgridBoardController.class);
	}

	@Autowired
	BoardService boardService;

	//페이지 불러오기
	@RequestMapping(value = "/admin/Board", method = RequestMethod.GET)
	public String goPage() {
		return "admin/admin_board_jqgrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/admin/Board/getList")
	@ResponseBody
	public List<Board> selectList(HttpServletRequest request, HttpSession session) throws Exception {
		return boardService.viewAllBoard();
	}
	
	//DELETE restaurant
	@RequestMapping(value = "/admin/Board/deleteOne", method = RequestMethod.POST)
	public String deleteBoard(@RequestParam String oper, int id) {
		boardService.delete(id);
		return "admin/admin_board_jqgrid";
	}
}
