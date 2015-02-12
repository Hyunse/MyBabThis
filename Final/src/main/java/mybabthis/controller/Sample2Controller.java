package mybabthis.controller;
import mybabthis.service.UserService;
import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class Sample2Controller {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/sample.do", method = RequestMethod.GET)
	public String gachon() {
		return "/sample/sample2";
	}
	
	//리스트 SELECT
	@RequestMapping(value = "/sample/list.do", method = RequestMethod.POST)
	@ResponseBody
	public JSONArray selectUsers() {
		return JSONArray.fromObject(userService.selectAllUser());
	}
	
}
