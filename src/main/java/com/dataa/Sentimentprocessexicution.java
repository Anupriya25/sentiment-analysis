package com.dataa;

import com.dataa.domain.ExpandKeywordsEntity;
import com.sentiment.AdminDAO;
import com.sentiment.LoginDao;
import com.sentiment.Utility;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Sentimentprocessexicution {

  public static boolean senti(String college) throws SQLException {
    ArrayList<String> expandkeywords = new ArrayList<String>();
    System.out.println("college name in sentimentprocessexicution" + college);
    String expandkeyword = "";
    System.out.println("its came inside the>>>>>>>>>>>>>>>>>>>>>sentimentprocess");
    String sensitivetype = "";
    boolean flag77 = false;
    boolean flagfinal = false;

    boolean fg = AdminDAO.checkcollegeexist(college);

    System.out.println(
        "fg value is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            + fg);

    if (fg) {
      ArrayList<String> datafilteredtweets = new ArrayList<String>();
      ArrayList<String> tweetsid = new ArrayList<String>();
      ArrayList<String> relatedtopics = new ArrayList<String>();

      tweetsid = AdminDAO.gettweetsid();

      for (int j = 0; j < tweetsid.size(); j++) {

        int positive1 = 0;
        int negative1 = 0;
        int neutral1 = 0;
        System.out.println("============ID==========" + tweetsid.get(j));
        // college = AdminDAO.gettopic(tweetsid.get(j));

        System.out.println(
            "related topics are>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
                + relatedtopics);

        datafilteredtweets = AdminDAO.getfilteddata(tweetsid.get(j));

        for (String data : datafilteredtweets) {
          ArrayList<String> assigncount = new ArrayList<String>();
          int positive = 0;
          int negative = 0;
          int neutral = 0;

          System.out.println("filtered tweets are>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + data);

          if (data.equals(null) || data.equals("")) {

            System.out.println("shanu");

            boolean datafilteredtweets1 = AdminDAO.updateundecidable(tweetsid.get(j), data);
            System.out.println(
                "data undecidable::::::::::::::::::::::::::::::" + datafilteredtweets1);
          } else {
            String[] data1 = data.split(",");
            //#Spliting words in each line
            for (String splitword : data1) {

              ArrayList<String> checknoun = new ArrayList<String>();
              System.out.println(">>>>>>>>>>" + splitword.trim());

              boolean f1 = AdminDAO.checkNoun(splitword.trim());

              if (f1) {

              } else {
                checknoun.add(splitword.trim());
              }
              ArrayList<String> newlist = new ArrayList<String>();
              for (int i = 0; i < checknoun.size(); i++) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(checknoun.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      checknoun.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                System.out.println(
                    "remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + checknoun.get(i));

                sensitivetype = AdminDAO.checksensitivewords(checknoun.get(i));

                String b[] = sensitivetype.split("~~");
                String sentype = b[0];
                String k = b[1];
                int m = Integer.parseInt(k);

                System.out.println(
                    "----------------------------------------checknoun.get(i)---" + checknoun.get(
                        i));

                System.out.println("----------------------------------------Sentype---" + sentype);

                System.out.println("----------------------------------------m---" + m);

                if (sentype.equals("positive")) {
                  positive++;
                } else if (sentype.equals("negative")) {
                  negative++;
                } else if (sentype.equals("neutral")) {

                  neutral++;
                }

                System.out.println(
                    "----------------------------------------positive---" + positive);

                System.out.println(
                    "----------------------------------------negative---" + negative);

                System.out.println("----------------------------------------neutral---" + neutral);

                positive1 = positive;
                negative1 = negative;
                neutral1 = neutral;

                if (m == 0) {

                  assigncount.add(checknoun.get(i));
                }
                System.out.println();
              }
            }

            for (int i = 0; i < assigncount.size(); i++) {

              if (positive > negative) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(assigncount.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      assigncount.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                flag77 = AdminDAO.insertSecondExpKeywordpositive(assigncount.get(i), college);
              } else if (positive < negative) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(assigncount.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      assigncount.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                flag77 = AdminDAO.insertSecondExpKeywordnegative(assigncount.get(i), college);
              } else if (positive == negative) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(assigncount.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      assigncount.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                flag77 = AdminDAO.insertSecondExpKeywordneutral(assigncount.get(i), college);
              }
            }

            if (positive > negative || positive > neutral) {
              String pos = "positive";
              AdminDAO.insertmtweets(pos, tweetsid.get(j));
            }

            if (negative > positive || negative > neutral) {
              String neg = "negative";
              AdminDAO.insertmtweets(neg, tweetsid.get(j));
            }
            if (positive == negative) {

              String neu = "neutral";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }

            if (neutral > positive || neutral > negative) {
              String neu = "neutral";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }

            if (neutral == positive) {
              String neu = "positive";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }

            if (neutral == negative) {
              String neu = "negative";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }
          }

          System.out.println(
              "positive1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + positive1);
          System.out.println(
              "negative1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + negative1);
          System.out.println(
              "neutral1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + neutral1);

          if (positive1 > negative1) {
            String pos = "positive";
            AdminDAO.insertmtweets(pos, tweetsid.get(j));
          }

          if (negative1 > positive1) {
            String neg = "negative";
            AdminDAO.insertmtweets(neg, tweetsid.get(j));
          }
          if (positive1 == negative1) {

            String neu = "neutral";
            AdminDAO.insertmtweets(neu, tweetsid.get(j));
          }

          if (negative1 > neutral1) {
            String neu = "negative";
            AdminDAO.insertmtweets(neu, tweetsid.get(j));
          }
        }
      }
      boolean posflag = false;
      boolean negflag = false;
      boolean nueflag = false;

      boolean deleneg = false;
      boolean delepos = false;
      boolean deleneu = false;
      try {
        Thread.sleep(1000);
      } catch (InterruptedException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      ArrayList<String> positivenewwords = new ArrayList<String>();
      ArrayList<String> neagtivenewwords = new ArrayList<String>();
      ArrayList<String> neutralnewwords = new ArrayList<String>();
      String Treshold = Utility.getPro("Treshold");

      int thre = Integer.parseInt(Treshold);

      expandkeywords = LoginDao.getexpandkeywords();

      for (int i = 0; i < expandkeywords.size(); i++) {

        expandkeyword = expandkeywords.get(i);
        final List<ExpandKeywordsEntity> list = LoginDao.getcounts(expandkeyword);

        for (ExpandKeywordsEntity entity : list) {

          //
          //
          //int pp=rs.getInt(1) ;
          //int ne=rs.getInt(2) ;
          //int neg=rs.getInt(3) ;

          int pp = entity.getPositive();
          int ne = entity.getNeutral();
          int neg = entity.getNegative();

          if (pp > thre && ne < thre && neg < thre) {
            posflag = AdminDAO.insertsensitivepositive(expandkeyword);
            if (posflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp > thre && ne == thre && neg == thre) {
            posflag = AdminDAO.insertsensitivepositive(expandkeyword);

            if (posflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp < thre && ne < thre && neg > thre) {
            negflag = AdminDAO.insertsensitivenegative(expandkeyword);

            if (negflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp == thre && ne == thre && neg > thre) {
            negflag = AdminDAO.insertsensitivenegative(expandkeyword);

            if (negflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp < thre && ne > thre && neg < thre) {
            nueflag = AdminDAO.insertsensitiveneural(expandkeyword);

            if (nueflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp == thre && ne > thre && neg == thre) {
            nueflag = AdminDAO.insertsensitiveneural(expandkeyword);

            if (nueflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          }
        }
      }
			   
			   
			    
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			 /* positivenewwords=   AdminDAO.secondexpansionpos_words(thre);
			  System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>positivewordexpansion>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+positivenewwords);
			  
			  for(int i=0; i<positivenewwords.size();i++)
			  {
				  String expan_key=positivenewwords.get(i);
				posflag=  AdminDAO.insertsensitivepositive(expan_key);
				 if(posflag)
				  {
					  
		 	 AdminDAO.deleteposexkeywords(expan_key);
					  
				  }
				  
				  
				  
			  }
			
			   
			  neagtivenewwords=   AdminDAO.secondexpansionneg_words(thre);
			  System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>neagtivenewwords>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+neagtivenewwords);
			
			  for(int i=0; i<neagtivenewwords.size();i++)
			  {
				  String expan_key=neagtivenewwords.get(i);
				  negflag=	  AdminDAO.insertsensitivenegative(expan_key);
				  
				  
				  
				if(negflag)
				  {
					  
						 AdminDAO.deleteposexkeywords(expan_key);
					  
				  }
			  }
			
			  neutralnewwords=   AdminDAO.secondexpansionneu_words(thre);
			
			   System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>neutralnewwords>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+neutralnewwords);
		
			   for(int i=0; i<neutralnewwords.size();i++)
				  {
					  String expan_key=neutralnewwords.get(i);
					  nueflag= AdminDAO.insertsensitiveneural(expan_key);
					  
					  
					  
					  
					 if(nueflag)
					  {
						  
							 AdminDAO.deleteposexkeywords(expan_key);
						  
					  }
				  }
			*/

    } else {
      AdminDAO.insertcollegename(college);

      ArrayList<String> datafilteredtweets = new ArrayList<String>();
      ArrayList<String> tweetsid = new ArrayList<String>();
      ArrayList<String> relatedtopics = new ArrayList<String>();

      tweetsid = AdminDAO.gettweetsid();

      for (int j = 0; j < tweetsid.size(); j++) {

        int positive1 = 0;
        int negative1 = 0;
        int neutral1 = 0;
        System.out.println("============ID==========" + tweetsid.get(j));
        // college = AdminDAO.gettopic(tweetsid.get(j));

        System.out.println(
            "related topics are>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
                + relatedtopics);

        datafilteredtweets = AdminDAO.getfilteddata(tweetsid.get(j));

        for (String data : datafilteredtweets) {
          ArrayList<String> assigncount = new ArrayList<String>();
          int positive = 0;
          int negative = 0;
          int neutral = 0;

          System.out.println("filtered tweets are>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + data);

          if (data.equals(null) || data.equals("")) {

            System.out.println("shanu");

            boolean datafilteredtweets1 = AdminDAO.updateundecidable(tweetsid.get(j), data);
            System.out.println(
                "data undecidable::::::::::::::::::::::::::::::" + datafilteredtweets1);
          } else {
            String[] data1 = data.split(",");
            //#Spliting words in each line
            for (String splitword : data1) {

              ArrayList<String> checknoun = new ArrayList<String>();
              System.out.println(">>>>>>>>>>" + splitword.trim());

              boolean f1 = AdminDAO.checkNoun(splitword.trim());

              if (f1) {

              } else {
                checknoun.add(splitword.trim());
              }
              ArrayList<String> newlist = new ArrayList<String>();
              for (int i = 0; i < checknoun.size(); i++) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(checknoun.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      checknoun.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                System.out.println(
                    "remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + checknoun.get(i));

                sensitivetype = AdminDAO.checksensitivewords(checknoun.get(i));

                String b[] = sensitivetype.split("~~");
                String sentype = b[0];
                String k = b[1];
                int m = Integer.parseInt(k);

                System.out.println(
                    "----------------------------------------checknoun.get(i)---" + checknoun.get(
                        i));

                System.out.println("----------------------------------------Sentype---" + sentype);

                System.out.println("----------------------------------------m---" + m);

                if (sentype.equals("positive")) {
                  positive++;
                } else if (sentype.equals("negative")) {
                  negative++;
                } else if (sentype.equals("neutral")) {

                  neutral++;
                }

                System.out.println(
                    "----------------------------------------positive---" + positive);

                System.out.println(
                    "----------------------------------------negative---" + negative);

                System.out.println("----------------------------------------neutral---" + neutral);

                positive1 = positive;
                negative1 = negative;
                neutral1 = neutral;

                if (m == 0) {

                  assigncount.add(checknoun.get(i));
                }
                System.out.println();
              }
            }

            for (int i = 0; i < assigncount.size(); i++) {

              if (positive > negative) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(assigncount.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      assigncount.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                flag77 = AdminDAO.insertSecondExpKeywordpositive(assigncount.get(i), college);
              } else if (positive < negative) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(assigncount.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      assigncount.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                flag77 = AdminDAO.insertSecondExpKeywordnegative(assigncount.get(i), college);
              } else if (positive == negative) {

                ArrayList<String> m_words = new ArrayList<String>();
                m_words = AdminDAO.checkw_words();

                for (int q = 0; q < m_words.size(); q++) {
                  System.out.println(
                      ">>>>>>>>>>>>>>>m_words1>>>>>>>>>>>>>>>>>>>>>>>" + m_words.get(q));
                  String[] splittedline = m_words.get(q).split("-");

                  for (int i1 = 0; i1 < splittedline.length; i1++) {

                    System.out.println(
                        "splitted line is >>>>>>>>>>>>>>>>>>>>>>>>>>>" + splittedline[i1]);

                    if (splittedline[i1].contains(assigncount.get(i))) {
                      String datam_word = AdminDAO.getparticularw_word(m_words.get(q));

                      System.out.println("particular m_word is" + datam_word);
                      //checknoun.add( 2, "New" );
                      assigncount.set(i, datam_word);

                      //newlist.add(datam_word);

                    } else {

                      // System.out.println("remaing words>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+checknoun.get(i));

                    }
                  }
                }

                flag77 = AdminDAO.insertSecondExpKeywordneutral(assigncount.get(i), college);
              }
            }

            if (positive > negative || positive > neutral) {
              String pos = "positive";
              AdminDAO.insertmtweets(pos, tweetsid.get(j));
            }

            if (negative > positive || negative > neutral) {
              String neg = "negative";
              AdminDAO.insertmtweets(neg, tweetsid.get(j));
            }
            if (positive == negative) {

              String neu = "neutral";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }

            if (neutral > positive || neutral > negative) {
              String neu = "neutral";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }

            if (neutral == positive) {
              String neu = "positive";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }

            if (neutral == negative) {
              String neu = "negative";
              AdminDAO.insertmtweets(neu, tweetsid.get(j));
            }
          }

          System.out.println(
              "positive1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + positive1);
          System.out.println(
              "negative1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + negative1);
          System.out.println(
              "neutral1 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + neutral1);

          if (positive1 > negative1) {
            String pos = "positive";
            AdminDAO.insertmtweets(pos, tweetsid.get(j));
          }

          if (negative1 > positive1) {
            String neg = "negative";
            AdminDAO.insertmtweets(neg, tweetsid.get(j));
          }
          if (positive1 == negative1) {

            String neu = "neutral";
            AdminDAO.insertmtweets(neu, tweetsid.get(j));
          }

          if (negative1 > neutral1) {
            String neu = "negative";
            AdminDAO.insertmtweets(neu, tweetsid.get(j));
          }
        }
      }
      boolean posflag = false;
      boolean negflag = false;
      boolean nueflag = false;

      boolean deleneg = false;
      boolean delepos = false;
      boolean deleneu = false;
      try {
        Thread.sleep(1000);
      } catch (InterruptedException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      ArrayList<String> positivenewwords = new ArrayList<String>();
      ArrayList<String> neagtivenewwords = new ArrayList<String>();
      ArrayList<String> neutralnewwords = new ArrayList<String>();
      String Treshold = Utility.getPro("Treshold");

      int thre = Integer.parseInt(Treshold);

      expandkeywords = LoginDao.getexpandkeywords();

      for (int i = 0; i < expandkeywords.size(); i++) {

        expandkeyword = expandkeywords.get(i);

        final List<ExpandKeywordsEntity> list = LoginDao.getcounts(expandkeyword);

        for (ExpandKeywordsEntity entity : list) {

          //
          //
          //int pp=rs.getInt(1) ;
          //int ne=rs.getInt(2) ;
          //int neg=rs.getInt(3) ;

          int pp = entity.getPositive();
          int ne = entity.getNeutral();
          int neg = entity.getNegative();

        //ResultSet rs = LoginDao.getcounts(expandkeyword);
        //
        //while (rs.next()) {

          //int pp = rs.getInt(1);
          //int ne = rs.getInt(2);
          //int neg = rs.getInt(3);

          if (pp > thre && ne < thre && neg < thre) {
            posflag = AdminDAO.insertsensitivepositive(expandkeyword);
            if (posflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp > thre && ne == thre && neg == thre) {
            posflag = AdminDAO.insertsensitivepositive(expandkeyword);

            if (posflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp < thre && ne < thre && neg > thre) {
            negflag = AdminDAO.insertsensitivenegative(expandkeyword);

            if (negflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp == thre && ne == thre && neg > thre) {
            negflag = AdminDAO.insertsensitivenegative(expandkeyword);

            if (negflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp < thre && ne > thre && neg < thre) {
            nueflag = AdminDAO.insertsensitiveneural(expandkeyword);

            if (nueflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          } else if (pp == thre && ne > thre && neg == thre) {
            nueflag = AdminDAO.insertsensitiveneural(expandkeyword);

            if (nueflag) {

              AdminDAO.deleteposexkeywords(expandkeyword);
            }
          }
        }
      }
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			/*  positivenewwords=   AdminDAO.secondexpansionpos_words(thre);
			  System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>positivewordexpansion>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+positivenewwords);
			  
			  for(int i=0; i<positivenewwords.size();i++)
			  {
				  String expan_key=positivenewwords.get(i);
				posflag=  AdminDAO.insertsensitivepositive(expan_key);
				 if(posflag)
				  {
					  
		 	 AdminDAO.deleteposexkeywords(expan_key);
					  
				  }
				  
				  
				  
			  }
			
			   
			  neagtivenewwords=   AdminDAO.secondexpansionneg_words(thre);
			  System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>neagtivenewwords>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+neagtivenewwords);
			
			  for(int i=0; i<neagtivenewwords.size();i++)
			  {
				  String expan_key=neagtivenewwords.get(i);
				  negflag=	  AdminDAO.insertsensitivenegative(expan_key);
				  
				  
				  
				if(negflag)
				  {
					  
						 AdminDAO.deleteposexkeywords(expan_key);
					  
				  }
			  }
			
			  neutralnewwords=   AdminDAO.secondexpansionneu_words(thre);
			
			   System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>neutralnewwords>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+neutralnewwords);
		
			   for(int i=0; i<neutralnewwords.size();i++)
				  {
					  String expan_key=neutralnewwords.get(i);
					  nueflag= AdminDAO.insertsensitiveneural(expan_key);
					  
					  
					  
					  
					 if(nueflag)
					  {
						  
							 AdminDAO.deleteposexkeywords(expan_key);
						  
					  }
				  }
			
			   
			   
		
			
		
							
			*/

    }
    return true;
  }
}
		 
		 

	
	
