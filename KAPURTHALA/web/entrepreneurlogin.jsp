<%-- 
    Document   : adminlogin
    Created on : Feb 8, 2019, 12:12:27 AM
    Author     : asc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        #example1 {
  border: 0px solid black;
  padding-bottom: 200px;
  padding-top: 250px;
  background: url(bis.png);
  background-repeat: repeat;
  background-size: cover;
  background-height: 100%
}
        label{
    display: inline-block;
    float: center;
    clear: center;
    width: 80px;
    text-align: center;
    
}
input {
  display: inline-block;
  float: center;
  border-radius: 50px;
  border-color: #eeeeee;
  padding-top:10px;
  padding-bottom:10px;
   padding-left:10px;
  padding-right:20px;
  margin-right:4px;
  margin-left:4px;
}
    </style>
    <body>
         <div class="bg">
        <div id="example1">
  <h1 align="center" style="font-family: cursive">ENTREPRENEUR LOGIN</h1>
  
  

        <form action="entrepreneurlogin1.jsp" align="center">
            <div align="center">
                <label align="center">User ID:-</label><input type="text" name="username"></br></br>
                <label style="font-size: large">Password:-</label><input type="password" name="password"></br></br>
                 <input type='submit' value="Log In" style='width:80px;margin:0 50%;position:center;left:-20px; font-size: large'>
                 
        </div>
        </form>
  <br/>
  <form action="entrepreneurregistration.jsp">
      <input type='submit' value="Register" style='width:90px;margin:0 50%;position:center;left:-20px; font-size: large'>
  <form>
    </body>
</html>
