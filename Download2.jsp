<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request SecretKey</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<script type='text/javascript'>
        function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}
</script>
<style type="text/css">
<!--
.style2 {color: #1f7fbb}
.style4 {color: #FF3300}
.style5 {color: #2cadff}
.style6 {font-size: 16px}
.style7 {color: #2cadff; font-size: 16px; }
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
				String uname=(String)application.getAttribute("user");
		  		String file = request.getParameter("t1");
				String sk=request.getParameter("t13");
				
			
				
				String strQuery = "select * from ownerfile where fname='"+file+"' and   sk='"+sk+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);

					if(rs.next()==true)
					{
					    String rank=rs.getString(8);
						int updaterank = Integer.parseInt(rank)+1;
						String strQuery2 = "update ownerfile set rank='"+updaterank+"' where fname='"+file+"'";
						connection.createStatement().executeUpdate(strQuery2);
						
						String ct=rs.getString(4);
						String keys="ef50a0ef2c3e3a5f";
						
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String decryptedValue = new String(Base64.decode(ct.getBytes()));
				
						
						
							
			%>
		  </p>
		  <p align="center" class="style1">File Contents</p>
		  
		    <label>
	            <div align="center">
	              <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
	              <br/>
	              <br/>
	              <td><button onClick="saveTextAsFile()">Download</button></td>
            </div>
		    </label>
		  <p align="center">&nbsp; </p>
		  <p>
		    <%	
					}
					else
					{
						
		%>
	      </p>
		  <p>
		  <h1 class="style1">File Doesn't Exist !!!</h1>
		  </p><br />
						<p><a href="Download.jsp">Back</a></p>
	<%
					}

        connection.close();
		  } 
          catch(Exception e)
          {
            out.println(e.getMessage());
          }%>
	 
			        
      </p>
	  <p align="right"><a href="endUserMain.jsp">Back</a></p>
     
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
