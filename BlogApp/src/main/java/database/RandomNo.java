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
	       
        int int_random = rand.nextInt(8999)+1000; 
        
        return int_random;
	}

    public static void main(String args[]) throws IOException {
    	
    	RandomNo random = new RandomNo();
    	
    	for(int i=0; i<200;i++)
    	{
    		System.out.println(random.randomNo());

    	}
    	
        
    }
}
