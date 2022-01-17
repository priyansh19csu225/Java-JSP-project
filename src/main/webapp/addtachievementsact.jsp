
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String username = request.getParameter("username");
    String year = request.getParameter("year");
    String designation = request.getParameter("designation");
    String branch = request.getParameter("branch");
    String dob = request.getParameter("dob");
    String qualificaion = request.getParameter("qualification");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String exp = request.getParameter("exp");
    String specialization = request.getParameter("specialization");
    String subjects = request.getParameter("subjects");
    String image ="load_file('C:\\Users\\Admin\\Desktop\\user1.png')";
    String ackno = request.getParameter("ackno");
    ackno = ackno + "_" + username;
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("insert into teacherevents(username,designation,year,branch,dob,qualification,email,mobile,exp,specialization,subjects,image,ackno) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

    ps.setString(1,username);    
    ps.setString(2,designation);
    ps.setString(3,year);
    ps.setString(4,branch);
    ps.setString(5,dob);
    ps.setString(6,qualificaion);
    ps.setString(7,email);    
    ps.setString(8,mobile);
    ps.setString(9,exp);
    ps.setString(10,specialization);
    ps.setString(11,subjects);
    ps.setString(12,image);
    ps.setString(13,ackno);
    ps.executeUpdate();


    response.sendRedirect("addtachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
        response.sendRedirect("addtachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   