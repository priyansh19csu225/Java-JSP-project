
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
   String username = request.getParameter("username");
    String year = request.getParameter("year");
    String branch = request.getParameter("branch");
    String dob = request.getParameter("dob");
    String rno = request.getParameter("rno");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String fbid = request.getParameter("fbid");
    String address = request.getParameter("address");
    String about = request.getParameter("about");
    String ackno = request.getParameter("ackno");
    
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("delete from studentevents where ackno = '"+ackno+"'");
    ps.executeUpdate();

    response.sendRedirect("viewsachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
     //   response.sendRedirect("viewtachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   