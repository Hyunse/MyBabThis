package mybabthis.dao;

import java.util.HashMap;
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
	public List<Users> selectUserByName(String name) {
		String stmt = nameSpace + "selectUsersByName";
		return sqlSession.selectList(stmt, name);
	}

	@Override
	public Users selectUserByEmail(String email) {
		String stmt = nameSpace + "selectUsersByEmail";
		return sqlSession.selectOne(stmt, email);
	}

	@Override
	public Users selectUserById(String id) {
		String stmt = nameSpace + "selectUsersById";
		return sqlSession.selectOne(stmt, id);
	}

	@Override
	public List<Users> selectUserByGender(String gender) {
		String stmt = nameSpace + "selectUsersByGender";
		return sqlSession.selectList(stmt, gender);
	}

	@Override
	public List<Users> selectUserByRegdate(String regDate) {
		String stmt = nameSpace + "selectUsersByRegdate";
		return sqlSession.selectList(stmt, regDate);
	}

	@Override
	public List<Users> selectUserByUpdateDate(String updateDate) {
		String stmt = nameSpace + "selectUsersByUpdateDate";
		return sqlSession.selectList(stmt, updateDate);
	}

	@Override
	public List<Users> selectUserByGrade(String grade) {
		String stmt = nameSpace + "selectUsersByGrade";
		return sqlSession.selectList(stmt, grade);
	}

	@Override
	public Users selectUserByNameAtJoin(String name) {
		String stmt = nameSpace + "selectUsersByNameAtJoin";
		return sqlSession.selectOne(stmt, name);
	}

	@Override
	public int updateUserGrade(String userId, String userGrade) {

		String stmt = nameSpace + "updateUserGrade";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("userGrade", userGrade);
		return sqlSession.update(stmt,map);

		
	}
	
	
	

}
