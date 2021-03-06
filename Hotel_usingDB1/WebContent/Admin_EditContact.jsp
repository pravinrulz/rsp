<%@page import="java.io.PrintWriter"%>
<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">RSP Hotels</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="admin.jsp">Home</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li ><a href="admin_reservation.jsp">Show Reservations</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li ><a href="admin_delreservation.jsp">Delete Reservations</a></li>              
      </ul>
       
      <ul class="nav navbar-nav navbar-right">
    
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
  </nav>
</div>
 
  <%
  Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root"); 
  Statement stmt=conn.createStatement();  
  ResultSet rs=stmt.executeQuery("select * from owner_contact where id=1");  
  while(rs.next())  {
  %>
  <div class="container-fluid">
 
  <form role="form" action="Admin_ContactUpdate">
  
   <div class="form-group">
              
     <div class="row">
      <div class="col-xs-4">
      <label for="name">Name</label>
      <input type="text" class="form-control" name="name" value=<%=rs.getString(1)%>>
     
      </div></div>
      </div> 
        <div class="form-group">
              
     <div class="row">
      <div class="col-xs-4">
      <label for="phone">Phone</label>
      <input type="text" class="form-control" name="phone" value=<%=rs.getString(2)%>>
   
      </div></div>
      </div> 
      <div class="form-group">
              
     <div class="row">
      <div class="col-xs-4">
      <label for="mail">Email</label>
      <input type="text" class="form-control" name="mail" value=<%=rs.getString(3)%>>
   
      </div></div>
      </div>
    
    
      <div class="form-group">
     <div class="row">
      <div class="col-xs-2">
      <label for="date">date</label>
      <input type="text" name="date" class="form-control"  value=<%=rs.getString(4)%> >
      </div>
      <div class="col-xs-2">
      <label for="time">timings</label>
      <input type="text" name="time" class="form-control"  value=<%=rs.getString(5)%> >
      </div>
      
      </div>
      </div>
      
     
    
     <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <button type="submit" class="btn btn-success">Update</button>
      </div></div>
      </div>       
      </form>
      
    </div>
 <%
}%>

    <div class="footer navbar-fixed-bottom">
<nav class="navbar navbar-inverse"style="margin-left:15px;margin-right:15px;">
  <div class="container-fluid" >
    
    <div>
      
      <ul class="nav navbar-nav navbar-right">
        <li style="color:white">copyright:PravinKumaar</li>
       
       
      </ul>
    </div>
  </div>
</nav>
</div>
     
    </body>
    </html>