package model;

public class auth {

	public String authenticate(String username, String password) {
		if (("icsi518".equalsIgnoreCase(username)) && ("Fall2017".equals(password))) {
			return "success";
		} else {
			return "failure";
		}
	}
}