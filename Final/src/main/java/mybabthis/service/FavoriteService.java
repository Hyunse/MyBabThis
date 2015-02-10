package mybabthis.service;

import java.util.List;

import mybabthis.entity.Favorite;
import mybabthis.entity.Restaurant;


public interface FavoriteService {

	int createFavorite(Favorite favorite); 
	int deleteFavorite(Favorite favorite);
	List<Integer> getFavoriteByUserId(String userId);
	List<Restaurant> getResByJoin(Favorite favorite);
	int validationCheck(Favorite favorite);
}
