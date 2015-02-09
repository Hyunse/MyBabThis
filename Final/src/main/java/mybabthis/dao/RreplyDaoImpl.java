package mybabthis.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybabthis.entity.Review;
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
		String stmt = nameSpace + "createRreply";
		int result = sqlSession.insert(stmt, reply);
		return result;
		
		
	}

	@Override
	public int updateRreply(Rreply reply) {
		String stmt = nameSpace + "updateRreply";
		return sqlSession.update(stmt, reply);
	}

	@Override
	public int deleteRreply(int rreplyNo) {
		String stmt = nameSpace + "deleteRreply";
		return sqlSession.delete(stmt, rreplyNo);
	}

	

	@Override
	public List<Rreply> getRreplyByResNo(int resNo) {
		String stmt = nameSpace + "selectRreplyByResNo";
		return sqlSession.selectList(stmt, resNo);
	}

	@Override
	public Rreply getRreplyByRreply(int rreplyNo) {
		String stmt = nameSpace + "selectRreplyByRreplyNo";
		Rreply result =null;
		result = sqlSession.selectOne(stmt, rreplyNo);
		return result;
	}

}
