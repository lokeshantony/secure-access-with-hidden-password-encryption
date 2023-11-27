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
.style6 {color: #1f7fbb; font-size: 14px; }
.style7 {
	color: #FFFFFF;
	font-weight: bold;
}
.style9 {color: #FFFFFF; font-size: 14px; font-weight: bold; }
.style11 {color: #FF0000; font-weight: bold; }
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
          <table width="625" border="1"  cellpadding="0" cellspacing="0">
            <tr>
              <td width="60" height="30" bgcolor="#FF0000"><div align="center" class="style6 style7"><strong>User ID </strong></div></td>
              <td width="100" bgcolor="#FF0000"><div align="center" class="style9"><strong>User Name </strong></div></td>
              <td width="120" bgcolor="#FF0000"><div align="center" class="style9"><strong>Search Permission </strong></div></td>
              <td width="140" bgcolor="#FF0000"><div align="center" class="style9"><strong>Download Permission </strong></div></td>
              <td width="100" bgcolor="#FF0000"><div align="center" class="style9"><strong>Approve</strong></div></td>
              <%@ include file="connect.jsp" %>
              <%	  
			  
			  
	            String s1="",s2="",s3="",s4="",s5="";
	            int i=0,j=0,k=0;

      	        try 
	               {
        
                   
      		       String uname=(String)application.getAttribute("owner");
      		       String query="select * from request where dataowner='"+uname+"'"; 
                   Statement st=connection.createStatement();
                   ResultSet rs=st.executeQuery(query);
	               while ( rs.next() )
	                {
	         	     i=rs.getInt(1);
		             s2=rs.getString(2);
		             s3=rs.getString(3);
		             s4=rs.getString(4);
		             s5=rs.getString(5);
		%>
            </tr>
            <tr>
              <td height="28"><div align="center" class="style11"><%=i%></div></td>
              <td><div align="center" class="style11"><%=s2%></div></td>
              <td><div align="center" class="style11"><%=s3%></div></td>
              <td><div align="center" class="style11"><%=s4%></div></td>
              <%	
			      if(s5.equalsIgnoreCase("No"))
			        {
			
		%>
              <td><div align="center" class="style11"><a href="ownerPermission1.jsp?uid=<%=i%>"><%=s5%></a></div></td>
              <%
		
			        }
			    else
			        {
		%>
              <td width="91"><div align="center" class="style11"><%=s5%></div></td>
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
