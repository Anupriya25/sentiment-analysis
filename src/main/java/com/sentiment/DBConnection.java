package com.sentiment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection 
{
	
	
	public static Connection getConnection()
	{
		Connection con=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sentimentanalysis","root",
					"root");
			
			
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		return con;
		
	}
	
	
	
	
	
	
	
	
	
	public static void CloseConnection(ResultSet rs,Statement st,Connection con) 
	{
		if(rs!=null)
		{
			try 
			{
				rs.close();
				rs=null;
			}
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		if(st!=null)
		{
			try 
			{
				st.close();
				st=null;
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		if(con!=null)
		{
			try 
			{
				con.close();
				con=null;
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		//System.out.println("connection closed ");
	}
	
	public static void Close(Connection con) 
	{
		
		
		
		if(con!=null)
		{
			try 
			{
				con.close();
				con=null;
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		//System.out.println("connection closed ");
	}
}
