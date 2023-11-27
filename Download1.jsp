<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request SecretKey</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style2 {color: #1f7fbb}
.style10 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="index.html">SECURE ACCESS WITH HIDDEN PASSWORD ENCRYPTION</a></h2>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li class="active"><a href="endUserLogin.html">Client</a></li>
          <li><a href="dataOwnerLogin.html"></a></li>
          <li><a href="webServerLogin.html">WebServer</a></li>
          <li></li>
		  <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <img src="images/main_img.jpg" alt="" width="972" height="313" style="padding:25px 0;" />
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Search Result <span class="style2"></span></span></h2>
          <div class="clr"></div>
          
         
          <div class="clr"></div>
         
       
	  <p> 
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  
	 
		 <%
		  
		    	try 
				{
				String trapdoor="",sk="",task="",yes="";
				String id = request.getParameter("id");
		  		String file = request.getParameter("t1");
				String user=(String) application.getAttribute("user");
				
				String strQuery = "select * from ownerfile where id='"+id+"' and fname='"+file+"'";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(strQuery);
		
					if(rs.next()==true)
					{
					sk=rs.getString(7);
				
						
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

					Date now = new Date();

					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;	
					task="Download";
					
					String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"+user+"','"+file+"','"+sk+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery2);
					 yes="Yes";
					String strQuery1 = "select * from request where user='"+user+"' and download='"+yes+"'";
					ResultSet rs1 = connection.createStatement().executeQuery(strQuery1);
					if(rs1.next()==true)
					{
			%>
			
		  <form action="Download2.jsp" method="post" name="form1" id="form1">
            <table width="478" border="0" align="center">
              <tr>
                <td width="223" height="51" bgcolor="#FF0000"><span class="style10">Enter File Name </span></td>
                <td width="245"><label>
                  <input required name="t1" type="text" value="<%=file%>" size="40" />
                </label></td>
              </tr>
             
              <tr>
                <td height="35" bgcolor="#FF0000"><span class="style10">Secret Key </span></td>
                <td><input name="t13" type="text" value="<%=sk%>" size="40" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><label>
                  <input type="submit" name="Submit2" value="Download" />
                </label></td>
              </tr>
            </table>
          </form>		
			
			<%	
			
			}
					else{
					out.println("You Don't Have Permission To Download..!");
					}
					}
					else
					{
		
						out.println("File Doesn't Exist..!");
			%>
						<p><a href="Downloadd.jsp">Back</a></p>
	<%
					}
	
	 
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 		  
			        
	 
			        
      </p>
	  <p align="right"><a href="Downloadd.jsp"></a></p>
     
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="endUserMain.jsp">Client Main</a></li>
            <li><a href="endUserLogin.html">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
      <div class="fbg"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    
    <div class="clr"></div>
  </div>
</div>
</body>
</html>
