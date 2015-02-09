package mybabthis.dao;




import java.util.List;




import mybabthis.entity.Breply;


public interface BreplyDao {

	int createBreply(Breply reply); // 맛집 댓글 생성
	int updateBreply(Breply reply); // 맛집 댓글수정
	int deleteBreply(int breplyNo); // 맛집 댓글 삭제
	List<Breply> getBreplyByBoardNo(int boardNo);//자유게시판 아이디로 댓글리스트 가져오기 
	Breply getBreplyByBreplyNo(int breplyNo);//댓글 아이디로 댓글리스트 가져오기 
}
