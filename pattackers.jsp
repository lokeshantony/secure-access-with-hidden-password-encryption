<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Password Attacker</title>
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
.style7 {font-size: 15px}
.style9 {color: #FFFFFF}
.style11 {font-size: 14px; color: #FF0000; font-weight: bold; }
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
          <li class="active"><a href="webServerLogin.html">WebServer</a></li>
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
          <h2><span>View All Password Attacker<span class="style2"></span></span> !!! </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
          
         
          <div class="clr"></div>
         
       
	  <table width="623" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="54" height="38" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>Attacked Username</strong></div></td>
    <td width="96" height="38" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>Attacked Password </strong></div></td>
    <td width="100" height="38" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>Attacker URL</strong></div></td>
    <td width="116" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>Attacked Date & Time</strong></div></td>
  </tr>
 <%@ include file="connect.jsp" %>
<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
 
      	   String query="select * from pattacker"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while( rs.next() )
	   {
		
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		
		%>

  <tr>
      <td height="41"><div align="center" class="style11"><%=s1%></div></td>
      <td height="41"><div align="center" class="style11"><%=s2%></div></td>
	  <td height="41"><div align="center" class="style11"><textarea cols="20" rows="5"><%=s3%></textarea></div></td>
	  <td height="41"> <div align="center" class="style11"><%=s4%></div></td>
  </tr>

<%
	
	 	 }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>    
      </p>
	  <p align="right"><a href="webServerMain.jsp">Back</a></p>
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
