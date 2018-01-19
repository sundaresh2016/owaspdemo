<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sports Bank of India</title>
</head>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    padding: 12px 16px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 14px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 14px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 16px 0 16px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 18px;
}

span.psw {
    float: center;
    padding-top: 6px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}
</style>
<body>

 <form action="SqlDemo" method="post">
  <div class="imgcontainer">
    <img src="img/SBI.png">
  </div>
<center>
  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="user" required><br/>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required><br/>
    
    <input type="checkbox" checked="checked">Remember Me<br/><br/><a href="#">Forgot Password?</a>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="loginbtn">Login</button>
    </div>
  </div>
  </center>
</form>
</body>
</html>
