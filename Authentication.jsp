	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  



<%
String epass="";

   	String username=request.getParameter("userid");    
	  
   	String Password=request.getParameter("pass");
	
	String utype=request.getParameter("utype");    
	
    try{
		if(username.equalsIgnoreCase("server"))
		{
			application.setAttribute("server",username);
			String sql="SELECT * FROM server where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
		
			if(rs.next())
			{
				
				response.sendRedirect("webServerMain.jsp");
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		}
		
		
      else if(utype.equalsIgnoreCase("User"))
	   {
	   
	   
			    String keys="ef50a0ef2c3e3a5f";
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
      			String encryptedValue = new String(Base64.encode(Password.getBytes()));
	   
				
		
					   
		
	    
			    String sql="SELECT * FROM user where username='"+username+"' and password='"+encryptedValue+"' ";
			    Statement stmt = connection.createStatement();
			    ResultSet rs =stmt.executeQuery(sql);
		
			   if(rs.next())
			      {
				String status="Authorized";
				String sql1="SELECT * FROM user where username='"+username+"' and status='"+status+"'";
			    Statement stmt1 = connection.createStatement();
			     ResultSet rs1 =stmt1.executeQuery(sql1);
		        	if(rs1.next())
			         {
					 
					   String pass=rs1.getString(3);
					   
					    byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String upass = new String(Base64.decode(pass.getBytes()));
					   application.setAttribute("upass",upass);
					 
			           application.setAttribute("user",username);
					   
					   
				       response.sendRedirect("endUserMain.jsp");
		           	 }
				    else
			         {
			           application.setAttribute("user",username);
				       response.sendRedirect("endUserMain1.jsp");
			         }
				
			       }
			   else
			    {
				response.sendRedirect("wrongLogin.jsp");
			    }
				
		}
		
		else if(utype.equalsIgnoreCase("Owner"))
	   {
	   
	   
	    		
						String keys="ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
      			String encryptedValue = new String(Base64.encode(Password.getBytes()));
	   
	   
	   
			    application.setAttribute("owner",username);
			String sql="SELECT * FROM user where username='"+username+"' and password='"+encryptedValue+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
		
			if(rs.next())
			{
				
				String status="Authorized";
				String sql1="SELECT * FROM user where username='"+username+"' and status='"+status+"'";
			    Statement stmt1 = connection.createStatement();
			     ResultSet rs1 =stmt1.executeQuery(sql1);
		        	if(rs1.next())
			         {
					 
					   String pass=rs1.getString(3);
					   
					    byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String opass = new String(Base64.decode(pass.getBytes()));
					   application.setAttribute("opass",opass);
					 
			           application.setAttribute("owner",username);
				       response.sendRedirect("dataOwnerMain.jsp");
		           	 }
				    else
			         {
			           application.setAttribute("owner",username);
				       response.sendRedirect("dataOwnerMain1.jsp");
			         }
				
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		
		
		}
		
		
		
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>