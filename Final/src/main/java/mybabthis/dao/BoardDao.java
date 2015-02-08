package mybabthis.dao;

import java.util.List;
import mybabthis.entity.Board;


public interface BoardDao {
	
	int createBoard(Board board); 		// 게시글 생성

	int updateBoard(Board board); 		// 게시글 수정

	int deleteBoard(int board); 		// 게시글 삭제

	List<Board> getAllBoard();			// 게시글 모두 조회 (게시판)

	List<Board> getBoardByPage(int page);	// 페이지 단위로 게시글 조회

}
