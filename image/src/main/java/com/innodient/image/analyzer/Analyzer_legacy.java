package com.innodient.image.analyzer;

import java.awt.Component;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;

import javax.imageio.ImageIO;

public class Analyzer_legacy extends Component {

//	public static void main() {
//		new Analyzer();
//	}
	
	//	public void Analyze() {
//		try {
//	      // get the BufferedImage, using the ImageIO class
//	      BufferedImage image = 
//	        ImageIO.read( this.getClass().getResource("Desert.jpg") );
//	      marchThroughImage(image);
//	    } catch (IOException e) {
//	      System.err.println(e.getMessage());
//	    }
//	}

	public void printPixelARGB(int pixel) {
		int alpha = (pixel >> 24) & 0xff;
		int red = (pixel >> 16) & 0xff;
		int green = (pixel >> 8) & 0xff;
		int blue = (pixel) & 0xff;
		
		if( red != 255 && green != 255 && blue != 255 ) {
			System.out.println("argb: " + alpha + ", " + red + ", " + green + ", " + blue );
		}
	}

	private ArrayList marchThroughImage(BufferedImage image) {
		int w = image.getWidth();
		int h = image.getHeight();
		System.out.println("width, height: " + w + ", " + h);

		int histData[][][] = new int[256][256][256];
		
		int rhist[] = new int[256];
		int ghist[] = new int[256];
		int bhist[] = new int[256];
		
		for (int i = 0; i < h; i++) {
			for (int j = 0; j < w; j++) {
//				System.out.println("x,y: " + j + ", " + i);
				int pixel = image.getRGB(j, i);
//				printPixelARGB(pixel);
				int alpha = (pixel >> 24) & 0xff;
				int red = (pixel >> 16) & 0xff;
				int green = (pixel >> 8) & 0xff;
				int blue = (pixel) & 0xff;
				
//				System.out.println( red + " " + green + " " + blue );
				
				histData[red][green][blue]++;
				rhist[red]++;
				ghist[green]++;
				bhist[blue]++;
				
//				System.out.println("");
			}
		}
		
		ArrayList<int[]> res = new ArrayList();
		res.add( rhist );
		res.add( ghist );
		res.add( bhist );
		
		for( int i=0; i<256; i++ ) {
//			System.out.println( rhist[i] );
		}
		System.out.println( histData );
		
		return res;
		
//		
//		
//		String redHistogram = "['Dinosaur', 'Length']";
//		ArrayList arr = new ArrayList();
//		arr.add(redHistogram);
//		
//		for( int i=0; i<256; i++ ) {
////			['Dinosaur', 'Length'],
////			['Acrocanthosaurus (top-spined lizard)', 12.2],
//			
//			
//			ArrayList pixel = new ArrayList();
//			
//			pixel.add( "''" );
//			pixel.add( histData[i][255][255] );
//			
//			arr.add( pixel );
//			
//		}
//		
//		System.out.println( arr );
		
//		ArrayList array = new ArrayList();
//		
//		String res = "";
//		
//		for (int i = 0; i < h; i++) {
//			for (int j = 0; j < w; j++) {
////				System.out.println("x,y: " + j + ", " + i);
//				int pixel = image.getRGB(j, i);
////				printPixelARGB(pixel);
//				int alpha = (pixel >> 24) & 0xff;
//				int red = (pixel >> 16) & 0xff;
//				int green = (pixel >> 8) & 0xff;
//				int blue = (pixel) & 0xff;
//				
////				res += "[''," + red + "],";
//				
////				System.out.println( red + " " + green + " " + blue );
//				
////				histData[red][green][blue]++;
//				
//				
////				System.out.println(res);
//			}
//		}
		
//		System.out.println( res );
		
	}

	public ArrayList analyze() {
		try {
			// get the BufferedImage, using the ImageIO class
			URL url = new URL("http://localhost:8080/uploads/1.png");
			BufferedImage image = ImageIO.read(url);
//			BufferedImage image = ImageIO.read(this.getClass().getResource("https://www.summermvc.com/install.png"));
			return marchThroughImage(image);
			
			//C:\Users\changho1.kang.DSG\eclipse-workspace\image\src\main\java\com\kch\image\analyzer\Analyzer.java
			//C:\Users\changho1.kang.DSG\eclipse-workspace\image\src\main\resources\static\Desert.jpg
			
//			 String current = new java.io.File( "." ).getCanonicalPath();
//		        System.out.println("Current dir:"+current);
//		 String currentDir = System.getProperty("user.dir");
//		        System.out.println("Current dir using System:" +currentDir);
		} catch (IOException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

}