package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Restaurant;

public interface RestaurantDao {
	
	
	
	
	int createRestaurant(Restaurant restaurant);
	int updateRestaurant(Restaurant restaurant);
	int deleteRestaurant(int resNo);
	
	
	List<Restaurant> selectRestaurantsByLocation(String locName);
	List<Restaurant> selectAllRestuarants();
	
	Restaurant selectRestaurantByNo(int resNo);
	
	List<Restaurant> selectRestaurantsByResName(String resName);
	public int updateResScore(Restaurant restaurant);
	
	
	

	
	
	
	
	

}
