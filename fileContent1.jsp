<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Permission</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style1 {color: #1f7fbb}
.style3 {color: #FF0000}
.style5 {color: #FF0000; font-weight: bold; }
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
          <li><a href="endUserLogin.html">Client</a></li>
          <li class="active"><a href="dataOwnerLogin.html"></a></li>
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
	
          <h2><span>WelCome To </span></h2>
          <div class="clr"></div>
         
         
          <div class="clr"></div>
          <p>
		  
  		  <%@ include file="connect.jsp" %>	
<%@ page import = "java.security.Key"%>
<%@ page import="javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%
		  	
		    	try 
				{
		  		String id = request.getParameter("id");
				String strQuery = "select * from ownerfile where id='"+id+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
				{
					if(rs.next()==true)
					{   String fname=rs.getString(3);
						String ct=rs.getString(4);
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String decryptedValue = new String(Base64.decode(ct.getBytes()));
							
%>
</p>

<label>

          <p align="left"><span class="style5">File Name</span> <span class="style3">:</span> 
		    <input type="text" name="textfield" value="<%= fname %>"/>
          </p>
          <p align="left"><textarea name="text" id="textarea" cols="65" rows="22"><%=decryptedValue%></textarea>
          </p>
          
	              </label>
		 
<p>
<%	
	}
	else
	{
						
%>
</p>
		  <p align="right"><a href="viewOwnerFiles.jsp">Back</a>
		  <h2 class="style1">File Doesn't Exist..!</h2>
		  </p>
		  <p align="right"><a href="Download.jsp">Back</a></p>
	<%
	 }
		}
        connection.close();
		  } 
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 
  		  </p>
          <p align="right"><a href="dataOwnerMain.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="dataOwnerMain.jsp">Owner Main</a></li>
            <li><a href="dataOwnerLogin.html">Log Out</a></li>
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
