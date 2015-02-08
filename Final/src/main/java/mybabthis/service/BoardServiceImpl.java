package mybabthis.service;

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
	public List<Board> viewAllBoard() {
		List<Board> result = dao.getAllBoard();
		return result;
	}

	@Override
	public List<Board> viewBoardByPage(int page) {
		List<Board> result = dao.getBoardByPage(page);
		return result;
	}
	

}