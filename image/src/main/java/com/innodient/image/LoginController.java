package com.innodient.image;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.innodient.image.data.user.User;
import com.innodient.image.data.user.UserRepository;

@Controller
public class LoginController {

	@Autowired
	private UserRepository userRepository;
	
	
	@RequestMapping( "/loginTest" )
	public String loginCheck() {
		
		userRepository.save( new User("innodient", "Changho Kang", "1234@") );
//		User user = userRepository.findUser("innodient").get(0);
		
		return "login";
	}
	
	@RequestMapping( "/login")
	public String login( @RequestParam(value="userid", defaultValue="unknown", required=true) String userid, @RequestParam(value="password", defaultValue="unknown", required=true) String password ) {
		
		System.out.println( "userid :" + userid);
		System.out.println( "password : " + password );
		
		List<User> users = userRepository.findUser(userid);
		
		if( users.size() > 0 ) {
			System.out.println( userRepository.findUser(userid).get(0) );
			return "dashboard";
		} else {
			return "login";
		}
	}
}
