package simple.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import simple.entity.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewDaoImpl.class);
	}
	String nameSpace = "simple.mappers.ReviewMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int createReview(Review review) {
		String stmt = nameSpace + "createReview";
		logger.trace("나오나");
		int result = sqlSession.insert(stmt, review);
		logger.trace("나오나"+result);
		return result;
	}

	@Override
	public int updateReview(Review review) {
		String stmt = nameSpace + "updateReview";
		return sqlSession.update(stmt, review);
	}

	@Override
	public int deleteReview(Review review) {
		String stmt = nameSpace + "deleteReview";
		return sqlSession.delete(stmt, review);
	}

	@Override
	public Review getReviewByReviewNo(int reviewNo) {
		String stmt = nameSpace + "selectReviewByReviewNo";
		logger.trace("daoImpl : 전");
		Review result = sqlSession.selectOne(stmt, reviewNo);
		logger.trace("daoImpl : 후");
		return result;
	}

	@Override
	public List<Review> getReviewByResNo(int resNo) {
		String stmt = nameSpace + "selectReviewByResNo";
		return sqlSession.selectList(stmt, resNo);
	}

	@Override
	public List<Review> getReviewByUserId(String userId) {
		String stmt = nameSpace + "selectReviewByUserId";
		return sqlSession.selectList(stmt, userId);
	}

	@Override
	public List<Review> getAllReview() {
		String stmt = nameSpace + "selectAllReview";
		return sqlSession.selectList(stmt);
	}

}
