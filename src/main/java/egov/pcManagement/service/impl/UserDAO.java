package egov.pcManagement.service.impl;

import org.egovframe.rte.psl.dataaccess.EgovAbstractDAO;
import org.springframework.stereotype.Repository;

import egov.pcManagement.service.UserVO;

@Repository("userDAO")
public class UserDAO extends EgovAbstractDAO{

	public int insertUser(UserVO vo) {
		return (int) insert("userDAO.insertUser",vo);
	}
}
