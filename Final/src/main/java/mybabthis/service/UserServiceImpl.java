package mybabthis.service;

import java.util.List;

import mybabthis.dao.UserDao;
import mybabthis.entity.Users;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(UserServiceImpl.class);
	}
	
	@Autowired
	UserDao dao;
	
	@Override
	public int join(Users user) {
		int result = dao.createUser(user);
		return result;
	}

	@Override
	public int leave(String id, String pass) {
		int result = dao.deleteUser(id);
		return result;
	}

	@Override
	public int updateUser(Users user) {
		int result = dao.updateUser(user);
		return result;
	}


	@Override
	public Users login(Users user) {
		Users result = dao.selectUser(user);
		return result;
	}

	@Override
	public List<Users> selectUserByPage(int page) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Users> selectAllUser() {		
		List<Users> result = dao.getAllUsers();
		return result;
	}
	
	@Override
	public Users searchUserId(String id) {
		Users result = dao.getUserById(id);
		return result;
	}
	
	@Override
	public Users searchUserEmail(String email) {
		Users result = dao.selectUserByEmail(email);
		return result;
	}
	
	@Override
	public List<Users> searchUserName(String name) {
		List<Users> result = dao.selectUserByName(name);
		return result;
	}

	@Override
	public List<Users> searchUserGender(String gender) {
		List<Users> result = dao.selectUserByGender(gender);
		return result;	
	}

	@Override
	public List<Users> searchUserRegdate(String regdate) {
		List<Users> result = dao.selectUserByRegdate(regdate);
		return result;
	}

	@Override
	public List<Users> searchUserUpdateDate(String updateDate) {
		List<Users> result = dao.selectUserByUpdateDate(updateDate);
		return result;
	}

	@Override
	public List<Users> searchUserGrade(String grade) {
		List<Users> result = dao.selectUserByGrade(grade);
		return result;
	}

	@Override
	public Users searchUserByName(String name) {
		Users result = dao.selectUserByNameAtJoin(name);
		return result;
	}

}
