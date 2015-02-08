package mybabthis.service;

import java.util.List;

import mybabthis.entity.Rreply;


public interface RreplyService {

	int createRreply(Rreply reply); // 맛집 댓글생성
	int updateRreply(Rreply reply); // Review 맛집 댓글수정
	int deleteRreply(Rreply reply); // Review 맛집 댓글삭제
	List<Rreply> getRreplyByResNo(int resNo);
}
