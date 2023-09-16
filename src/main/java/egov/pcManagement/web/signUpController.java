package egov.pcManagement.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.pcManagement.service.UserService;
import egov.pcManagement.service.UserVO;

@Controller
public class signUpController {
	@Resource(name = "UserService")
	UserService userService;

	@RequestMapping("/userSignup")
	@ResponseBody
	public String signUp(UserVO vo) throws Exception {

		int result = userService.signUp(vo);
		String str = "";
		if(result == 1) {
			str = "OK";
		} 
		
		return str;
	}
}
