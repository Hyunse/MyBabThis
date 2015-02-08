package mybabthis.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mybabthis.dao.RreplyDao;

import mybabthis.entity.Rreply;

@Service
public class RreplyServiceImpl implements RreplyService {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewServiceImpl.class);
	}

	@Autowired
	RreplyDao dao;

	@Override
	public int createRreply(Rreply reply) {
		int result = dao.createRreply(reply);
		return result;
	}

	@Override
	public int updateRreply(Rreply reply) {
		int result = dao.updateRreply(reply);
		return result;
	}

	@Override
	public int deleteRreply(Rreply reply) {

		int result= dao.deleteRreply(reply);
		return result;
	}

	@Override
	public List<Rreply> getRreplyByResNo(int resNo) {
		List<Rreply> result = dao.getRreplyByResNo(resNo);
		return result;
	
	}

}
