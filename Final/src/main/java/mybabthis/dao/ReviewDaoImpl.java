package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Review;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		int result = sqlSession.insert(stmt, review);
		return result;
	}

	@Override
	public int updateReview(Review review) {
		String stmt = nameSpace + "updateReview";
		return sqlSession.update(stmt, review);
	}

	@Override
	public int deleteReview(int reviewNo) {
		String stmt = nameSpace + "deleteReview";
		return sqlSession.delete(stmt, reviewNo);
	}

	@Override
	public Review getReviewByReviewNo(int reviewNo) {
		String stmt = nameSpace + "selectReviewByReviewNo";
		Review result =null;
		result = sqlSession.selectOne(stmt, reviewNo);
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
	
	@Override
	public float getAverageScore(int resNo){
		String stmt = nameSpace+ "selectAvgScoreByResNo";
		return sqlSession.selectOne(stmt, resNo);
	}

}
