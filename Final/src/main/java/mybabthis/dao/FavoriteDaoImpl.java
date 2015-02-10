package mybabthis.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import mybabthis.entity.Favorite;
import mybabthis.entity.Restaurant;

@Repository
public class FavoriteDaoImpl implements FavoriteDao{
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewDaoImpl.class);
	}
	String nameSpace = "proj.Mapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int createFavorite(Favorite favorite) {
		String stmt = nameSpace + "createFavorite";
		int result = sqlSession.insert(stmt, favorite);
		return result;
		
	}

	@Override
	public int deleteFavorite(Favorite favorite) {
		String stmt = nameSpace + "deleteFavorite";
		return sqlSession.delete(stmt, favorite);
	}



	@Override
	public List<Integer> getFavoriteByUserId(String userId) {
		String stmt = nameSpace + "selectFavoriteByUserId";
		return sqlSession.selectList(stmt,userId);
	}

	@Override
	public List<Restaurant> getResByJoin(Favorite favorite) {
		String stmt = nameSpace + "selectResByResNo";
		return sqlSession.selectList(stmt,favorite);
	}

	@Override
	public int validationCheck(Favorite favorite) {
		String stmt=nameSpace + "validationCheck";
		return sqlSession.selectOne(stmt, favorite);
	}

}
