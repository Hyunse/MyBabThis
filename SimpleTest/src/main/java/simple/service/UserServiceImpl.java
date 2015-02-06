package simple.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import simple.dao.UserDao;
import simple.entity.Users;


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
	public Users selectUser(String id) {
		Users result = dao.getUserById(id);
		return result;
	}

	@Override
	public Users login(Users user) {
		Users result = dao.selectByIdandPass(user);
		return result;
	}

	@Override
	public List<Users> selectUserByPage(int page) {
		// TODO Auto-generated method stub
		return null;
	}

}
