<%@ include file="connect.jsp" %>
<%

        String str1=request.getParameter("str");
  		int id = Integer.parseInt(request.getParameter("uid"));
   		try {
	 
	   		if(str1.equalsIgnoreCase("user"))
			{
			String str = "Authorized";
				
       		Statement st1 = connection.createStatement();
       		String query1 ="update user set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
	   		response.sendRedirect("viewAllEndUsers.jsp");  
			connection.close();
			
			}
			
			if(str1.equalsIgnoreCase("owner"))
			{
		    String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update owner set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			response.sendRedirect("viewAllDataOwners.jsp");  
	   		connection.close();
			}
			
			
			
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
		
		
%>
