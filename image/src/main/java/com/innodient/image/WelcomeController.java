package com.innodient.image;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.innodient.image.analyzer.Analyzer;
import com.innodient.image.data.Users;
import com.innodient.image.data.UsersRepository;

@Controller
public class WelcomeController {

	@RequestMapping( "information" )
	public String information() {
		return "information";
	}
	
	
	@RequestMapping( "/welcome" )
	public String welcome( Model model, @RequestParam(value="name", defaultValue="unknown", required=false) String name ) {
		
		
		model.addAttribute( "message", name );
		
		Analyzer analyzer = new Analyzer();
//		System.out.println( analyzer.analyze() );
		
		ArrayList histData = analyzer.execute( "1.png" ); 
		
		int rhist[] = new int[255];
		int ghist[] = new int[255];
		int bhist[] = new int[255];
		
		rhist = (int[]) histData.get(0);
		ghist = (int[]) histData.get(1);
		bhist = (int[]) histData.get(2);
		
		model.addAttribute( "rhist", rhist);
		model.addAttribute( "ghist", ghist);
		model.addAttribute( "bhist", bhist);
		
//		for( int i=0; i<256; i++ ) {
//			System.out.println( rhist[i] );
//		}
		
		
		
		
		
		
		
		
		return "welcome";
	}
}
