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

		 <script language="javascript" type='text/javascript'>
         function loadFileAsText()
         {
	     var fileToLoad = document.getElementById("file").files[0];
	     var fileReader = new FileReader();
	     fileReader.onload = function(fileLoadedEvent) 
	     {
		 var textFromFileLoaded = fileLoadedEvent.target.result;
		 document.getElementById("textarea").value = textFromFileLoaded;
	     };
	     fileReader.readAsText(fileToLoad, "UTF-8");
         }
         </script>
<style type="text/css">
<!--
.style2 {color: #1f7fbb}
.style9 {color: #FFFF00; font-weight: bold; }
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
		
  String prcst="",attcksttus="",prc="";
  String fn="", ct="",sk="",mac="",id1="";
  
  	try {
  		String id = request.getParameter("id");
  		String oname = request.getParameter("oname");
		application.setAttribute("a",id);
		application.setAttribute("oname",oname);
  			
  		
  	
  		String strQuery = "select * from ownerfile where id='"+ id +"' ";
  		ResultSet rs = connection.createStatement().executeQuery(strQuery);
  		{
  			if (rs.next() == true) {
			    id1 = rs.getString(1);
  				fn = rs.getString(3);
  				ct = rs.getString(4);
				mac =rs.getString(5);
				String keys="ef50a0ef2c3e3a5f";
				
				        byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String decryptedValue = new String(Base64.decode(ct.getBytes()));
						
						PrintStream p = new PrintStream(new FileOutputStream(fn));
			p.print(new String(ct));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(fn);
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
			String h1 = bi1.toString(16);
			

  				
  %>

<form action="attacker22.jsp" method="get" name="form1" >
<table width="478" border="0" align="center">
	<tr>
		<td width="223" bgcolor="#FF0000"><div align="center" class="style9"><span class="style3">Enter File Name </span></div></td>
		<td width="245"><label> <input required name="t1"type="text" value="<%=fn%>" size="40" /> </label></td>
	</tr>

	<tr>
		<td height="34" bgcolor="#FF0000"><div align="center" class="style9"><span class="style3">Ur Name </span></div></td>
		<td><input name="t12" type="text" value="<%=oname%>" size="40" /></td>
	</tr>
		
	<tr>
		<td bgcolor="#FF0000"><div align="center" class="style9"><span class="style3">File Content </span></div></td>
		<td><textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea></td>
	</tr>


	<tr>
		<td height="34" bgcolor="#FF0000"><div align="center" class="style9"><span class="style3">Hash Code </span></div></td>
		<td><input name="t13" type="text" size="40" /></td>
	</tr>
	<tr>
		<td><div align="right"></div></td>
		<td><label> <input type="submit" name="Submit2"value="Attack" /> </label></td>
	</tr>
</table>
</form>

<%
			} 
  		else {
  			out.println("File Doesn't Exist..!");
%> 
								<%
								}
									}

									connection.close();
  		
  							  			
  	}					catch(Exception e) {
									out.println(e.getMessage());
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
