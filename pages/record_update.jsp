<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->    
        <meta name="description" content="">
        <meta name="author" content="">

        <title>College Management System</title>

        

       
        
    </head>
    <body>
    <%
	if((String)session.getAttribute("username")==null)
	{
		response.sendRedirect("index.jsp");
	}
	else
	{
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);

%>


<%
	}
%>
<%
Connection con=null;
PreparedStatement stmt=null;
try
{
// for MySQL Coonectivity
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cgt","root","");


}
catch(Exception ex)
{
out.println(ex.toString());
}
MultipartRequest m = new MultipartRequest(request, "E:/Project/NewProject/CollegeManagementSystem/WebContent/upload_file");
	//if("Add".equals(m.getParameter("btnadd")))
	//{
		 Enumeration files = m.getFileNames();
		 String upload="",filename="";
		     while(files.hasMoreElements() )
		       {
		         upload = (String)files.nextElement();
		          filename = m.getFilesystemName(upload);
		         
		     }
		String eid=m.getParameter("txtid");
		String ename=m.getParameter("txtname");
		String dob=m.getParameter("txtdob");
		String efname=m.getParameter("txtfname");
		String emname=m.getParameter("txtmname");
		String ph=m.getParameter("txtph");
		String altph=m.getParameter("txtalph");
		String addr=m.getParameter("txtaddr");
		String gen=m.getParameter("txtgen");
		String reli=m.getParameter("txtreli");
		String qta=m.getParameter("txtquota");
		String strm=m.getParameter("txtstrm");
		String btc=m.getParameter("txtbtch");
		String eml=m.getParameter("txteml");
		String doj=m.getParameter("txtdoj");
		String photo=filename;
		try
		{
			stmt=con.prepareStatement("update add_reg set name=?,dob=?,fname=?,mname=?,mn=?,pmn=?,addr=?,gn=?,rg=?,qt=?,strm=?,btch=?,eml=?,doj=?,photo=? where eid=?");
			stmt.setString(2,ename);
			stmt.setString(3,dob);
			stmt.setString(4,efname);
			stmt.setString(5,emname);
			stmt.setString(6,ph);
			stmt.setString(7,altph);
			stmt.setString(8,addr);
			stmt.setString(9,gen);
			stmt.setString(10,reli);
			stmt.setString(11,qta);
			stmt.setString(12,strm);
			stmt.setString(13,btc);
			stmt.setString(14,eml);
			stmt.setString(15,doj);
			stmt.setString(16,photo);
			stmt.setString(1,eid);
			stmt.executeUpdate();
		 // executeUpdate() for  insert, update, delete
		 	con.close();
				 out.println("");
		}
		 catch(Exception ex)
			{
				out.println(ex.toString());
			}
	//}
%>
     

                
    </body>
</html>

