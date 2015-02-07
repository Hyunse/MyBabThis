package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Board;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDaoImpl implements BoardDao {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(BoardDaoImpl.class);
	}
	
	String nameSpace = "mybabthis.mappers.BoardMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * 게시글 생성
	 */
	@Override
	public int createBoard(Board board) {
		String stmt = nameSpace + "createBoard";
		int result = sqlSession.selectOne(stmt, board);
		return result;
	}

	/**
	 * 게시글 수정
	 */
	@Override
	public int updateBoard(Board board) {
		String stmt = nameSpace + "updateBoard";
		int result = sqlSession.update(stmt, board);
		return result;
	}

	/** 
	 * 게시글 삭제
	 */
	@Override
	public int deleteBoard(int boardNo) {
		String stmt = nameSpace + "deleteBoard";
		int result = sqlSession.update(stmt, boardNo);
		return result;
	}

	/**
	 * 모든 게시글 조회
	 */
	@Override
	public List<Board> getAllBoard() {
		String stmt = nameSpace + "selectAllBoard";
		List<Board> result = sqlSession.selectList(stmt);
		return result;
	}

	/** 
	 * 페이지 단위로 게시글 조회 ->  모든 게시글 조회한 후에.....
	 */
	@Override
	public List<Board> getBoardByPage(int page) {
		String stmt = nameSpace + "selectBoardByPage";
		List<Board> result = sqlSession.selectList(stmt, page);
		return result;
	}

}
