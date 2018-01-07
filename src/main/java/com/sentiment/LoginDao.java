package com.sentiment;

import com.dataa.domain.ExpandKeywordsEntity;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LoginDao {
  static Connection con = null;
  static Statement st = null;
  static ResultSet rs = null;
  static String sql = "";
  static boolean flag = false;

  //----------------------------- Register -------------------------------------------

  public static boolean register(String name, String email, String pass, String dob, String number,
      String gender) {

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();

      sql = "insert into userlogin (username,password,email,dob,gender,mobnum)values "
          +
          "('"
          + name
          + "','"
          + pass
          + "','"
          + email
          + "','"
          + dob
          + "','"
          + gender
          + "','"
          + number
          + "')";
      System.out.println("Sql....." + sql);
      st.executeUpdate(sql);

      System.out.println(sql);

      flag = true;
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return flag;
  }

  public static ResultSet landmark() {

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      Statement st1 = con.createStatement();
      sql = "Select * from u_landmark;";

      System.out.println("Sql....." + sql);
      rs = st.executeQuery(sql);

      System.out.println(sql);
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return rs;
  }

  public static boolean register1(String pass, String name) {

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      Statement st1 = con.createStatement();
      sql = "insert into m_user1 (m_user,m_pass)values " +
          "('" + pass + "','" + name + "')";
      System.out.println("Sql....." + sql);
      st.executeUpdate(sql);

      flag = true;
      System.out.println("values inserted into db_data successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return flag;
  }

  //----------------------------- Login -------------------------------------------
  public static boolean login(String id, String pass) {

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      sql = "select * from userlogin where username='" + id + "' and password='" + pass + "'";
      System.out.println("Sql....." + sql);
      rs = st.executeQuery(sql);
      flag = rs.next();
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return flag;
  }

  public static boolean checkadminexistance(String user, String pass) {

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      sql = "select * from userlogin where username='" + user + "' and password='" + pass + "'";
      System.out.println("Sql....." + sql);
      rs = st.executeQuery(sql);
      flag = rs.next();
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return flag;
  }

  public static boolean ChkUser(String id) {
    boolean result = true;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      sql = "select * from userlogin where username='" + id + "'";
      System.out.println("Sql....." + sql);
      rs = st.executeQuery(sql);
      while (rs.next()) {
        result = false;
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    System.out.println("Username is not present--->" + result);
    return result;
  }

  public static boolean check(String id) throws SQLException {
    boolean result = false;

    DataBaseConnectionPool dbConnectionPool = null;
    try {

      dbConnectionPool =
          new DataBaseConnectionPool(Global.Driver, Global.URL, Global.Uname, Global.Pass);
      con = dbConnectionPool.getConnection();
      if (con == null) {
        con = dbConnectionPool.getConnection();
      }
      //con=DBConnection.getConnection();
      st = con.createStatement();
      sql = "select * from t_word where f_word='" + id + "'";
      System.out.println("Sql....." + sql);
      rs = st.executeQuery(sql);
      while (rs.next()) {
        result = true;
      }
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        rs.close();
        if (con != null) {
          con.close();
        }
        if (dbConnectionPool != null) {
          dbConnectionPool.freeConnection(con);
          // release resources
          dbConnectionPool.destroy();
        }
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
    System.out.println("Username is not present--->" + result);
    return result;
  }

  //----------------------------- Login user name -------------------------------------------
  public static ResultSet loginusername(String id) {

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      sql = "select u_profile_pic from m_user where u_name='" + id + "' ";
      System.out.println("Sql....." + sql);
      rs = st.executeQuery(sql);
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return rs;
  }

  public static boolean editProfile(String[] s) {
    boolean flag = false;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      String sql = "update m_user set u_login_id='"
          + s[1]
          + "',u_cell_no='"
          + s[2]
          + "',u_gender='"
          + s[3]
          + "' where u_code='"
          + s[0]
          + "'";

      int i = st.executeUpdate(sql);
      if (i != 0) {
        flag = true;
      }
      System.out.println("User Edit Profile Status : " + flag);
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-editProfile()....." + e);
    }
    return flag;
  }

  public static ResultSet gettweets(String keyword) {
    ResultSet resultSet = null;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      resultSet = st.executeQuery("select * from m_tweets where college='" + keyword + "'");
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-getProfile()....." + e);
    }
    return resultSet;
  }

  public static List<ExpandKeywordsEntity> getcounts(String keyword) {
    ResultSet resultSet = null;
    Connection con = null;
    Statement st = null;
    final List<ExpandKeywordsEntity> list = new ArrayList<ExpandKeywordsEntity>();

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      resultSet = st.executeQuery(
          "select positive,neutral,negative from m_expand_keywords where expand_keyword='"
              + keyword
              + "'");
      //resultSet.next()
      while (resultSet.next()) {
        int pp = resultSet.getInt(1);
        int ne = resultSet.getInt(2);
        int neg = resultSet.getInt(3);

        list.add(new ExpandKeywordsEntity(pp, ne, neg));
      }
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-getProfile()....." + e);
    } finally {
      try {
        if (resultSet != null) {
          resultSet.close();
        }
        if (st != null) {
          st.close();
        }
        if (con != null) {
          con.close();
        }
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
    return list;
  }

  public static boolean truncatetable(String tablename) {
    int i = 0;
    boolean flg = false;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();

      String sql = "TRUNCATE TABLE  " + tablename + "";

      System.out.println("" + sql);
      i = st.executeUpdate("TRUNCATE TABLE  " + tablename + "");

      if (i != 0) {
        flg = true;
      }
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-getProfile()....." + e);
    }
    return flg;
  }

  public static ArrayList<String> gettweets1(String keyword) {

    ArrayList<String> data = new ArrayList<String>();
    ResultSet resultSet = null;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      resultSet = st.executeQuery("select tweettext from m_tweets where college='" + keyword + "'");
      while (resultSet.next()) {

        data.add(resultSet.getString(1));
      }
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-getProfile()....." + e);
    }
    return data;
  }

  public static ArrayList<String> getexpandkeywords() {

    ArrayList<String> data = new ArrayList<String>();
    ResultSet resultSet = null;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      resultSet = st.executeQuery("select expand_keyword from m_expand_keywords");
      while (resultSet.next()) {

        data.add(resultSet.getString(1));
      }
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-getProfile()....." + e);
    }
    return data;
  }

  public static boolean loginCHK(String name, String pass) {
    boolean flag = false;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      System.out.println(
          "select * from m_user where u_name='" + name + "' and u_pwd='" + pass + "'");
      ResultSet resultSet = st.executeQuery(
          "select * from m_user where u_name='" + name + "' and u_pwd='" + pass + "'");
      while (resultSet.next()) {
        flag = true;
      }
      System.out.println("User Login Status : " + flag);
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-loginCHK()....." + e);
    }
    return flag;
  }

  public static ArrayList<String> keywords()

  {

    ArrayList<String> data = new ArrayList<String>();

    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      System.out.println("select distinct college from m_tweets");
      ResultSet resultSet = st.executeQuery("select distinct college from m_tweets");
      while (resultSet.next()) {
        data.add(resultSet.getString(1));
      }
      System.out.println("User Login Status : " + data);
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-loginCHK()....." + e);
    }
    return data;
  }

  public static ResultSet getm_tweets(String college)

  {

    ArrayList<String> data = new ArrayList<String>();
    ResultSet resultSet = null;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();

      resultSet =
          st.executeQuery("select id,tweettext from m_tweets where college= '" + college + "'");
			/*while(resultSet.next())
			{
				 data.add(resultSet.getString(1));
			}*/
      System.out.println("User Login Status : " + data);
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-loginCHK()....." + e);
    }
    return resultSet;
  }

  public static boolean chnagePass(String pass, String name) {
    boolean flag = false;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      int i = st.executeUpdate(
          "update userlogin set password='" + pass + "' where username='" + name + "'");
      if (i != 0) {
        flag = true;
      }
      System.out.println("User Change Pass Status : " + flag);
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-chnagePass()....." + e);
    }
    return flag;
  }

  public static boolean chnagePassword(int id, String cpass) {
    boolean flag = false;
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      int i = st.executeUpdate("update m_user1 set m_pass='" + cpass + "' where m_id='" + id + "'");
      if (i != 0) {
        flag = true;
      }
      System.out.println("User Change Pass Status : " + flag);
    } catch (Exception e) {
      System.out.println("Opp's Error is in UserDAO-chnagePass()....." + e);
    }
    return flag;
  }

  public static boolean storeoriginalcontents(String queryname, String tweet) {
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      Statement st1 = con.createStatement();
      sql = "insert into m_tweets(college,tweettext) values('" + queryname + "','" + tweet + "')";
      System.out.println("Sql....." + sql);
      st.executeUpdate(sql);

      flag = true;
      System.out.println("values inserted into db_data successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return flag;
  }

  public static boolean storefiltereddata(int id, String college, String s) {
    try {
      con = DBConnection.getConnection();
      st = con.createStatement();
      Statement st1 = con.createStatement();
      sql = "insert into m_tweet_keywords(id,college,tweettext) values('"
          + id
          + "','"
          + college
          + "','"
          + s
          + "')";
      System.out.println("Sql....." + sql);
      st.executeUpdate(sql);

      flag = true;
      System.out.println("values inserted into db_data successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return flag;
  }
}