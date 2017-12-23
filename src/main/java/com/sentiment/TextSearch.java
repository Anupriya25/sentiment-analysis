package com.sentiment;

import java.sql.SQLException;
import java.util.ArrayList;



public class TextSearch {

	
	public static ArrayList text_filter(String original) throws SQLException
	{
		ArrayList data = new ArrayList();
		String[] s = original.split(" ");
		
		for(int i=0;i<s.length;i++)
		{
					
					boolean f=LoginDao.check(s[i]);
					
					System.out.println("flag "+f);
					
					if(f == true)
					{
						
					}
					else
					{
						data.add(s[i]);
					}
				}
			
		
		
		return data;
		
	}
	
	
	
	
	
}
