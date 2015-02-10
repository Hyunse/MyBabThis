package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Users;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserDaoImpl.class);
	}
	
	String nameSpace = "mybabthis.mappers.UserMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Users selectUser(Users user){
		String stmt = nameSpace + "selectUserByIdAndPass";
		return sqlSession.selectOne(stmt, user);
	}
	
	@Override
	public int createUser(Users user) {
		String stmt = nameSpace +"createUser";
		return sqlSession.update(stmt, user);
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
		return sqlSession.update(stmt, id);
	}

	@Override
	public List<Users> getAllUsers() {
		String stmt = nameSpace + "selectAllUser";
		return sqlSession.selectList(stmt);
	}

	@Override
	public List<Users> getUsersByPage(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Users seletUserByName(String name) {
		String stmt = nameSpace + "selectUsersByName";
		return sqlSession.selectOne(stmt, name);
	}

	@Override
	public Users seletUserByEmail(String email) {
		String stmt = nameSpace + "selectUsersByEmail";
		return sqlSession.selectOne(stmt, email);
	}
	

}
