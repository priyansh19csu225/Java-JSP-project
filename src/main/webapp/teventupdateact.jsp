
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
   String username = request.getParameter("username");
    String year = request.getParameter("year");
    String designation = request.getParameter("designation");
    String branch = request.getParameter("branch");
    String dob = request.getParameter("dob");
    String qualification = request.getParameter("qualification");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String exp = request.getParameter("exp");
    String specialization = request.getParameter("specialization");
    String subjects = request.getParameter("subjects");
    String ackno = request.getParameter("ackno");
    
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("update teacherevents set designation='"+designation+"',dob='"+dob+"',qualification='"+qualification+"',email='"+email+"',mobile='"+mobile+"',exp='"+exp+"',specialization='"+specialization+"',subjects='"+subjects+"' where ackno = '"+ackno+"'");
    ps.executeUpdate();

    response.sendRedirect("viewtachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
     //   response.sendRedirect("viewtachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   