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
                         
        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../css/metisMenu.min.css" rel="stylesheet">

        <!-- Timeline CSS -->
        <link href="../css/timeline.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../css/startmin.css" rel="stylesheet">
        
        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
         <!-- SBI Collect -->
        <link rel="stylesheet" href="../sbijava/css/style.css" type="text/css" />
        <link rel="stylesheet" href="../sbijava/css/sbi_collect.css" type="text/css" />
        
        <!-- copyright Collect -->
        <link href="../css/copyrightstyle.css" rel="stylesheet">
        

       
        
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
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand"><i class="fa fa fa-university fa-fw"></i>  COLLEGE MANAGEMENT SYSTEM</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="http://www.impscet.net/"><i class="fa fa-home fa-fw"></i> Official Site</a></li>
                </ul>

                <ul class="nav navbar-right navbar-top-links">
                    
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user-secret fa-fw"></i>Master <%=session.getAttribute("username")%> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="change_pass.jsp"><i class="fa fa-edit fa-fw"></i> Change Password</a>
                            </li>
                            <li><a href="add_admin.jsp"><i class="fa fa-user-plus fa-fw"></i> Add Admin</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /.navbar-top-links -->

                <!-- /.panel-heading -->
                
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            
                            <li>
                                <a href="adminpanel.jsp" class="active">
                                <i style="font-size: 26px;" class="fa fa-user-secret fa-fw"></i>
                                <span style="font-size: 23px;font-weight: bold">Admin Panel</span>
                              <i style="font-size: 26px;" class="fa fa-user-secret fa-fw"></i>
                              </a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa fa-graduation-cap fa-fw"></i> STUDENTS SECTION<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#"><i class="fa fa fa-plus fa-fw"></i> ADD ADDMISSION</a>
                                    </li>
                                    <li>
                                        <a href="payment.jsp"><i class="fa fa fa-paypal fa-fw"></i> PAYMENT</a>
                                    </li>
                                    <li>
                                        <a href="search.jsp"><i class="fa fa fa-search fa-fw"></i> SEARCH</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa fa-user-md fa-fw"></i> TEACHERS SECTION<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="cse.jsp"><i class="fa fa fa-users fa-fw"></i> C.S.E</a>
                                    </li>
                                    <li>
                                        <a href="ce.jsp"><i class="fa fa fa-users fa-fw"></i> C.E</a>
                                    </li>
                                    <li>
                                        <a href="ece.jsp"><i class="fa fa fa-users fa-fw"></i> E.C.E</a>
                                    </li>
                                    <li>
                                        <a href="ee.jsp"><i class="fa fa fa-users fa-fw"></i> E.E</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>                  
                            <li>
                                <a href="#"><i class="fa fa-users fa-fw"></i> MEMBER'S AREA<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="chairman_desk.jsp"><i class="fa fa fa-user-md fa-fw"></i> CHAIRMEN'S DESK</a>
                                    </li>
                                    <li>
                                        <a href="director_desk.jsp"><i class="fa fa fa-user-md fa-fw"></i> DIRECTOR'S DESK</a>
                                    </li>
                                    <li>
                                        <a href="principal_desk.jsp"><i class="fa fa fa-user-md fa-fw"></i> PRINCIPLE'S DESK</a>
                                    </li>
                                    <li>
                                        <a href="mngmnt_desk.jsp"><i class="fa fa fa-user-md fa-fw"></i> ADMINISTRATION</a>
                                    </li>
                                    
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>

                            
                        </ul>
                    </div>
                </div>
                
            </nav>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">New Registration</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Fill The Form
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                        <form  role="form" id="frm" action="record.jsp" method="post" enctype="multipart/form-data">
                                      <div class="col-lg-6">
                                        
                                            
                                            <div class="form-group">
                                                <label>ID</label>
                                                <input name="sid" class="form-control" placeholder="Give This To User" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Father's Name *</label>
                                                <input name="fname" id="fname" class="form-control" placeholder="Enter Father's Name" required >
                                            </div>
                                            <div class="form-group">
                                                <label>Mother's Name *</label>
                                                <input name="mname" id="mname" class="form-control" placeholder="Enter Mother's Name" required >
                                            </div>
                                            <div class="form-group">
                                                <label>Address *</label>
                                                <textarea name="addr" id="addr" class="form-control" rows="4" required></textarea>
                                            </div>
                                                                                                                                                                          
                                            <div class="form-group">
                                                <label>Gender *</label><br>
                                                <label class="radio-inline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" name="rdgen" id="rdgen" value="Male"  checked>Male
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="rdgen" id="rdgen" value="Female" >Female
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="rdgen" id="rdgen" value="Transgender" >Transgender
                                                </label>
                                            </div>
                                            <div class="form-group">
                                               <label>QUATA *</label><br>
                                        <select class="form-control" name='quata' id='quata' >
                                       <option value=''>--Select Quata--</option>
                                      <option value='Regular & TFW' >Regular & TFW</option>
                                       <option value='Regular & GENERAL' >Regular & GENERAL</option>
                                        <option value='Distance & TFW' >Distance & TFW</option>
                                        <option value='Distance & GENERAL' >Distance & GENERAL</option>
                                         <option value='Lateral Regular' >Lateral Regular</option>
                                           <option value='Lateral Distance' >Lateral Distance</option>
                                          </select>
                                            </div>
                                            <div class="form-group">
                                            <label>STREAM *</label>
                                                <select class="form-control" name='stream' id='stream' >
                                       <option value=''>--Select Stream--</option>
                                      <option value='Computer Science & Engineering(C.S.E)' >Computer Science & Engineering(C.S.E)</option>
                                       <option value='Civil Engineering(C.E)' >Civil Engineering(C.E)</option>
                                        <option value='Electronics Comunication Engineering(E.C.E)' >Electronics Comunication Engineering(E.C.E)</option>
                                        <option value='Electrical Engineering(E.E)' >Electrical Engineering(E.E)</option>
                                         </select>
                                                </div>
                                            <div class="form-group">
                                                <label>Date OF joining *</label>
                                                <input name="datej" class="form-control" id="datej" type="date" required >
                                            </div>
                                            
                                        
                                    </div>
                                            <div class="col-lg-6">
                                        
                                            
                                            <div class="form-group">
                                                <label>Full Name *</label>
                                                <input name="sname" id="sname" class="form-control" placeholder="Enter Full Name" required>
                                           
                                            </div>
                                            <div class="form-group">
                                                <label>Date OF Birth *</label>
                                                <input name="dateb" class="form-control" id="dateb" type="date" required >
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Mobile No. *</label>
                                                <input name="mob" id="mob" class="form-control" placeholder="Mobile Number" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Parrent's Mo. No. *</label>
                                                <input name="pmob" id="pmob" class="form-control" placeholder="Guardian Mobile Number" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Religion *</label>
                                                <select class="form-control" name='religion' id='religion' >
                                       <option value=''>--Select Religion--</option>
                                      <option value='Hindu' >Hindu</option>
                                       <option value='Muslim' >Muslim</option>
                                        <option value='Cristian' >Cristian</option>
                                        <option value='Others' >Others</option>
                                         </select>
                                                
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Email Id. *</label>
                                                <input name="email" id="email" class="form-control" placeholder="email@example.com" required >
                                            </div>
                                            <div class="form-group">
                                            <label >Batch *</label>
                                          <select class="form-control" name="section_id" id="section_id">
                                               <option value="2012-2016">2012-2016</option>
                                              <option value="2013-2017">2013-2017</option>
                                               <option value="2014-2018">2014-2018</option>
                                                  <option value="2015-2019">2015-2019</option>
                                                    <option value="2016-2020">2016-2020</option>
                                                   <option value="2017-2021">2017-2021</option>
                                                      <option value="2018-2022">2018-2022</option>
                                                        <option value="2019-2023">2019-2023</option>
                                                          <option value="2020-2024">2020-2024</option>
                                                        </select>
                                                   </div>
                                            <div class="form-group">
                                                <label>File input *</label>
                                                <input name="finput" id="finput" type="file" >
                                            </div><br><br><br><br>
                                            </div>
                                            <div align="center">
                                            <button  class="btn btn-default" name="btnregis" value="Registration">Submit</button>
                                            <button type="reset" class="btn btn-default">Reset</button>
                                            </div>
                                        </form>
                                    </div>
                                    
                                    
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                        
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                 <div class="col-lg-20">              
                      <footer id="footer-section">
                    <div class="container">
                    <div class="footer-socials-section">
                     <ul class="footer-socials">
                       <li><a href="https://facebook.com/OtakuAvengers" target="_blank"><i class="fa fa-facebook"></i><span>Facebook</span></a></li>
                       <li><a href="https://twitter.com/OtakuAvengers" target="_blank"><i class="fa fa-twitter"></i><span>Twitter</span></a></li>
                       <li><a href="https://plus.google.com/u/4/106858995303157332000" target="_blank"><i class="fa fa-google-plus"></i><span>Google +</span></a></li>
                       <li><a href="https://www.youtube.com/channel/UCKltO3_AkA-qh5ilcagzAQA" target="_blank"><i class="fa fa-youtube-play"></i><span>Youtube</span></a></li>
                       <li><a href="http://www.animezone.tk" target="_blank"><i class="fa fa-globe"></i><span>Web Site</span></a></li>
                       <li><a href="https://www.reddit.com/user/AnimeSarkar/" target="_blank"><i class="fa fa-reddit-alien" aria-hidden="true"></i><span>Reddit</span></a></li>
                       <li><a href="https://www.tumblr.com/blog/otakuavengers" target="_blank"><i class="fa fa-tumblr" aria-hidden="true"></i><span>Tumblr</span></a></li>
                    </ul>
                    </div>
                           <div class="footer-logo-copyright footer-not-logo">
                           <div class="footer-menu-wrap">
                              <ul id="menu-top-nav" class="footer-menu"><li id="menu-item-2967" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-2967"><a href="adminpanel.jsp">Home</a></li>
                              <li id="menu-item-34" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-34"><a href="#">Privacy Policy</a></li>
                              <li id="menu-item-35" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-35"><a href="#">Terms and Conditions</a></li>
                              <li id="menu-item-36" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-36"><a href="#">DMCA</a></li>
                              <li id="menu-item-2968" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2968"><a href="#" onclick="window.open('contact.jsp','productservice','width=780, height=500, status=1, scrollbars=1, location=0')">Contact US</a></li>
                              </ul> 
                           </div>
                             <div id="footer-copyright">
                                <p>@2017-18 - Otaku Avengers. All Right Reserved. Designed and Developed by CGT Team</p>
                             </div>
                    <div class="go-to-top-parent"><a href="#" class="go-to-top"><span><i class="fa fa-angle-up"></i><br>Back To Top</span></a></div>
                         </div>
                   </div>

                
               </footer>   
                 </div>
            </div>
            <!-- /#page-wrapper -->

        <!-- /#wrapper -->
                
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

                
    </body>
</html>
