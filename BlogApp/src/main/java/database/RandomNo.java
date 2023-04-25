package database;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class RandomNo {

	public int randomNo()
	{
		Random rand = new Random(); 
	       
        int int_random = rand.nextInt(89999999)+100000000; 
        
        return int_random;
	}

    public static void main(String args[]) throws IOException {
    	
    	RandomNo random = new RandomNo();
    	
//    		System.out.println(random.randomNo());
    }
}
