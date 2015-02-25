package mybabthis.service;

import java.util.List;

import mybabthis.dao.LicenseDao;
import mybabthis.entity.License;
import mybabthis.entity.LicensedUser;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LicenseServiceImpl implements LicenseService {
	
	static final Logger logger = LoggerFactory
			.getLogger(LicenseServiceImpl.class);
	
	@Autowired
	LicenseDao dao;
	

	/**지역명으로 라이센스 가져옴*/
	@Override
	public License getLicenseByLocName(String userId, String locName) {

		License result = dao.getLicenseByLocName(userId, locName);
		return result;
	}

	/**맛집장르로 라이센스가져옴 */
	@Override
	public License getLicenseByResKind(String userId, String resKind) {

		License result = dao.getLicenseByResKind(userId, resKind);
		return result;
	}

	/** */
	@Override
	public LicensedUser getLicensedUser(LicensedUser licensedUser) {

		LicensedUser result = dao.getLicensedUser(licensedUser);
		return result;
	}

	/** */
	@Override
	public License getAllLicense() {

		License result = dao.getAllLicense();
		return result;
	}

	/** */
	@Override
	public LicensedUser getAllLicensedUser() {

		LicensedUser result = dao.getAllLicensedUser();
		return result;
	}

	/** */
	@Override
	public LicensedUser getLicensedUserById(String userId) {

		LicensedUser result = dao.getLicensedUserById(userId);
		return result;
	}

	/** */
	@Override
	public LicensedUser getLicensedUserByNo(int licenseNo) {

		LicensedUser result = dao.getLicensedUserByNo(licenseNo);
		return result;
	}

	/** */
	@Override
	public int insertLicensedUser(LicensedUser licensedUser) {
		int result = dao.insertLicensedUser(licensedUser);
		
		return result;
	}

	/** */
	@Override
	public int getLicenseCntById(String userId) {

		int result = dao.getLicenseCntById(userId);
		return result;
	}

	@Override
	public List<License> getLicensesById(String userId) {
		List<License> result = dao.getLicensesById(userId);
		return result;
	}
	
	
	
	

}
