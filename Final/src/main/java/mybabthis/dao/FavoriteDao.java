package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Favorite;
import mybabthis.entity.Restaurant;



public interface FavoriteDao {

	int createFavorite(Favorite favorite); // 즐겨찾기  추가 
	int deleteFavorite(Favorite favorite); // 맛집 댓글 삭제
	List<Integer> getFavoriteByUserId(String userId);//유저아이디로 즐겨찾기리스트 가져오기 
	List<Restaurant> getResByJoin(Favorite favorite);//favorite.resNo로 조인해서 맛집게시판 리스트 가져오기 
	int validationCheck(Favorite favorite);//중복체크 위해 즐겨찾기 정보 가져오기 
}
