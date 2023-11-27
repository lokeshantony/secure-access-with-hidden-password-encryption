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
          <h2><span>Attacker<span class="style2"></span></span></h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
          
         
          <div class="clr"></div>
         
       
	  <table width="623" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="54" height="38" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>File No</strong></div></td>
    <td width="96" height="38" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>Attacker </strong></div></td>
    <td width="100" height="38" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong></strong></div></td>
	<td width="102" height="38" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>File Name </strong></div></td>
    <td width="116" bgcolor="#FF0000"><div align="center" class="style9 style7 color1 color1"><strong>Date & Time</strong></div></td>

	 <td width="115" bgcolor="#FF0000"><div align="center" class="style7 style9 color1 color1"><strong>URL & Hash Code </strong></div></td>
  </tr>
 <%@ include file="connect.jsp" %>
<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from attacker"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);

		s4=rs.getString(6);
		
      		String query1="select * from ownerfile where id='"+i+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(query1);
	while( rs1.next() )
	   {
		String ss=rs1.getString(2);
	s7=rs1.getString(5);
	 s8=rs1.getString(6);
	
		%>

  <tr>
      <td height="41"><div align="center" class="style11"><%=i%></div></td>
      <td height="41"><div align="center" class="style11"><%=s1%></div></td>
	   	    <td height="41"><div align="center" class="style11"><%=ss%></div></td>
			<td><div align="center" class="style11"><%=s2%> </a></div>			</td>
	   <td><div align="center" class="style11"><%=s4%></div></td>
		  <td><div align="center" class="style11"><a href="url&TrapDoor.jsp?url=<%=s8%>&td=<%=s7%>&att=<%="att"%>"><%="Details"%></a></div></td>
  </tr>

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
