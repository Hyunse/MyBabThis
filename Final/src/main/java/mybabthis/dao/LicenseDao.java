package mybabthis.dao;

import mybabthis.entity.License;

public interface LicenseDao {
	
	License getLicense(String userId, String locName);

}
