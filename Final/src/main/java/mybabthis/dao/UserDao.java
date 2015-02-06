package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Users;



public interface UserDao {
	
	Users selectByIdandPass(Users user);
	
	int createUser(Users user); // User 생성

	Users getUserById(String id);	// User 검색 By ID

	int updateUser(Users user); // User 수정

	int deleteUser(String user); // User 삭제

	List<Users> getAllUsers();

	List<Users> getUsersByPage(int page);
}

