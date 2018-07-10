<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Captcha</title>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"></script>
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
<![endif]-->
</head>

<body>


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
          
         <li><a href="upload.jsp">Upload</a></li>
         <li><a href="download.jsp">Download</a></li>
      <li class="last"><a href="home.jsp">Logout </a></li>
	  <li><a href="meettheteam/aboutus.html">About Us</a></li>
        
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
%>

 <center><h1 style="color: brown">  Welcome ! <%=u%></h1></center>
          
        <p><a href="#"></a></p>
  
      
     
      
    
  </div>
  <!-- maincontent ends -->    
</div>
</body>
</html>
