package mybabthis.dao;

import mybabthis.entity.License;
import mybabthis.entity.LicensedUser;

public interface LicenseDao {
	
	License getLicense(String userId, String locName);
	License getAllLicense();
	
	LicensedUser getAllLicensedUser();

	LicensedUser getLicensedUser(LicensedUser licensedUser);
	
	LicensedUser getLicensedUserById(String userId);
	LicensedUser getLicensedUserByNo(String licenseNo);
	
	int InsertLicensedUser(LicensedUser licensedUser);
	

}
