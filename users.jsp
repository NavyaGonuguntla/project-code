<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Captcha</title>

<!-- SET: FAVICON -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
<!-- END: FAVICON -->

<!-- SET: STYLESHEET -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- END: STYLESHEET -->

<!-- SET: SCRIPTS -->
<script type="text/javascript"></script>
<!-- END: SCRIPTS -->

<meta name="description" content="Your description"/>
<meta name="keywords" content="keyword1 keyword2"/>

 <style>
body
{
	background-image:url("5.jpeg");
}
    input{
        width: 200px;
        height: 20px;
    }
</style>

<style>
    table,tr,td{
        border-collapse: collapse;
        border-style: solid;
    }
    table{
        width: 750px;
    }
    td{
        text-align: center;
       
    }
    a{
        color: #666666;
    }
</style>
</head>

<body>

<!-- wrapper starts -->
<div class="wrapper"> 
  
  <!-- Header Starts -->
  <div class="header">
    <div class="header-container">
         <p style="font-size: 25px;color: #ffffff"> Captcha as Graphical Passwords - Security Made Easy</p>
      <div class="logo"> <a href="#"></a> </div>
      <div class="toll-free">
        <p></p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Header ends --> 
  
  <!-- Nav start -->
  <div class="nav">
    <div class="nav-in">
     <ul>
          
        <li><a href="">Users</a></li>
        <li><a href="activities.jsp">Activities</a></li>
        <li><a href="home.jsp">Logout</a></li>
        <li><a href="meettheteam/aboutus.html">About Us</a></li>
     
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Nav end --> 
  
  <!-- maincontent Starts -->
  <img src="images/container-bg.jpg" width="0" height="270" alt="img" />
    
      
       
        
    
     
      <div class="clear"></div>
      <%
Connection con=Dbconnection.getConn();
Statement st =con.createStatement();
ResultSet rt=st.executeQuery("SELECT * FROM `captcha`.`user_reg`");   
%>
      
          <center style="color: #666666">
          <table>
              <tr style="background-color: burlywood;font-size: 15px;color: #100B0A">
                  <td>USERNAME</td><td>NAME</td><td>PASSWORD</td><td>MAILID</td><td>PHONE NO</td><td>STATUS</td><td>ACTIVATE</td>
              </tr>
              <%
while(rt.next()){
    
String id=rt.getString("iduser_reg");
%>
<tr style="background-color:#AAAAAA;font-size: 15px;color: #111111">
                 <td><%=rt.getString("username")%></td><td><%=rt.getString("name")%></td><td>******</td><td><%=rt.getString("mail")%></td> <td><%=rt.getString("phoneno")%></td> <td><%=rt.getString("activate")%></td>
                 <% if(rt.getString("activate").equalsIgnoreCase("no")){
                                     %>
                                     <td><a href="activate?<%=id%>" style="color: #666666">Activate</a></td> 
                 <%}
                  else{
                     %>
                  <td><a href="deactivate?<%=id%>" style="color: #666666">Deactivate</a></td>
                 <%
 }                 
%>
              </tr>
              <%
}              
%>
          </table>
          </center>
        <
  <!-- maincontent ends --> 
  
 
  

<!-- wrapper ends -->

</body>
</html>
