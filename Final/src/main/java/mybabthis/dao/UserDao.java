package mybabthis.dao;

import java.util.List;

import mybabthis.entity.Users;



public interface UserDao {
	
	Users selectUser(Users user);
	
	int createUser(Users user); // User 생성

	Users getUserById(String id);	// User 검색 By ID

	int updateUser(Users user); // User 수정

	int deleteUser(String user); // User 삭제

	List<Users> getAllUsers();

	List<Users> getUsersByPage(int page);
	
	Users selectUserByNameAtJoin(String name);
	
	/* 관리자 페이지에서 회원 검색하기 위한 메소드 */
	
	List<Users> selectUserByName(String name);
	Users selectUserByEmail(String email);
	Users selectUserById(String id);
	List<Users> selectUserByGender(String gender);
	List<Users> selectUserByRegdate(String regDate);
	List<Users> selectUserByUpdateDate(String updateDate);
	List<Users> selectUserByGrade(String grade);
}

