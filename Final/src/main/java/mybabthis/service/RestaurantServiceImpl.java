package mybabthis.service;

import java.util.List;

import mybabthis.dao.RestaurantDao;
import mybabthis.entity.Restaurant;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImpl implements RestaurantService {

	static final Logger logger = LoggerFactory
			.getLogger(RestaurantServiceImpl.class);
	

	@Autowired
	RestaurantDao dao;
		

	@Override
	public int createRestaurant(Restaurant restaurant) {

		int result=dao.createRestaurant(restaurant);
		return result;
	}

	@Override
	public int updateRestaurant(Restaurant restaurant) {
		int result=dao.updateRestaurant(restaurant);
		return result;
	}

	@Override
	public int deleteRestaurant(int resNo) {
		int result=dao.deleteRestaurant(resNo);
		return result;
	}

	@Override
	public List<Restaurant> selectRestaurantsByLocation(String locName) {
		List<Restaurant> result = dao.selectRestaurantsByLocation(locName);
		return result;
		
	}

	@Override
	public List<Restaurant> selectAllRestuarants() {

		List<Restaurant> result = dao.selectAllRestuarants();
		return result;
	}

	@Override
	public Restaurant selectRestaurantByNo(int resNo) {

		Restaurant result = dao.selectRestaurantByNo(resNo);
		return result;
	}

	@Override
	public List<Restaurant> selectRestaurantsByResName(String resName) {
		List<Restaurant> result = dao.selectRestaurantsByResName(resName);
		return result;
	}

	@Override
	public int updateResScore(Restaurant restaurant) {
		int result = dao.updateResScore(restaurant);
		return result;
	}

	@Override
	public List<Restaurant> getRankingAll() {
		List<Restaurant> result = dao.selectRankingAll();
		return result;
	}

	@Override
	public List<Restaurant> getRankingByLoc(String locName) {
		List<Restaurant> result = dao.selectRankingByLoc(locName);
		return result;
	}

	@Override
	public List<Restaurant> selectNewRestaurant() {
		List<Restaurant> result = dao.selectNewRestaurant();
		return result;
	}

	@Override
	public List<Restaurant> getAllRestuarantsAtSearch(String result) {
		List<Restaurant> result2 =dao.selectAllRestuarantsAtSearch(result);
		return result2;
	}
	
	
	
	
	

}
