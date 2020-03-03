


<%@page import="java.sql.SQLNonTransientConnectionException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname=request.getParameter("username");
        String password=request.getParameter("password");
           session.setAttribute("uname", uname);
        try
        {
            if(uname!=null)
            {
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sciencecity?autoReconnect=true&useSSL=false", "root","1234");
              String Query="select* from entrepreneurdetails where uname=? and password=?";
                PreparedStatement psmt=con.prepareStatement(Query);
                
                psmt.setString(1, uname);
                psmt.setString(2,password);
                
                ResultSet rs=psmt.executeQuery();
                
                
                while(rs.next())
                {
                    
                   response.sendRedirect("entrepreneurdashboard.jsp");
                }
                    
                
                
            }
          else
            {
             out.println("You have entered wrong username/password");
               
                
           }
        }
        catch (SQLNonTransientConnectionException e) {
   // if ("08006".equals(e.getSQLState())) {
     // log.debug(e.getMessage());
    //} else {
      //log.error(e.getMessage(), e);
    //}
            out.println(e);
        }
        
         %>
    </body>
</html>
