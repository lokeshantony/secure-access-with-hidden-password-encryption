
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<%@ include file="connect.jsp" %>
<%
	int mid = Integer.parseInt(request.getParameter("uid"));
	String uname=request.getParameter("uname");
  	
	try
	{    
	if(uname.equals("user"))    
	{    
    	Statement st=connection.createStatement();
    	String strQuery = "select image from user where id="+mid+"" ;
    	ResultSet rs = st.executeQuery(strQuery);
    	String imgLen="";
    	if(rs.next())
		{
      		imgLen = rs.getString(1);
     	}  
    	rs = st.executeQuery(strQuery);
    	if(rs.next())
		{
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(1);
		 	int index=readImg.read(rb, 0, len);  
		  	st.close();
		  	response.reset();
		  	response.getOutputStream().write(rb,0,len); 
		  	response.getOutputStream().flush();        
		}
  	}
	
	
	
	if(uname.equals("owner"))    
	{    
    	Statement st=connection.createStatement();
    	String strQuery = "select image from owner where id="+mid+"" ;
    	ResultSet rs = st.executeQuery(strQuery);
    	String imgLen="";
    	if(rs.next())
		{
      		imgLen = rs.getString(1);
     	}  
    	rs = st.executeQuery(strQuery);
    	if(rs.next())
		{
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(1);
		 	int index=readImg.read(rb, 0, len);  
		  	st.close();
		  	response.reset();
		  	response.getOutputStream().write(rb,0,len); 
		  	response.getOutputStream().flush();        
	    }
  	}
	
	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

