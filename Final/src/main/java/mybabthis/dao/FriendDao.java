package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Friend;
import mybabthis.entity.Users;


public interface FriendDao {
	
	int createFriend(Friend friend); // 친구 추가 
	int deleteFriend(Friend friend); // 친구 삭제
	List<Friend> getFriendsByUserId(Friend friend);//유저아이디로 친구리스트 가져오기 
	List<Users> getUsersByFriend(Friend friend);//친구리스트로 유저리스트 가져오기 
	int validationCheck(Friend friend);//중복체크 위해 친구정보 가져오기 
}

