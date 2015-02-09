package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Favorite;



public interface FavoriteDao {

	int createFavorite(Favorite favorite); // 즐겨찾기  추가 
	int deleteFavorite(Favorite favorite); // 맛집 댓글 삭제
	List<Integer> getFavoriteByUserId(String userId);//유저아이디로 즐겨찾기리스트 가져오기 
	
}
