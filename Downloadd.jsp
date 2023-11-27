<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Result</title>
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
.style6 {font-size: 16px}
.style8 {
	color: #FFFFFF;
	font-weight: bold;
}
.style10 {color: #FFFFFF; font-size: 16px; font-weight: bold; }
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
        
        
		  String fname = request.getParameter("t1");
      	
      		
      		
      		
			
			
      	
      		
			
			
	%>
         
          <table width="542" border="1" align="left" cellpadding="0" cellspacing="0">
				   <tr>
					<td width="79" height="35" bgcolor="#FF0000"><div align="center" class="style6 style8">File ID </div></td>
					<td width="212" bgcolor="#FF0000"><div align="center" class="style10">File Name </div></td>
					<td width="99" bgcolor="#FF0000"><div align="center" class="style10">Rank </div></td>
					<td width="142" bgcolor="#FF0000"><div align="center" class="style10">View</div></td>
				  <%
		
		
			
			
		
			  
      		String query3="select * from ownerfile where fname='"+fname+"' order by rank DESC"; 
            Statement st3=connection.createStatement();
            ResultSet rs3=st3.executeQuery(query3);
	   while ( rs3.next() )
	      {
		  int i=rs3.getInt(1);
		   String s1=rs3.getString(3);
		   String s2=rs3.getString(8);
		  
		
		
		
			
			
					
		%>
		<tr>
			<td height="26"><div align="center"> <%=i%> </div></td>
			<td><div align="center"> <%=s1%> </div></td>
			<td><div align="center"> <%=s2%> </div></td>
			<td><div align="center"><a href="Download1.jsp?id=<%=i%>&t1=<%=s1%>"> <%=s1%> </a></div></td>
		</tr>

		<%
			}
	 
	   %>
			<tr>
			<td height="9"> </td>
			<td> </td>
			<td> </td>
			<td> </td>
			</tr>
			<%
	 
		
           connection.close();
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }
	   %>
	</table>
             
      </p>
	
     
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
