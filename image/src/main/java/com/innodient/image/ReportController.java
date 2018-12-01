package com.innodient.image;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReportController {
	
	@RequestMapping( "/report/{id}")
	public String report(@PathVariable String id) {
		System.out.println( id );
		return "report";
	}
}
