package mybabthis.service;

import java.util.List;
import mybabthis.entity.Board;

public interface BoardService {
	
	int write (Board board);			// 게시글 등록
	
	int updateBoard(Board user);		// 게시글 수정
	
	int delete(int boardNo); 			// 게시글 삭제
	
	List<Board> viewAllBoard(); 		// 게시글 모두 조회
	
	List<Board> viewBoardByPage(int page); // 페이지 별 게시글 조회


}