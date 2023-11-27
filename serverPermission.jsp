<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Permission</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style3 {
	font-size: 16px;
	color: #FF0000;
}
.style7 {color: #FF0000}
.style8 {font-weight: bold}
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
        <div class="article style8">
          <h2 class="style7">Permission To User ... </h2>
          <div class="clr"></div>
          
       
          <div class="clr"></div>
          <p>
          <form action="serverPermission1.jsp" method="post" id="leavereply">
                  <table width="419" border="0" align="center">
                  <tr>
                  <td ><div align="center" class="style3 ">Select Data User</div></td>
		<%@ include file = "connect.jsp" %>	
		<%@ page import = "java.util.*" %>  
		<%
   try {
	   
       String str="Yes";
       Statement st1 = connection.createStatement();
       String query1 ="select * from request where ownerper='"+str+"'";
	   ResultSet rs = st1.executeQuery (query1);
	   ArrayList al = new ArrayList();
	   
	   while(rs.next())
	   {
	   		al.add(rs.getString(2));
	   }
	   
	   %>
               <td >
			   <select name="usr" size="1" class="style9" id="Select User">
                    <option selected="selected">Select User</option>
					<% 
					for(int i=0;i<al.size();i++)
        	        {
        	        %>
					
          			<option><%= al.get(i)%></option>
         		  
                    <%
					}
					%>
                 </select>				 </td>
                 </tr>
				 
                 <tr>
                  <td height="46"><div align="center" class="style3">Search Access</div></td>
                  <td><select name="select">
                      <option>Yes</option>
                      <option>No</option>
                      </select>                  </td>
                  </tr>
				  
                  <tr>
                  <td height="68"><div align="center" class="style3">Download Access</div></td>
                  <td><select name="select2">
                      <option>Yes</option>
                      <option>No</option>
                      </select>				  </td>
                  </tr>
                 </table>
            
          
                <label>
               
                  <div align="center">
                    <input type="submit" name="Submit" value="Grant Access" />
            </div>
                </label>
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
          
                    <p align="right"><a href="webServerMain.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="webServerMain.jsp">Server Main</a></li>
			<li><a href="webServerLogin.html">Log Out</a></li>
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
