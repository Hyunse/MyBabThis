package mybabthis.service;

import java.util.List;

import mybabthis.entity.Restaurant;

public interface RestaurantService {
	
	int createRestaurant(Restaurant restaurant);
	int updateRestaurant(Restaurant restaurant);
	int deleteRestaurant(int resNo);
	
	List<Restaurant> selectRestaurantsByLocation(String locName);
	List<Restaurant> selectAllRestuarants();
	

	Restaurant selectRestaurantByNo(int resNo);

}
