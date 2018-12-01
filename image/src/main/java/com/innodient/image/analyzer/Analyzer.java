package com.innodient.image.analyzer;

import java.awt.Component;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;

import javax.imageio.ImageIO;

public class Analyzer extends Component {

	private static final long serialVersionUID = 1L;

	public void printPixelARGB(int pixel) {
		int alpha = (pixel >> 24) & 0xff;
		int red = (pixel >> 16) & 0xff;
		int green = (pixel >> 8) & 0xff;
		int blue = (pixel) & 0xff;
		
		if( red != 255 && green != 255 && blue != 255 ) {
			System.out.println("argb: " + alpha + ", " + red + ", " + green + ", " + blue );
		}
	}

	private ArrayList<int[]> analyze(BufferedImage image) {
		int w = image.getWidth();
		int h = image.getHeight();
		System.out.println("width, height: " + w + ", " + h);

		int histData[][][] = new int[256][256][256];
		
		int rhist[] = new int[256];
		int ghist[] = new int[256];
		int bhist[] = new int[256];
		
		int rMax = 0;
		int gMax = 0;
		int bMax = 0;
		int max[] = new int[3];
		
		for (int i = 0; i < h; i++) {
			for (int j = 0; j < w; j++) {
				
				int pixel = image.getRGB(j, i);

//				int alpha = (pixel >> 24) & 0xff;
				int red = (pixel >> 16) & 0xff;
				int green = (pixel >> 8) & 0xff;
				int blue = (pixel) & 0xff;
				
//				if( red > rMax ) rMax = red;
//				if( green > gMax ) gMax = green;
//				if( blue > bMax ) bMax = blue;
				
				histData[red][green][blue]++;
				rhist[red]++;
				ghist[green]++;
				bhist[blue]++;
			}
		}
		
		ArrayList<int[]> res = new ArrayList<int[]>();
		res.add( rhist );
		res.add( ghist );
		res.add( bhist );
		
		for( int i=0; i<256; i++ ) {
			if( rhist[i] > rMax ) rMax = rhist[i];
			if( ghist[i] > gMax ) gMax = ghist[i];
			if( bhist[i] > bMax ) bMax = bhist[i];
		}
		
		max[0] = ( rMax );
		max[1] = ( gMax );
		max[2] = ( bMax );
		
		res.add( max );
		
		return res;
	}

	public ArrayList<int[]> execute( String fileName ) {
		try {
			// get the BufferedImage, using the ImageIO class
			URL url = new URL( "http://localhost:8080/images/" + fileName );
			BufferedImage image = ImageIO.read(url);
			return analyze(image);
		} catch (IOException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

}