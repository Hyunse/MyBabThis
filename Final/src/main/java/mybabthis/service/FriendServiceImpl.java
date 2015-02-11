package mybabthis.service;

import java.util.List;

import mybabthis.dao.FriendDao;
import mybabthis.entity.Friend;
import mybabthis.entity.Users;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FriendServiceImpl implements FriendService {

	static final Logger logger = LoggerFactory
			.getLogger(FriendServiceImpl.class);
	
	@Autowired
	FriendDao dao;
	
	@Override
	public int createFriend(Friend friend) {
		return dao.createFriend(friend);
	}

	@Override
	public int deleteFriend(Friend friend) {
		return dao.deleteFriend(friend);
	}

	@Override
	public List<Friend> getFriendsByUserId(Friend friend) {
		return dao.getFriendsByUserId(friend);
	}

	@Override
	public List<Users> getUsersByFriend(Friend friend) {
		return dao.getUsersByFriend(friend);
	}

	@Override
	public int validationCheck(Friend friend) {
		return dao.validationCheck(friend);
	}

}
