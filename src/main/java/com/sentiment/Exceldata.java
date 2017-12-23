package com.sentiment;




import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class Exceldata extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
	try{	
		System.out.println("its came inside fetch tweets");
		
	
			int no=Integer.parseInt(request.getParameter("no"));
			
			System.out.println("action is >>>>>>>>>>>>>"+no);
			
			if(no==1)
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/exceldata.jsp");
				
					rd.forward(request, response);
				
				
			}
			
			
				
	}catch (Exception e) {
		// TODO: handle exception
	}	  
				
	               }
				
				
				
}