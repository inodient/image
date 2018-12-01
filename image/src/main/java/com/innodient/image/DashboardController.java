package com.innodient.image;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.innodient.image.data.Users;
import com.innodient.image.data.UsersRepository;

@Controller
public class DashboardController {

	@Autowired
    private UsersRepository repository;

	
	@RequestMapping( "/" )
	public String dashboard( Model model ) {
		
		
//		repository.save(new Users("Seoul", "Korea"));
		
		return "dashboard";
	}
	
}
