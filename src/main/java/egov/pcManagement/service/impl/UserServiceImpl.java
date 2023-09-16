package egov.pcManagement.service.impl;

import javax.annotation.Resource;

import egov.pcManagement.service.UserService;
import egov.pcManagement.service.UserVO;

public class UserServiceImpl implements UserService {
	@Resource(name="userDAO")
	UserDAO userDAO;
	@Override
	public int signUp(UserVO vo) throws Exception {
		return userDAO.insertUser(vo);
	}

}
