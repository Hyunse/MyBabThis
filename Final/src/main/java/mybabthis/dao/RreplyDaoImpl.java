package mybabthis.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybabthis.entity.Rreply;
@Repository
public class RreplyDaoImpl implements RreplyDao {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewDaoImpl.class);
	}
	String nameSpace = "proj.Mapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int createRreply(Rreply reply) {
		String stmt = nameSpace + "createReview";
		logger.trace("나오나");
		int result = sqlSession.insert(stmt, reply);
		logger.trace("나오나"+result);
		return result;
		
		
	}

	@Override
	public int updateRreply(Rreply reply) {
		String stmt = nameSpace + "updateRreply";
		return sqlSession.update(stmt, reply);
	}

	@Override
	public int deleteRreply(Rreply reply) {
		String stmt = nameSpace + "deleteRreply";
		return sqlSession.delete(stmt, reply);
	}

	

	@Override
	public List<Rreply> getRreplyByResNo(int resNo) {
		String stmt = nameSpace + "selectRreplyByResNo";
		return sqlSession.selectList(stmt, resNo);
	}

}
