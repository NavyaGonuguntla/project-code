<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Connection"%>
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

<!--[if lt IE 8]>
<style type="text/css">
	.header-container	{ padding-bottom:0;}
	.welcome	{ padding-top:12px;}
    .container	{ padding-bottom:0;}
    .footer-in	{ padding-bottom:0;}
</style>
<![endif]-->
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
</head>

<body>

<!-- wrapper starts -->
<div class="wrapper"> 
  
  <!-- Header Starts -->
  <div class="header">
    <div class="header-container">
      <p style="font-size: 25px;color: #ffffff"> Captcha as Graphical Passwords - Security Made Easy</p>
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
          
        <li><a href="">Upload</a></li>
        <li><a href="">Download</a></li>
      <li class="last"><a href="home.jsp">Logout </a></li>
        
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Nav end --> 
  
  <!-- maincontent Starts -->
  
     <img src="images/container-bg.jpg" width="0" height="327" alt="img" />
    
      
       
    
    
     
      
      
          <%
HttpSession user=request.getSession();  
String u=user.getAttribute("uname").toString();  

Connection con=Dbconnection.getConn();
Statement st=con.createStatement();
ResultSet rt=st.executeQuery("select * from file");

%>
<!--<center><h5 style="color: brown">  Welcome ! <%=u%></h5></center>-->
<center>
 <table>
 
              <tr style="background-color: burlywood;font-size: 15px;color: #100B0A">
        <td>FILENAME</td><td>OWNER</td><td>DOWNLOAD</td>
    </tr>
    <%
    
while(rt.next()){
    
String id=rt.getString("idfile");
%>
    
    <TR style="background-color:#AAAAAA;font-size: 15px;color: #111111">
        <td><%=rt.getString("filename")%></td><td><%=rt.getString("owner")%></td>
        <td><a href="down.jsp?<%=id%>" style="color: coral">Download</a></td>   
    </TR>
<%
}
%>

</table>
</center>
          
        <p><a href="#"></a></p>
      
      <div class="bottom-cont1">
        <h6></h6>
        <p> </p>
      </div>
<!--      <div class="bottom-cont1">
        <h6></h6>
        <ul>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"> </a></li>
          <li><a href="#"></a></li>
        </ul>
      </div>-->
      <div class="bottom-cont1 last">
        <h6></h6>
        <span></span>
        <p></p>
        <span></span>
        <p></p>
      </div>
      <div class="clear"></div>
    
  </div>
  <!-- aincontent ends --> 
  
  <!-- footer starts -->
  
  </div>
  <!-- footer ends --> 
  
</div>
<!-- wrapper ends -->

</body>
</html>
