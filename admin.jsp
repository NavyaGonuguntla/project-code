<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Captcha</title>
<link rel="shortcut icon"  href="images/applications.png" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"></script>
<script>
    function validation(){
        var uname=document.ulogin.username.value;
        var pass=document.ulogin.password.value;
        
        if(uname==0){
            alert("Enter ADMIN ID");
            document.ulogin.username.focus();
            return false;
        }
        if(pass==0){
            alert("Enter password");
            document.ulogin.password.focus();
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
  <!-- <div class="container"> -->
   <!-- <div class="container-in"> --> <img src="images/container-bg.jpg" width="0" height="270" alt="img" />
    
      
       
     <!--   </div> -->
    
     
    <!--  <div class="clear"></div>
      <div class="welcome"> -->
          <fieldset>
            <center>
                <h2 class="title"style="color: coral">ADMIN LOGIN </h2><br></br>
                        
                        <form action="admin_login" name="ulogin" method="post" onsubmit="return validation()"> 
<!--                  USERNAME:<br>-->
<input type="text" name="username" placeholder="Enter ADMIN  ID"><br></br>
<!--                  PASSWORD:<br>-->
<input type="password" name="password" placeholder="Enter password"><br></br>
                            <input type="submit" value="LOGIN"style="background-color: yellowgreen;width: 70px;">
                                  <input type="reset" value="RESET"style="background-color: tomato;width: 70px;"><br></br>
                                                        
                
            
		</form>
                       
                    </center>
              </fieldset>
        <p><a href="#"></a></p>
		</div>       
</div>

</body>
</html>
