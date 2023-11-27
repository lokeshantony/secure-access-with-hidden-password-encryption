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
.style4 {color: #FF3300}
.style6 {font-size: 16px}
.style8 {color: #FF0000}
.style9 {color: #FF0000; font-size: 16px; }
.style10 {color: #FF0000; font-weight: bold; }
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
        String s1="",s2="",s3="",s4="",s5="",s11="",s12="",s13="",s14="",s15="",s21="",s22="",s23="",s24="",s25="";
	int i=0,j=0,k=0;
	String per ="",yes="";	
        
		  String keyword = request.getParameter("keyword");
      	  String keys = "ef50a0ef2c3e3a5f";
      		
      		
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		byte[] keyValue = keys.getBytes();
      		Key key = new SecretKeySpec(keyValue, "AES");
      		Cipher c = Cipher.getInstance("AES");
      		c.init(Cipher.ENCRYPT_MODE, key);
      		String search = new String(Base64.encode(keyword.getBytes()));
		
			
      		String uname=(String)application.getAttribute("user");
      		
			yes="Yes";
			
			String query1="select * from request  where user='"+uname+"' and search='"+yes+"'"; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			
			
			
	if ( rs1.next() )
        {
		           %>
          <h3><span class="style4"><%=keyword%> </span>Result</h3>
			       <table width="542" border="1" align="left" cellpadding="0" cellspacing="0">
				   <tr>
					<td width="79" height="35"><div align="center" class="style6 style8">File ID </div></td>
					<td width="212"><div align="center" class="style9">File Name </div></td>
					<td width="99"><div align="center" class="style9">Rank </div></td>
					<td width="142"><div align="center" class="style9">Download</div></td>
				  <%
		
			per="Yes";
		    String Query2 ="insert into search(user,keyword,permission,dt) values('"+uname+"','"+keyword+"','"+per+"','"+dt+"')";
			connection.createStatement().executeUpdate(Query2);
			
			
			
		
			  
      		String query3="select * from ownerfile order by rank DESC"; 
            Statement st3=connection.createStatement();
            ResultSet rs3=st3.executeQuery(query3);
	   while ( rs3.next() )
	      {
		   i=rs3.getInt(1);
		   s1=rs3.getString(3);
		   s2=rs3.getString(4);
		   s3=rs3.getString(8);
		
		
		
		String decryptedValue = new String(Base64.decode(s2.getBytes()));
			
      	
	  
		if(decryptedValue.toLowerCase().contains(keyword.toLowerCase()))
		{
			String Query4 = "select * from ownerfile where fname='"+s1+"'";
			ResultSet rs4 = connection.createStatement().executeQuery(Query4);
			
			if(rs4.next()==true)
			{
				String rank=rs4.getString(8);
				int updaterank = Integer.parseInt(rank)+1;
				String Query5 = "update ownerfile set rank='"+updaterank+"' where fname='"+s1+"'";
				connection.createStatement().executeUpdate(Query5);
			}
			
			
			
					
		%>
		<tr>
			<td height="26"><div align="center" class="style10 style8"> <%=i%> </div></td>
			<td><div align="center" class="style10 style8"> <%=s1%> </div></td>
			<td><div align="center" class="style10 style8"> <%=s3%> </div></td>
			<td><div align="center" class="style10 style8"><a href="searchDownload.jsp?id=<%=i%>&fname=<%=s1%>"> <%=s1%> </a></div></td>
		</tr>

		<%
			}
	   }
	   %>
			<tr>
			<td height="9"> </td>
			<td> </td>
			<td> </td>
			<td> </td>
			</tr>
			<%
	   		 }
			 else{
			 %>
			 <h3>You Are Not Having Search Permission</h3>
			 <%
			 
			 }
           connection.close();
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }
	   %>
	</table>


      </p>
	  
      <p align="right">&nbsp;</p>
      <p align="right">&nbsp;</p>
      <p align="right"><a href="searchFile.jsp">Back</a></p>
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
