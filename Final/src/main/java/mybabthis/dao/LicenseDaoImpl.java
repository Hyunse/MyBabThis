package mybabthis.dao;

import java.util.HashMap;
import java.util.List;

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
	public License getLicenseByResKind(String userId, String resKind) {
		logger.trace("겟라이센스바이레스토랑종류 호출됨");
		String stmt=nameSpace+"selectLicenseByResKind";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("resKind", resKind);
		License result = sqlSession.selectOne(stmt, map);
		logger.trace("라이센스 셀렉 완료");
		return result;
	}


	@Override
	public License getLicenseByLocName(String userId, String locName) {
		logger.trace("겟라이센스바이로컬네임 호출됨");
		String stmt=nameSpace+"selectLicenseBylocName";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("locName", locName);
		License result = sqlSession.selectOne(stmt, map);
		logger.trace("라이센스 셀렉 완료");
		
		return result;

		
	}


	//리스트
	@Override
	public License getAllLicense() {
		String stmt=nameSpace+"selectAllLicense";
		License result = sqlSession.selectOne(stmt);
		return result;
	}


	//리스트
	@Override
	public LicensedUser getAllLicensedUser() {
		String stmt=nameSpace+"selectAllLicense";
		LicensedUser result = sqlSession.selectOne(stmt);
		return result;
	}


	@Override
	public LicensedUser getLicensedUser(LicensedUser licensedUser) {
		String stmt=nameSpace+"selectLicensedUser";
		LicensedUser result = sqlSession.selectOne(stmt,licensedUser);
		return result;
	}


	@Override
	public LicensedUser getLicensedUserById(String userId) {
		String stmt=nameSpace+"selectLicensedUserById";
		LicensedUser result = sqlSession.selectOne(stmt,userId);
		return result;
	}


	@Override
	public LicensedUser getLicensedUserByNo(int licenseNo) {
		String stmt=nameSpace+"selectLicensedUserByNo";
		LicensedUser result = sqlSession.selectOne(stmt,licenseNo);
		return result;
	}


	@Override
	public int getLicenseCntById(String userId) {
		String stmt=nameSpace+"selectLicenseCntById";
		int result = sqlSession.selectOne(stmt,userId);
		return result;
	}


	@Override
	public int insertLicensedUser(LicensedUser licensedUser) {
		String stmt=nameSpace+"insertLicensedUser";
		int result = sqlSession.update(stmt,licensedUser);
		return result;
		
	}


	@Override
	public List<License> getLicensesById(String userId) {
		String stmt=nameSpace+"selectLicensesById";
		List<License> result = sqlSession.selectList(stmt,userId);
		return result;
		
	}
	
	
	
	
	
	

}
