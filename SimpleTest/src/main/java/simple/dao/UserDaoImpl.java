package simple.dao;




import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import simple.entity.Users;

@Repository
public class UserDaoImpl implements UserDao {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserDaoImpl.class);
	}
	
	String nameSpace = "simple.mappers.UserMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Users selectByIdandPass(Users user){
		String stmt = nameSpace + "selectUserByIdAndPass";
		return sqlSession.selectOne(stmt, user);
	}
	
	@Override
	public int createUser(Users user) {
		String stmt = nameSpace +"createUser";
		return sqlSession.insert(stmt, user);
	}

	@Override
	public Users getUserById(String id) {
		String stmt = nameSpace +"selectUser";
		return sqlSession.selectOne(stmt, id);
	}

	@Override
	public int updateUser(Users user) {
		String stmt = nameSpace + "updateUser";
		return sqlSession.update(stmt, user);
	}

	@Override
	public int deleteUser(String id) {
		String stmt = nameSpace + "deleteUser";
		return sqlSession.delete(stmt, id);
	}

	@Override
	public List<Users> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Users> getUsersByPage(int page) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
