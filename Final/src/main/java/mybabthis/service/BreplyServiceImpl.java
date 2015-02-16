package mybabthis.service;

import java.util.List;

import mybabthis.dao.BreplyDao;
import mybabthis.entity.Breply;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BreplyServiceImpl implements BreplyService {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewServiceImpl.class);
	}

	@Autowired
	BreplyDao dao;

	@Override
	public int createBreply(Breply reply) {
		int result = dao.createBreply(reply);
		return result;
	}

	@Override
	public int updateBreply(Breply reply) {
		int result = dao.updateBreply(reply);
		return result;
	}

	@Override
	public int deleteBreply(int breply) {

		int result= dao.deleteBreply(breply);
		return result;
	}

	@Override
	public List<Breply> getBreplyByBoardNo(int boardNo) {
		List<Breply> result = dao.getBreplyByBoardNo(boardNo);
		return result;
	}

	@Override
	public Breply getBreplyByBreplyNo(int breplyNo) {
		Breply result = dao.getBreplyByBreplyNo(breplyNo);
		return result;
	}
	
	@Override
	public List<Breply> getAllBreply() {
		List<Breply> result = dao.getAllBreply();
		return result;
	}

}
