package com.sentiment;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;




public class Uploadexeloriginaldata extends HttpServlet
{
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	
			throws IOException 
			{
		PrintWriter out = response.getWriter();
		try {
			boolean flag1=false;
			boolean flag11=false;
			boolean flag22=false;
			boolean flag33=false;
			
			boolean flag44=false;
			String fileName = "", root = "", md = "", dir = "cloud_iseive",root1 = "",root2="";
			String status; 
			String[] name = new String[2];
			int i = 0;
			File uploadedFile = null;
			File uploadedFile1=null;
			ResultSet rs = null;
			boolean flag = false;
			boolean flag_upload = false;
			RequestDispatcher rd = null;
			Random random = new Random();
			int num, num1 = 0;
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			String name1=request.getParameter("name");
			System.out.println("value of name1 is  "+name1);
			//String grpname=CommonDAO.getGroupName(name1);

	
	
	if (isMultipart)
	{
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		
			
			List items = upload.parseRequest(request);
			Iterator iterator = items.iterator();
			while (iterator.hasNext())
			{
				FileItem item = (FileItem) iterator.next();
				if (item.isFormField())
				{
					name[i] = item.getString();
					i++;
				} 
				else 
				{
					fileName = item.getName();
					System.out.println("filename iss" + fileName);
					root = getServletContext().getRealPath("/Excel");
					
					
					uploadedFile = new File(root +"/"+fileName);
					
					System.out.println("Directory name iss" + uploadedFile);
					item.write(uploadedFile);
				}
			}
		
	}
	
	
		ArrayList data=new ArrayList();
		String memb_code=null;
		String policy_mem_code="AB";
		int row11=0;
		FileInputStream file=null;
		XSSFWorkbook workbook=null;
		int i1=0;


		file = new FileInputStream(new File(root +"/"+fileName));
			 workbook = new XSSFWorkbook(file);

			XSSFSheet sheet = workbook.getSheetAt(0);
			Iterator<Row> rowIterator = sheet.iterator();
			int count=0;
			for(Row row : sheet) 
			{count++;
				StringBuffer sb1= new StringBuffer();
         if(i1==0)
					
				{
				
				 row = rowIterator.next();
				Iterator<Cell> cellIterator = row.cellIterator();
				
				while (cellIterator.hasNext()) 
				{
					Cell cell = cellIterator.next();
					switch (cell.getCellType()) 
					{
						case Cell.CELL_TYPE_NUMERIC:
							break;
						case Cell.CELL_TYPE_STRING:
							break;
					}
				}
				i1=1;	
			  }
               else{
				   for(int cn=0; cn<2; cn++) 
				   {
				       
				       Cell cell = row.getCell(cn, Row.CREATE_NULL_AS_BLANK);
				       // Print the cell for debugging
				       System.out.println("CELL: " + cn + " --> " + cell.toString());
				       
				       if (cn==0||cn==1)
				       {
				    	   if(cell.toString().isEmpty())
				    	   {
				    		   sb1.append("null");
				    	   }
				       }
				       sb1.append(cell.toString());
				       sb1.append("~~");
				       
				   }
				   StringBuffer buf = null;
				   String ss=sb1.toString();
			        // System.out.println("||||||||||||||||||||||||||||||||||||||||||||"+ss);
			         String[] splits = ss.split("~~");
			         
			           String part1 = splits[0]; 
			          
						String part5 = splits[1];
						part5=part5.replace("'","");
						
						System.out.println("the excell data is"+part5);
						ArrayList list=new ArrayList();
						
						
						System.out.println("part 1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+part1);
						
						
						System.out.println("part 5 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+part5);
						
					 flag1=AdminDAO.storeoriginalcontents11(part1,part5);
					
						
						
						
               }
         


		}

System.out.println("count is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+count);

			if(flag1)
			{
				RequestDispatcher rd1=request.getRequestDispatcher("/jsp/exceldata.jsp?no=2");
				
				rd1.forward(request, response);
			}else
			{
          RequestDispatcher rd1=request.getRequestDispatcher("/jsp/exceldata.jsp?no=3");
				
				rd1.forward(request, response);	
			}	

				
		
		
		
	}
	
	
	catch (Exception e) {
		
	}
	
			}
}
