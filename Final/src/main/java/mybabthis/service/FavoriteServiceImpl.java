package mybabthis.service;

import java.util.List;

import mybabthis.dao.FavoriteDao;
import mybabthis.entity.Favorite;
import mybabthis.entity.Restaurant;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class FavoriteServiceImpl implements FavoriteService {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(ReviewServiceImpl.class);
	}

	@Autowired
	FavoriteDao dao;

	@Override
	public int createFavorite(Favorite favorite) {
		int result = dao.createFavorite(favorite);
		return result;
	}

	@Override
	public int deleteFavorite(Favorite favorite) {
		int result= dao.deleteFavorite(favorite);
		return result;
	}

	@Override
	public List<Integer> getFavoriteByUserId(String userId) {
		List<Integer> result = dao.getFavoriteByUserId(userId);
		return result;
	
	}

	@Override
	public List<Restaurant> getResByJoin(Favorite favorite) {
		
		List<Restaurant> result = dao.getResByJoin(favorite);
		return result;
	}

	@Override
	public int validationCheck(Favorite favorite) {
		int result=dao.validationCheck(favorite);
		return result;
	}

}
