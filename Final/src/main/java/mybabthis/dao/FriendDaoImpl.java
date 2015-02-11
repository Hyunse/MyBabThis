package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Friend;
import mybabthis.entity.Users;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FriendDaoImpl implements FriendDao {
	static final Logger logger = LoggerFactory.getLogger(FriendDaoImpl.class);

	String nameSpace = "mybabthis.mappers.FriendMapper";

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int createFriend(Friend friend) {
		String stmt = nameSpace + "createFriend";
		int result = sqlSession.update(stmt, friend);
		return result;
	}

	@Override
	public int deleteFriend(Friend friend) {
		String stmt = nameSpace + "deleteFriend";
		int result = sqlSession.update(stmt, friend);
		return result;
	}

	@Override
	public List<Friend> getFriendsByUserId(Friend friend) {
		String stmt = nameSpace + "selectFriendsByUserId";
		List<Friend> result = sqlSession.selectList(stmt, friend);
		return result;
	}

	@Override
	public List<Users> getUsersByFriend(Friend friend) {
		String stmt = nameSpace + "selectFriendsByUserId";
		List<Users> result = sqlSession.selectList(stmt, friend);
		return result;
	}

	@Override
	public int validationCheck(Friend friend) {
		// TODO Auto-generated method stub
		return 0;
	}

}
