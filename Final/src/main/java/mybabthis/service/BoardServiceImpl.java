package mybabthis.service;

import java.util.ArrayList;
import java.util.List;

import mybabthis.dao.BoardDao;
import mybabthis.entity.Board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	}
	
	@Autowired
	BoardDao dao;

	@Override
	public int write(Board board) {
		int result = dao.createBoard(board);
		return result;
	}

	@Override
	public int updateBoard(Board board) {
		int result = dao.updateBoard(board);
		return result;
	}

	@Override
	public int delete(int boardNo) {
		int result = dao.deleteBoard(boardNo);
		return result;
	}
	
	@Override
	public Board viewBoardByNo(int boardNo) {
		Board result = dao.getBoardByNo(boardNo);
		return result;
	}

	@Override
	public List<Board> viewAllBoard() {
		List<Board> result = dao.getAllBoard();
		return result;
	}

	@Override
	public List<Board> viewBoardByPage(int page) {
		List<Board> result = dao.getBoardByPage(page);
		return result;
	}

	@Override
	public List<Board> viewBoardByFree(String boardType) {
		List<Board> result = dao.getBoardByFree(boardType);
		return result;
	}

	@Override
	public List<Board> viewBoardByMeeting(String boardType) {
		List<Board> result = dao.getBoardByMeeting(boardType);
		return result;
	}

	@Override
	public int getAllPageNum() {
		int page = 0;

		page = dao.getAllPageNum();
		return  ((page - 1) / 10) + 1;
	}

	@Override
	public List<Board> getAllComment(int page) {
		
		ArrayList<Board> list = null;

		list = (ArrayList<Board>)dao.selectAllCommentInMeeting(page);

		ArrayList<Board> sublist = new ArrayList<Board>();

		for (int pNum = (10 * (page - 1)); (pNum < 10 * page) && (pNum < list.size()); pNum++) {
			sublist.add(list.get(pNum));
		}
		return sublist;
	}

	
	

}
