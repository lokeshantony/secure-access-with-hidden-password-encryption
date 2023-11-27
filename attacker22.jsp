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
.style1 {color: #1f7fbb}
.style3 {font-size: 20px}
.style5 {color: #FFFFFF}
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
	
          <h2><span>Owner Data Upload<span class="style1"> </span></span></h2>
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
 

<%

    try 
	{
      		String file=request.getParameter("t1");
      		String cont=request.getParameter("text");
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      		
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
      		
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(cont));
			
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
			
      		
	
%>
		  <form action="attacker3.jsp" method="post">
		  		<table width="598"   border="1.5"  cellpadding="0" cellspacing="0">

            <tr>
              <td width="189" height="35" bgcolor="#FF0000"><div align="center" class="style5"><span class="style3">File Name  </span></div></td>
              <td width="403"><div align="center">
                <input name="t1" type="text" id="t42" size="50" value="<%= file %>" readonly="readonly" />
              </div></td>
            </tr>
            <tr>
              <td height="261" bgcolor="#FF0000"><span class="style5"></span></td>
              <td><div align="center">
                <textarea name="text" cols="50" rows="15" readonly><%= encryptedValue %></textarea>
              </div></td>
            </tr>
            <tr>
              <td height="35" bgcolor="#FF0000"><div align="center" class="style5"><span class="style3">Hash Code </span></div></td>
              <td><div align="center">
                <input name="t2" type="text" id="t4" size="50" value="<%= h1 %>" readonly="readonly" />
              </div></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style5"></span></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="right">
              </div></td>
              <td><input type="submit" name="Submit2" value="Attack" /></td>
            </tr>
          </table>
		  </form>
		  <%

	   

           connection.close();
     }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
		  
%>
</p>
					
          
        </div>
       
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Upload Data</a></li>
            <li><a href="endUserLogin.html">Grant Permission</a></li>
            <li><a href="dataOwnerLogin.html">View Files</a></li>
            <li><a href="webServerLogin.html">Verify Data</a></li>
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
