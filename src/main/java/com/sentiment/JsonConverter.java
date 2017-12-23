package com.sentiment;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


public class JsonConverter {
	public void convertTrendsValue(String fileName) {
		try {
			JSONParser parser = new JSONParser();
			FileInputStream fileInputStream = new FileInputStream(new File(
					fileName));
			byte[] byt = new byte[fileInputStream.available()];
			fileInputStream.read(byt);
			String s = new String(byt);
			try {
				Object obj = parser.parse(s);
				JSONArray array = (JSONArray) obj;
				JSONObject obj2 = (JSONObject) array.get(0);
				JSONArray trends = (JSONArray) obj2.get("trends");
				for (int i = 0; i < trends.size(); i++) {
					JSONObject jsonObject = (JSONObject) trends.get(i);
					Vector<String> rowData = new Vector<String>();
					rowData.add(jsonObject.get("name").toString());
					rowData.add(jsonObject.get("url").toString());
					
				}
			} catch (Exception pe) {
				pe.printStackTrace();
			} finally {
				fileInputStream.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public  boolean convertSearchValue(String fileName,String queryname) {
		 ArrayList<String> searchDetails = new  ArrayList<String>();
		 
		 boolean flag1=false;
		try {

			JSONParser parser = new JSONParser();
			FileInputStream fileInputStream = new FileInputStream(new File(
					fileName));
			byte[] byt = new byte[fileInputStream.available()];

			fileInputStream.read(byt);
			String s = new String(byt);
			try {
				Object obj = parser.parse(s);
				JSONObject jsonObject = (JSONObject) obj;
				JSONArray trends = (JSONArray) jsonObject.get("statuses");
				System.out.println(trends.size());
				for (int i = 0; i < trends.size(); i++) {
					JSONObject jsObject = (JSONObject) trends.get(i);
					JSONObject jObject = (JSONObject) jsObject.get("user");
					
					/*searchDetails.add(jObject.get("id").toString());
					searchDetails.add(jObject.get("name").toString());
					searchDetails.add(jObject.get("screen_name")
							.toString());
					searchDetails.add(jObject.get("screen_name")
							.toString());*/
					
					String data=jsObject.get("text").toString().replaceAll("'"," ");
					System.out.println("tweet is >>>>>>>>>>>>>>>>>>>>>"+data);
					/*earchDetails.add(jsObject.get("created_at")
							.toString());
					searchDetails.addAll(searchDetails);*/
					
					flag1=LoginDao.storeoriginalcontents(queryname,data);
					
					System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>flag1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+flag1);
				}

			} catch (Exception pe) {
				pe.printStackTrace();
			} finally {
				fileInputStream.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag1;
		
	}

	
}
