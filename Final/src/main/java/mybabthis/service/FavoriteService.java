package mybabthis.service;

import java.util.List;

import mybabthis.entity.Favorite;


public interface FavoriteService {

	int createFavorite(Favorite favorite); 
	int deleteFavorite(Favorite favorite);
	List<Integer> getFavoriteByUserId(String userId);
}
