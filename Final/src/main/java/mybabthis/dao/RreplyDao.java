package mybabthis.dao;




import java.util.List;



import mybabthis.entity.Review;
import mybabthis.entity.Rreply;

public interface RreplyDao {

	int createRreply(Rreply reply); // 맛집 댓글 생성
	int updateRreply(Rreply reply); // 맛집 댓글수정
	int deleteRreply(Rreply reply); // 맛집 댓글 삭제
	List<Rreply> getRreplyByResNo(int resNo);//맛집게시판 아이디로 댓글리스트 가져오기 
	Rreply getRreplyByRreply(int rreplyNo);//댓글 아이디로 댓글리스트 가져오기 
}
