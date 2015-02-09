package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Restaurant;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantDaoImpl implements RestaurantDao {
	static final Logger logger = LoggerFactory
			.getLogger(RestaurantDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String nameSpace="mybabthis.mappers.RestaurantMapper.";

	
	@Override
	public int createRestaurant(Restaurant restaurant) {		
		logger.trace("맛집게시판 게시물 생성 시도");
		String stmt = nameSpace +"createRestaurant";
		int result=sqlSession.update(stmt,restaurant);
		return result;
	}

	@Override
	public int updateRestaurant(Restaurant restaurant) {
		logger.trace("맛집게시판 게시물 수정 시도");
		String stmt = nameSpace +"updateRestaurant";
		int result=sqlSession.update(stmt,restaurant);
		return result;
	}

	@Override
	public int deleteRestaurant(int resNo) {
		logger.trace("맛집게시판 게시물 수정 시도");
		String stmt = nameSpace +"deleteRestaurant";
		int result=sqlSession.update(stmt,resNo);
		return result;
	}

	@Override
	public List<Restaurant> selectRestaurantsByLocation(String locName) {
		logger.trace("맛집게시판 지역-"+locName+" 불러오기 시도");
		String stmt = nameSpace +"selectRestaurantsByLocation";
		List<Restaurant> result=sqlSession.selectList(stmt,locName);
		return result;
	}

	@Override
	public List<Restaurant> selectAllRestuarants() {
		logger.trace("맛집게시판 전체 불러오기 시도");
		String stmt = nameSpace +"selectAllRestaurants";
		List<Restaurant> result=sqlSession.selectList(stmt);
		return result;
	}

	@Override
	public Restaurant selectRestaurantByNo(int resNo) {
		logger.trace("맛집페이지 불러오기 시도 - 맛집번호 : "+resNo);
		String stmt = nameSpace +"selectRestaurantByNo";
		Restaurant result=sqlSession.selectOne(stmt,resNo);
		return result;
	}

	@Override
	public List<Restaurant> selectRestaurantsByResName(String resName) {
		logger.trace("맛집게시판 이름-"+resName+" 불러오기 시도");
		String stmt = nameSpace +"selectRestaurantsByName";
		List<Restaurant> result=sqlSession.selectList(stmt,resName);
		return result;
	}

	
	

}
