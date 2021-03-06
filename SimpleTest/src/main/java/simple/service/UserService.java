package simple.service;

import java.util.List;

import simple.entity.Users;





public interface UserService {

	int join(Users user);

	int leave(String id, String pass); // 탈퇴시 id & password 필요
	
	int updateUser(Users user);
	
	Users selectUser(String id); // 회원 검색시  회원 아이디로 검색
	
	Users login(Users user);
	
	 List<Users> selectUserByPage(int page); // 쓸 일 없을 수도..

}
