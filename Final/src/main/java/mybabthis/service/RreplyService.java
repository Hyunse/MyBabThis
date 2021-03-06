package mybabthis.service;

import java.util.List;

import mybabthis.entity.Review;
import mybabthis.entity.Rreply;


public interface RreplyService {

	int createRreply(Rreply reply); 
	int updateRreply(Rreply reply); 
	int deleteRreply(int rreplyNo);
	List<Rreply> getRreplyByResNo(int resNo);
	Rreply getRreplyByRreplyNo(int rreplyNo); 
	List<Rreply> getAllRreply();
}
