package mybabthis.controller;

import java.io.File;
import java.io.IOException;

import mybabthis.entity.Users;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

@Controller
@SessionAttributes("loginUser")
public class UploadController {

	private final static Logger logger;

	static {
		logger = LoggerFactory.getLogger(UploadController.class);
	}
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String enterUpload() {
		return "mypage/mypage_myimg";

	}

	
	@RequestMapping(value = "/upload/user", method = RequestMethod.POST)
	public String uploadUserimg(@RequestParam("uploadFile") MultipartFile file, Model model) {
		
		File newfile = new File("c:\\DB\\uploaded\\"+file.getOriginalFilename());
		
		try{
		file.transferTo(newfile);
		}catch(IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("file", file.getOriginalFilename());
		
		
		return "mypage/mypage_myimg";
	}
	
}
