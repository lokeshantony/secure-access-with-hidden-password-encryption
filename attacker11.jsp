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
.style9 {color: #FFFFFF; font-weight: bold; }
.style10 {color: #FF0000}
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
	  
	   <table width="430" border="1" align="center" cellpadding="0" cellspacing="0">
          <tr>
              <td width="64" height="38" bgcolor="#FF0000"><div align="center" class="style9"><span class="style3">SI NO </span></div></td>
              <td width="172" height="38" bgcolor="#FF0000"><div align="center" class="style9"><span class="style3">File Name</span></div></td>
              <td width="186" height="38" bgcolor="#FF0000"><div align="center" class="style9">Rank</div></td>
          </tr>
		  
<%@ include file="connect.jsp" %>
	  <% 
	  try{
	     String file = request.getParameter("t1");
  		String oname = request.getParameter("ot");
		
  			
  		
  	
  		String strQuery = "select * from ownerfile where fname='"+ file +"' ";
  		ResultSet rs = connection.createStatement().executeQuery(strQuery);
  		{
  			while (rs.next() == true) {
			int id=rs.getInt(1);
  			String fn = rs.getString(3);
  			String rank = rs.getString(8);
				%>
				<tr>
                   <td height="41"><div align="center" class="style10"><%=id%></div></td>
                   <td height="41"><div align="center" class="style10"><a href="attacker2.jsp?id=<%=id%>&oname=<%=oname%>"><%=fn%></a></div></td>
	               <td><div align="center" class="style10"><%=rank%></div></td>
            </tr>

              <%
	     }
         connection.close();
         }}
         catch(Exception e)
         {
         out.println(e.getMessage());
         }
     %>
  </table>

				
	  
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
