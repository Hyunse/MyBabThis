package mybabthis.service;

import java.util.List;

import mybabthis.entity.License;
import mybabthis.entity.LicensedUser;

public interface LicenseService {
	

	License getLicenseByLocName(String userId, String locName);
	License getLicenseByResKind(String userId, String resKind);

	LicensedUser getLicensedUser(LicensedUser licensedUser);
	
	License getAllLicense();
	
	
	LicensedUser getAllLicensedUser();

	
	LicensedUser getLicensedUserById(String userId);
	LicensedUser getLicensedUserByNo(int licenseNo);
	
	int insertLicensedUser(LicensedUser licensedUser);
	
	int getLicenseCntById(String userId);

	List<License> getLicensesById(String userId);

}
