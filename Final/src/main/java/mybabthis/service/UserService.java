package mybabthis.service;

import java.util.List;

import mybabthis.entity.Users;

public interface UserService {

	int join(Users user);

	int leave(String id, String pass); // 탈퇴시 id & password 필요

	int updateUser(Users user);

	Users login(Users user);

	List<Users> selectUserByPage(int page); // 쓸 일 없을 수도..

	List<Users> selectAllUser();

	
	/* 회원 검색 */
	
	Users searchUserId(String id); // 아이디 검색

	Users searchUserEmail(String email); // 이메일 검색

	Users searchUserByName(String name);
	List<Users> searchUserName(String name); // 이름 검색

	List<Users> searchUserGender(String gender); // 성별 검색

	List<Users> searchUserRegdate(String regdate); // 등록일 검색

	List<Users> searchUserUpdateDate(String updateDate); // 수정일 검색

	List<Users> searchUserGrade(String grade); // 등급 검색

}
