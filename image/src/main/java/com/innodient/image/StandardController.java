package com.innodient.image;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StandardController {

	@RequestMapping( "/std" )
	public String getStandardList() {
		return "std";
	}
	
	@RequestMapping( "/std/{id}")
	public String getStandard(@PathVariable String id) {
		System.out.println( id );
		return "std";
	}
	
	@RequestMapping( "/stdassigning" )
	public String setStandard() {
		return "std";
	}
}
