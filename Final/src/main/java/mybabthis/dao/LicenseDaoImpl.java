package mybabthis.dao;

import java.util.HashMap;

import mybabthis.entity.License;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LicenseDaoImpl implements LicenseDao {

	static final Logger logger = LoggerFactory.getLogger(LicenseDaoImpl.class);
	
	String nameSpace = "mybabthis.mappers.LicenseMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public License getLicense(String userId, String locName) {
		String stmt=nameSpace+"selectLicense";
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("locName", locName);
		License result = sqlSession.selectOne(stmt, map);
		return result;

		
	}

}
