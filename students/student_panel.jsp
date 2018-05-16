<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

        <!-- Custom Dashboard CSS -->
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
                            <i class="fa fa-user-secret fa-fw"></i>Mr. <%=session.getAttribute("username")%><b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="../pages/logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                                <a  class="active">
                              <i style="font-size: 26px;" class="fa fa-user-secret fa-fw"></i>
                                <span style="font-size: 23px;font-weight: bold">Dash Board</span>
                              <i style="font-size: 26px;" class="fa fa-user-secret fa-fw"></i>
                              </a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa fa-graduation-cap fa-fw"></i> STUDENTS VIEW<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="registration.jsp"><i class="fa fa fa-plus fa-fw"></i>REGISTRATION SAMPLE</a>
                                    </li>
                                    <li>
                                        <a href="payment_de.jsp"><i class="fa fa fa-paypal fa-fw"></i> PAYMENT DETAILS</a>
                                    </li>
                                    <li>
                                        <a href="st_search.jsp"><i class="fa fa fa-search fa-fw"></i>STUDENTS SEARCH</a>
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
                        <h1 class="page-header">Team Credits & Supports
                        <span style="float:right"><a href="#" class="topnavlink" onclick="window.open('contact.jsp','productservice','width=780, height=500, status=1, scrollbars=1, location=0')">Contact US</a></span>
                        </h1>
                    </div>
                    
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <!-- /.row -->
                <div class="row">
                
                     <div class="col-lg-8">
                     <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-comment fa-fw"></i> Chat
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                             <iframe src="https://www2.cbox.ws/box/?boxid=2395816&boxtag=giYLjp" width="100%" height="320" 
                                allowtransparency="no" frameborder="0" ></iframe>   
                             </div>
                            <!-- /.panel-body -->
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-clock-o fa-fw"></i> For Just Fun
                            </div>
                            <!-- /.panel-heading -->
    <div class="abh07-video-promo">
      <div class="abh07__sound-ctrl abh07__sound-ctrl--muted">
      <svg class="abh07__sound-ctrl-btn has-sound" width="48px" height="48px" viewBox="0 0 48 48" version="1.1" 
      xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        </svg>
        <svg class="abh07__sound-ctrl-btn has-no-sound" width="48px" height="48px" viewBox="0 0 48 48" version="1.1" 
        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        </svg>
      </div>
      <div class="abh07__video">
    <video controls class="has-aspect-ratio--21x15" width="660px" height="400px"  playsinline="" __idm_id__="816929793"  >
      <source data-src="../videos/go1.mp4" type="video/mp4" src="../videos/go1.mp4">
    </video>
      </div>
   </div>
                 </div>
                 <!-- /.panel -->
                 </div>
                    <!-- /.col-lg-8 -->
                    <div class="col-lg-4">
                        <!-- /.panel -->
                        <div class="chat-panel panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-bell fa-fw"></i>
                                Notification Panel
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                            <div class="list-group">
                                   <h4>                 
                                     <div><i class="fa fa-bell fa-fw"></i><a href="../notice/Routine-for-8th-Sem2018-1.pdf" target="_blank">
                                     Even 8th Sem Examinations Scheduled 2017-18 
                                     </a> [04.05.2018] <img src="../img/new.gif" style="width:31px;"><br>
                                     </div><br>
                                      <div><i class="fa fa-bell fa-fw"></i><a href=" https://bit.ly/2GIYm47" target="_blank">
                                     TATA TISCON Requirement Through Quiz Test Only <span style="color: #ff0000">[Civil Engineer]</span></a> [04.05.2018] 
                                     <img src="../img/new2.gif" style="height:20px;width:31px;"><br>
                                     </div><br>
                                     <div><i class="fa fa-bell fa-fw"></i><a href="../notice/impscet-lab-routine2018.jpg" target="_blank">
                                     IMPSCET Practical Examination Scheduled 2017-18</a> [29.04.2018]<br>
                                     </div><br>
                                     <div><i class="fa fa-bell fa-fw"></i><a href="../notice/wipro.pdf" target="_blank">
                                     Wipro Campus Requirement Criteria</a> [28.04.2018]<br>
                                     </div><br>
                                     <div><i class="fa fa-bell fa-fw"></i><a href="https://www.freshersworld.com/" target="_blank">
                                     Wipro Campus Requirement Registration <span style="color: #ff0000">For All</span></a> [28.04.2018]<br>
                                     </div><br>                                     
                                    </h4>
                                </div>
                                <a href="http://makautexam.net/" class="btn btn-default btn-block" target="_blank">View All Alerts</a>
                                </div>
                            <!-- /.panel-body -->
                            
                        </div>
                        <!-- /.panel .chat-panel -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-comment fa-fw"></i> Notifications Panel
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                             </div>
                            <!-- /.panel-body -->
                        </div>
                    </div>
                    <!-- /.col-lg-4 -->
                </div> 
                <!-- /.row -->
                <div class="row">
                    <!-- /.col-lg-12 -->
                </div>   
            </div>
            
            <!-- /#page-wrapper -->
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
