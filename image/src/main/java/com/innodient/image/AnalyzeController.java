package com.innodient.image;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnalyzeController {

	@RequestMapping( "/analyzing" )
	public String analyze( Model model ) {
		return "analyzing";
	}
}
