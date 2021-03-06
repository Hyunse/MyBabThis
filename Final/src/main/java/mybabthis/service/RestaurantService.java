package mybabthis.service;

import java.util.List;

import mybabthis.entity.Restaurant;

public interface RestaurantService {
	
	int createRestaurant(Restaurant restaurant);
	int updateRestaurant(Restaurant restaurant);
	int deleteRestaurant(int resNo);
	
	List<Restaurant> selectRestaurantsByLocation(String locName);
	List<Restaurant> selectAllRestuarants();

	List<Restaurant> selectRestaurantsByResName(String resName);
	

	Restaurant selectRestaurantByNo(int resNo);
	
	List<Restaurant> getRankingAll();
	List<Restaurant> getRankingByLoc(String locName);
	List<Restaurant> selectNewRestaurant();
	
	List<Restaurant> getAllRestuarantsAtSearch(String result);
}
