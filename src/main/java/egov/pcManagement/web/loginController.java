package egov.pcManagement.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class loginController {

	@PostMapping("/userLogin")
	@ResponseBody
	public String login(@RequestParam String username, @RequestParam String password) {
		// username과 password를 사용하여 로그인 검증을 수행하고, 결과를 반환합니다.
		if ("사용자아이디".equals(username) && "비밀번호".equals(password)) {
			return "로그인 성공";
		} else {
			return "로그인 실패";
		}
	}
}
