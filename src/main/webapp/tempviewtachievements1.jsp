<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Development of Online College Year Book</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
        
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Development of Online College Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
          <ul>
             <li><a href="teacherhome.jsp" >Home</a></li>
            <li><a href="tupdateprofile.jsp">Update Profile</a></li>
            <li><a href="teacherachievements.jsp" class="active">Achievements</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul>
    </nav>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
        <%
        String user = session.getAttribute("user").toString();
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        
        String sql="select * from teacherevents where username = '"+user+"' and year = '"+year+"' and branch = '"+branch+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
        if(rs.next()){
        
        String sql2="select * from teacherevents where username = '"+user+"' and year = '"+year+"' and branch = '"+branch+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        <br/><br/>
         <center>
             <h2><font color="black" size="5"> Teacher Achievements</font></h2>
        <style>
        td{
            text-align: center;
            height: 25px;
        }
        th{
            text-align: center;
            height: 25px;
        }
           
        </style>
        <table border="2" width="90%">

        <tr style="background-color: brown">
        <th><font color="black"> Name</th>
        <th><font color="black">Year</th>
        <th><font color="black">Branch</th>
        <th><font color="black">View Details</th>

        </tr>

        <%                while (rs1.next()) {
        %>

        <tr>
        <td><font color="black"><%=rs1.getString("username")%></td>
        <td><font color="black"><%=rs1.getString("year")%></td>
        <td><font color="black"><%=rs1.getString("branch")%></td>
        <td><a href="viewtachievements2.jsp?username=<%=rs1.getString("username")%>&year=<%=rs1.getString("year")%>&branch=<%=rs1.getString("branch")%>&ackno=<%=rs1.getString("ackno")%>"><button type="button">View Details</button></a></td>
        </tr>
        <%
            }
        }
        else{
         out.println("<br/><br/><br/><br/><br/><center><font color='red' size='5'>No Achievements to Display...</font></center> ");
        }
        %>
        </table>
         <br/><br/>
         <center>
          <h2><font color="black" size="5"> View Other Teachers Achievements</font></h2>
        <style>
        td{
            text-align: center;
            height: 25px;
        }
        th{
            text-align: center;
            height: 25px;
        }
           
        </style> 
        <table border="2" width="90%">

        <tr style="background-color: brown">
        <th><font color="black"> Name</th>
        <th><font color="black">Year</th>
        <th><font color="black">Branch</th>
        <th><font color="black">View Details</th>

        </tr>
          <%
    
        
        String sql3="select * from teacherevents where username <> '"+user+"' and year = '"+year+"' and branch = '"+branch+"'"; 
	    Statement st3=connection.createStatement();
	ResultSet rs3=st.executeQuery(sql3);
        if(rs3.next()){
        
        String sql4="select * from teacherevents where username <> '"+user+"' and year = '"+year+"' and branch = '"+branch+"'"; 
	Statement st4=connection.createStatement();
	ResultSet rs4=st4.executeQuery(sql4);
	%>
         
         
         
         
        

        <%                while (rs4.next()) {
        %>

        <tr>
        <td><font color="black"><%=rs4.getString("username")%></td>
        <td><font color="black"><%=rs4.getString("year")%></td>
        <td><font color="black"><%=rs4.getString("branch")%></td>
        <td><a href="viewtachievements2.jsp?username=<%=rs4.getString("username")%>&year=<%=rs4.getString("year")%>&branch=<%=rs4.getString("branch")%>"><button type="button">View Details</button></a></td>
        </center>
        </tr>
        <%
            }
        }
        
        %>
        </table>
        <br/><br/>
         <center>
             <h2><font color="black" size="5"> Student Achievements</font></h2>
        <style>
        td{
            text-align: center;
            height: 25px;
        }
        th{
            text-align: center;
            height: 25px;
        }
           
        </style>
        <table border="2" width="90%">

        <tr style="background-color: brown">
        <th><font color="black">User Name</th>
        <th><font color="black">Year</th>
        <th><font color="black">Branch</th>
        <th><font color="black">View Details</th>

        </tr>
        <%
        
        String sql6="select * from studentevents where year = '"+year+"' and branch = '"+branch+"'"; 
	Statement st6=connection.createStatement();
	ResultSet rs6=st.executeQuery(sql);
        if(rs6.next()){
        
        String sql7="select * from studentevents where year = '"+year+"' and branch = '"+branch+"'"; 
	Statement st7=connection.createStatement();
	ResultSet rs7=st7.executeQuery(sql7);
	%>
        

        <%                while (rs7.next()) {
        %>

        <tr>
        <td><font color="black"><%=rs7.getString("username")%></td>
        <td><font color="black"><%=rs7.getString("year")%></td>
        <td><font color="black"><%=rs7.getString("branch")%></td>
        <td><a href="tviewsachievements2.jsp?username=<%=rs7.getString("username")%>&year=<%=rs7.getString("year")%>&branch=<%=rs7.getString("branch")%>"><button type="button">View Details</button></a></td>
        </tr>
        <%
            }
        }
        
        %>
        </table>
         <br/><br/>
        <a href="viewtachievements.jsp"><button type="button">Back</button></a>
        </center> 
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br>
    
    
    
</body>

</html>