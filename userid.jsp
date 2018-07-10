<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Captcha</title>
<link rel="shortcut icon" href="images/applications.png" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"></script>
<script>
    function validation(){
        
        if(document.name.uname.value==0){
            alert('Enter user id');
            return false;
        }
    }
</script>
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


<div class="wrapper"> 
  
  <!-- Header Starts -->
  <div class="header">
     
    <div class="header-container">
        <p style="font-size: 25px;color: #ffffff"> Captcha as Graphical Passwords - Seecurity Made Easy</p>
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
          <li class="last"><a href="home.jsp">Home </a></li>
        <li><a href="register.jsp">Register Page</a></li>
        <li><a href="userid.jsp">User Login</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li><a href="meettheteam/aboutus.html">About Us</a></li>
        
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Nav end --> 
  
  <!-- maincontent Starts -->  
<div class="container-in"> <img src="re.jpg" width="0" height="270" alt="img" />   
          <center>
        <form action="userid" name="name" onsubmit="return validation()">
            <h2 style="color: coral">USER LOGIN</h2><br></br>
                <input type="text" name="uname" placeholder="Enter username"></input><br></br>
                <input type="submit" value="Submit" style="background-color: yellowgreen;color: #ffffff;width: 70px;"></input><span>  </span>
                <input type="reset" value="Reset" style="background-color: tomato;color: #ffffff;width: 70px;"></input><br></br>
         New User? <a href="register.jsp" style="color: cadetblue;font-size: 15px;">Register here</a> 
        </form>
          </center>
        
  </div>  
  <!-- maincontent ends -->   
</div> 
</<div>
</body>
</html>
