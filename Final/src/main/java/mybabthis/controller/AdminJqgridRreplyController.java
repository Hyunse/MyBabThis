package mybabthis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mybabthis.entity.Restaurant;
import mybabthis.entity.Rreply;
import mybabthis.entity.Users;
import mybabthis.service.RestaurantService;
import mybabthis.service.RreplyService;
import mybabthis.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminJqgridRreplyController {
	private static final Logger logger;
	static {
		logger = LoggerFactory.getLogger(AdminJqgridRreplyController.class);
	}

	@Autowired
	RreplyService rreplyService;

	//페이지 불러오기
	@RequestMapping(value = "/admin/Rreply", method = RequestMethod.GET)
	public String goPage() {
		return "admin/admin_rreply_jqgrid";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/admin/Rreply/getList")
	@ResponseBody
	public List<Rreply> selectList(HttpServletRequest request, HttpSession session) throws Exception {
		return rreplyService.getAllRreply();
	}
	
	//DELETE restaurant
	@RequestMapping(value = "/admin/Rreply/deleteOne", method = RequestMethod.POST)
	public String deleteRreply(@RequestParam String oper, int id) {
		rreplyService.deleteRreply(id);
		return "admin/admin_rreply_jqgrid";
	}
}
