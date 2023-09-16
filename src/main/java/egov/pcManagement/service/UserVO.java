package egov.pcManagement.service;

import lombok.Data;

@Data
public class UserVO {
	private String id;
	private String password;
	private String name;
	private String phone;
	private int rmtime;
	private String userable_YN;
	private String using_YN;
}
