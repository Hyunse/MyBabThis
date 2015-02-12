package mybabthis.dao;

import java.util.HashMap;

import mybabthis.entity.License;
import mybabthis.entity.LicensedUser;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LicenseDaoImpl implements LicenseDao {

	static final Logger logger = LoggerFactory.getLogger(LicenseDaoImpl.class);
	
	String nameSpace = "mybabthis.mappers.LicenseMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public License getLicense(String userId, String locName) {
		logger.trace("겟라이센스 호출됨");
		String stmt=nameSpace+"selectLicense";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("locName", locName);
		License result = sqlSession.selectOne(stmt, map);
		
		logger.trace("이거 출력되나? : "+result);
		
		return result;

		
	}


	@Override
	public License getAllLicense() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public LicensedUser getAllLicensedUser() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public LicensedUser getLicensedUser(LicensedUser licensedUser) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public LicensedUser getLicensedUserById(String userId) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public LicensedUser getLicensedUserByNo(String licenseNo) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int InsertLicensedUser(LicensedUser licensedUser) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	

}
