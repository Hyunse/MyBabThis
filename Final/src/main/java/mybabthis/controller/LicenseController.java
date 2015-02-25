package mybabthis.controller;

import mybabthis.entity.License;
import mybabthis.service.LicenseService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class LicenseController {
private static final Logger logger;
static {
	logger = LoggerFactory.getLogger(LicenseController.class);
}

@Autowired
LicenseService licenseservice;

/*@RequestMapping(value="/license/myLicense", method=RequestMethod.GET, params={"userId"})
public <List>License getMylicenses(@RequestParam String userId, Model model){
	<List>License myLicenses =licenseservice.getLicensedUserById(userId);//여기에 서비스로 받아오기 service.~~
	model.addAttribute("myLicenses", myLicenses);
	return mypage/myinfo;
	}*/
}
