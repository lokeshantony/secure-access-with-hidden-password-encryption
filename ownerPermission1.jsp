
<%@ include file="connect.jsp" %>
<%
   int mid = Integer.parseInt(request.getParameter("uid"));
   try {
	   
       String str="Yes";
       Statement st1 = connection.createStatement();
       String query1 ="update request set ownerper='"+str+"' where id='"+mid+"' ";
	   st1.executeUpdate (query1);
	   connection.close();
       
	   }
       catch(Exception e)
          {
            out.println(e.getMessage());
          }
   response.sendRedirect("ownerPermission.jsp");
		  
%>


