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
.style9 {color: #FF0000; font-weight: bold; }
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
	 
	  
	 
		<%
		  
		  	String id = request.getParameter("id");
			String fname = request.getParameter("fname");
			String uname = (String)application.getAttribute("user");
			String yes="Yes";
			
			String query1="select * from request  where user='"+uname+"' and download='"+yes+"'"; 
       		Statement st1=connection.createStatement();
       		ResultSet rs1=st1.executeQuery(query1);
		   
			if ( rs1.next() )
	 		{
		
			
			
	   	%>
		  <form action="Download1.jsp?id=<%=id%>" method="post" name="form1" id="form1">
        <table width="430" border="0" align="center">
                  <tr>
                    <td width="146" bgcolor="#FF0000"><div align="center" class="style9">Enter File Name </div></td>
                    <td width="274"><label>
                      <div align="center">
                        <input required name="t1" type="text" value="<%=fname%>" size="40" />
                      </div>
                    </label></td>
                  </tr>
              
                  <tr>
                    <td height="41" bgcolor="#FF0000"><div align="center" class="style9">Secret Key </div></td>
                    <td><div align="center">
                      <input name="t13" type="text" size="40" />
                    </div></td>
                  </tr>
                 <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="Submit2" value="Req Key" /></td>
                 </tr>
            </table>
          </form>
		  <%
	  		}else
			{
			%>	
			<h2>You Don't Have Permission To Download</h2>
						
						
						
		<%	}	
			
		  %>
	 
			        
      </p>
	  <p align="right"><a href="searchFile1.jsp">Back</a></p>
     
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
