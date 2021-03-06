package mybabthis.dao;

import java.util.List;
import mybabthis.entity.Board;


public interface BoardDao {
	
	int createBoard(Board board); 		// 게시글 생성

	int updateBoard(Board board); 		// 게시글 수정

	int deleteBoard(int board); 		// 게시글 삭제
	
	Board getBoardByNo(int boardNo); 		// 게시글 번호로 조회

	List<Board> getAllBoard();			// 게시글 모두 조회 (게시판)
	
	List<Board> getBoardByFree(String boardType);	// 자유게시판의 게시글을 조회
	
	List<Board> getBoardByMeeting(String boardType);	// 번개모임의 게시글을 조회

	List<Board> getBoardByPage(int page);	// 페이지 단위로 게시글 조회

	int getAllPageNumInMeeting();
	
	int getAllPageNumInBoard(); 
	
	List<Board> selectAllCommentInBoard(int page); // 자유게시판 페이지별 리스트
	
	List<Board> selectAllCommentInMeeting(int page); // 미팅게시판 페이지별 리스트
}
