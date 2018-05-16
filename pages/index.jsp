<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
         <meta charset="utf-8">
         <!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
         
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->    
        <meta name="description" content="">
        <meta name="author" content="">

        <title>College Management System</title>

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../css/metisMenu.min.css" rel="stylesheet">

        <!-- Timeline CSS -->
        <link href="../css/timeline.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../css/startmin.css" rel="stylesheet">
        
        <!-- Sweetalert CSS -->
        <link href="../css/sweetalert.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
        <!-- SBI Collect -->
        <link rel="stylesheet" href="../sbijava/css/style.css" type="text/css" />
        <link rel="stylesheet" href="../sbijava/css/sbi_collect.css" type="text/css" />
        
        <!-- copyright Collect -->
        <link href="../css/copyrightstyle.css" rel="stylesheet">
        <link rel="shortcut icon" href="../img/favicon2.ico"> 
        <link rel="shortcut icon" href="/img/favicon2.ico" type="image/x-icon">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
		<link rel="stylesheet" type="text/css" href="../css/index.css">
		<style>
			body
				{
					background-image: url('../img/eiffel_bg.jpg');
					background-attachment: fixed;
					background-size: 100% 100%;
				}
		</style>
</head>
<body>
         <div id="navbar">	
		</div>
        <div id="container"><br>
			    <div id="login-right">
				<div class="login-margin"></div>
				
				           <form  method="post" autocomplete="on"> 
                                <h2>Admin Corner</h2> 
                                 <input class="long" name="username" type="text" placeholder="Username" required  autofocus >
                                    <input class="short-pass" name="password" type="password" placeholder="Password" required >       
                               <button class="btn-signin" type="submit" name="btnlogin" value="Login">Sign In</button><br>
                          </form>
				               <form method="post" autocomplete="on"> 
                                <h2> Students Corner </h2> 
							
                                    <input class="long"  name="username" required="required" type="text" placeholder="Students Id" />                               
                                    <input class="short-pass" name="mobile" type="password" placeholder="Mobile Number" required >
           					    <button class="btn-signin" type="submit" name="btnlogin" value="Login2">Log In</button>
                                  </form>
				
				
				
				
				</div>
							
        		<div id="login-left">
				<h1>WELCOME TO<br>COLLEGE MANAGEMENT SYSTEM</h1>
					<br>
					<p>
					Connect with your college friends and other fascinating <br> people.
					Get in-the-moment updates on the things <br>
					regarding about your college
					that interest you.<br> And watch events unfold, in real time, from<br> every angle.
					</p>
			</div>
			<div class="clear"></div>
			
             
				
                
							
         			<!--  <footer>All Rights Reserved CGT LTD. | Copyright &copy; 2018</footer>-->

        </div>
        <!-- jQuery -->
<script src="../js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../js/startmin.js"></script>

<script src="../js/html5shiv.min.js"></script>
<script src="../js/respond.min.js"></script>
<script src="../js/sweetalert.js"></script>
</body>
</html>
<%
Connection con=null;
PreparedStatement stmt=null;
ResultSet rs=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cgt","root","");
	
	}
catch(Exception ex)
{
	out.println(ex.toString());
	}
if("Login".equals(request.getParameter("btnlogin")));
{
	int rowcount=0;
	String u=request.getParameter("username");
	String p=request.getParameter("password");
	
	String q="select count(*) from adminp where uname='"+u+"' and passwords='"+p+"'";
	try
	{
		stmt=con.prepareStatement(q);
		     rs=stmt.executeQuery();
		     while(rs.next())
		     {
		    	 rowcount=rs.getInt(1);
      		     }
		     if(rowcount>0)
		     {
		    	 session.setAttribute("username", u);
		    	 response.sendRedirect("adminpanel.jsp");
		    	 
		     }
		     else
		     {
		    out.println("");
		    	 
		     }
		     
		}
	catch(Exception ex)
	{
		out.println(ex.toString());
	}
	}
if("Login2".equals(request.getParameter("btnlogin")));
{
	int rowcount=0;
	String u=request.getParameter("username");
	String p=request.getParameter("mobile");
	String q="select count(*) from add_reg where eid='"+u+"' and mn='"+p+"'";
	try
	{
		stmt=con.prepareStatement(q);
		     rs=stmt.executeQuery();
		     while(rs.next())
		     {
		    	 rowcount=rs.getInt(1);
      		     }
		     if(rowcount>0)
		     {
		    	 session.setAttribute("username", u);
		    	 response.sendRedirect("../students/student_panel.jsp");
		    	 
		     }
		     else
		     {
		    out.println("");
		    	 
		     }
		     con.close();
		}
	catch(Exception ex)
	{
		out.println(ex.toString());
	}
	}
%>
