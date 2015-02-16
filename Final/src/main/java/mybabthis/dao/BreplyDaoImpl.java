package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Breply;
import mybabthis.entity.Rreply;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class BreplyDaoImpl implements BreplyDao {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewDaoImpl.class);
	}
	String nameSpace = "proj.Mapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int createBreply(Breply reply) {
		String stmt = nameSpace + "createBreply";
		int result = sqlSession.insert(stmt, reply);
		return result;
		
		
	}

	@Override
	public int updateBreply(Breply reply) {
		String stmt = nameSpace + "updateBreply";
		return sqlSession.update(stmt, reply);
	}

	@Override
	public int deleteBreply(int breplyNo) {
		String stmt = nameSpace + "deleteBreply";
		return sqlSession.delete(stmt, breplyNo);
	}
	

	@Override
	public List<Breply> getBreplyByBoardNo(int boardNo) {
		logger.trace("여기 : "+boardNo);
		String stmt = nameSpace + "selectBreplyByBoardNo";
		return sqlSession.selectList(stmt, boardNo);
	}

	@Override
	public Breply getBreplyByBreplyNo(int breplyNo) {
		String stmt = nameSpace + "selectBreplyByBreplyNo";
		Breply result =null;
		result = sqlSession.selectOne(stmt, breplyNo);
		return result;
	}

	@Override
	public List<Breply> getAllBreply() {
		String stmt = nameSpace + "selectAllBoard";
		return sqlSession.selectList(stmt);
	}

}
