<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker</title>
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
.style4 {color: #FF3300}
.style5 {color: #2cadff}
.style6 {font-size: 16px}
.style7 {color: #2cadff; font-size: 16px; }
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
          <h2><span>Attacker<span class="style2"></span></span></h2>
          <div class="clr"></div>
          
         
          <div class="clr"></div>
         
       
	  <p> 
	  <%@ include file="connect.jsp" %>
 
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 <%@ page import="java.text.SimpleDateFormat,java.util.Date"%>
		<%
	
	int i;
 	String s2, s3, s4, s5, s6, s7, s12="", s13="", s14="", s15="", s16="";
	try {
		   
			String uname = request.getParameter("t1");
			
			String pass = request.getParameter("t2");
			
			String str=request.getRequestURL()+"";
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			
			
			String keys = "ef50a0ef2c3e3a5f";
					   String h1="";
      		String filename="filename.txt";
		
		
			byte[] keyValue = keys.getBytes();
				Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c1 = Cipher.getInstance("AES");
      			c1.init(Cipher.ENCRYPT_MODE,key);
      			String epass = new String(Base64.encode(pass.getBytes()));
      		
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(epass));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
					   
			
			
				
			String strQuery2 = "update user set password='"+epass+"',hcode='"+h1+"' where username='"+uname+"'   ";
			connection.createStatement().executeUpdate(strQuery2);
			

			String strQuery25 = "insert into pattacker(user,pass,url,dt) values('"+uname+"','"+pass+"','"+str+"','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery25);
						
%>

<p><h1>Attacked Success Fully-- Negative Password Created!!!</h1></p>
<br />

<%
	connection.close();


	} catch (Exception e) {
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
				        
      </p>
	  <p align="right"><a href="index.html">Back</a></p>
     
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home Page</a></li>
           
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
