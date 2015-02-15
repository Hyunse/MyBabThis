package mybabthis.service;

import java.util.List;

import mybabthis.entity.Breply;




public interface BreplyService {

	int createBreply(Breply reply); 
	int updateBreply(Breply reply); 
	int deleteBreply(int breplyNo);
	List<Breply> getBreplyByBoardNo(int boardNo);
	Breply getBreplyByBreplyNo(int breplyNo); 
	List<Breply> getAllBreply();
}
