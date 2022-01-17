<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%

    String ackno = request.getParameter("ackno");
    
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("delete from teacherevents where ackno = '"+ackno+"'" );
    ps.executeUpdate();

    response.sendRedirect("viewtachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
     //   response.sendRedirect("viewtachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>