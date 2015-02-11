package mybabthis.controller;

import java.util.List;

import mybabthis.entity.Friend;
import mybabthis.entity.Users;
import mybabthis.service.FriendService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/friend")
public class FriendController {
	static final Logger logger = LoggerFactory
			.getLogger(FriendController.class);
	
	@Autowired
	FriendService service;
	
	
	//유저아이디는 세션에서 넘겨오고, 아이디 누른거니까 그걸로  friendId 넘기면될듯.
	@RequestMapping(value = "/create", params={"userId","friendId"}, method = RequestMethod.GET)
	public String write(@RequestParam String userId,String friendId) {
		
		Friend friend=new Friend();
		friend.setUserId(userId);
		friend.setFriendId(friendId);
		int result=service.validationCheck(friend);
		if(result==0){
		
			service.createFriend(friend);
		
		}
		else{
			return "friend/fail";
		}
		
		//새창에서 띄운 다음에,
		//사실 성공하면 그냥 창 닫는게 나을듯;
		//성공하면 성공화면 보내서, 하시겠습니까? 해서 체크해서 넘겨버리거나
		return "admin/friend_list";
	}
	
	// 삭제하기
		@RequestMapping(value = "/delete",params={"userId", "friendId"}, method = RequestMethod.GET)
		public String delete(@RequestParam String userId, String friendId) {
			Friend friend=new Friend();
			friend.setUserId(userId);
			friend.setFriendId(friendId);			
			service.deleteFriend(friend);
			return "redirect:/friend/list?userId="+userId;
		}
	
		@RequestMapping(value = "/list", params = {"userId"}, method = RequestMethod.GET)
		public String getfriend(@RequestParam String userId, Model model) {
			Friend friend=new Friend();
			friend.setUserId(userId);
			List<Users> users = service.getUsersByFriend(friend);
			logger.trace("여기"+users);
			model.addAttribute("users",users);
			
			return "mypage/myfriends";
		}
	
	

}
