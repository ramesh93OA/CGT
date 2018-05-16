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
                            <i class="fa fa-user-secret fa-fw"></i>MR. <%=session.getAttribute("username")%><b class="caret"></b>
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
                                <a href="student_panel.jsp" class="active">
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
                                        <a href="#"><i class="fa fa fa-users fa-fw"></i> E.C.E</a>
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
                        <h1 class="page-header">TEACHER'S SECTION</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                
                  <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3>Electronics & Communication Engineering(E.C.E)</h3>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <p>Electronics & Communication Engineering deals with the electronic devices, circuits, 
                                communication equipments like transmitter, receiver, integrated circuits (IC). It also 
                                deals with basic electronics, analog and digital transmission & reception of data, voice
                                 and video (Example AM, FM, DTH), microprocessors, satellite communication, microwave 
                                 engineering, antennae and wave progression. It aims to deepen the knowledge and skills 
                                 of the students on the basic concepts and theories that will equip them in their professional
                                  work involving analysis, systems implementation, operation, production, and maintenance of 
                                  the various applications in the field of Electronics and Communications Engineering.</p>
                                 <a  class="btn btn-default btn-lg btn-block" 
                                 href="../students/page/ece_d.jsp">
                                 View For More Details</a>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                <form action="mailto:sudipta.das1985@gmail.com" method="post" enctype="text/plain">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <span style="font-size: 24px;font-weight: bold">Mr. Sudipta Das
                                <button style="float:right"  type="submit" class="btn btn-default">Send Mail</button></span>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="role col-md-11 col-sm-11 text-center" style="margin:10px;padding:5px!important">
                                        <div class="teacher-overview-block" style="padding: 10px;">
                                            <img style="width: 160px;height:180px; float: left;padding:10px" class="teacher-overview-image" src="../img/sudipta.jpg">
                                              <div class="teacher-content-bloc" style="float: left">
                                                  <div style="text-align: left">
                                                      <h3>Assistant Professor(HOD)</h3>
                                                      <h4> Electronics & Communication Engineering</h4>
                                                      <h4> 9647764962</h4>
                                                      <h4> sudipta.das1985@gmail.com</h4>
                                                      <span style="font-size: 13px;font-weight: bold">Specialization/Research : Mobile Communication, Microstrip Antenna & Filter, DGS,PBG Structures,FSS and RFID</span>
                                                      
                                                  </div>
                                              </div>
                                        </div>
                                      </div>
                                      
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div></form>
                    <form action="mailto:himadrispnd@gmail.com" method="post" enctype="text/plain">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                               <span style="font-size: 24px;font-weight: bold">Mr. Himadri Sekhar Panda
                               <button style="float:right"  type="submit" class="btn btn-default">Send Mail</button></span>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="role col-md-11 col-sm-11 text-center" style="margin:10px;padding:5px!important">
                                        <div class="teacher-overview-block" style="padding: 10px;">
                                            <img style="width: 160px;height:180px; float: left;padding:10px" class="teacher-overview-image" src="../img/himadri.jpg">
                                              <div class="teacher-content-bloc" style="float: left">
                                                  <div style="text-align: left">
                                                    <h3>Assistant Professor</h3>
                                                      <h4> Electronics & Communication Engineering</h4>
                                                      <h4> Mobile :</h4>
                                                      <h4> himadrispnd@gmail.com</h4>
                                                      <h4>Specialization/Research : Mechatronics,<br> Digital Signal Processing (EEG Signal Analysis)</h4>
                                                  </div>
                                              </div>
                                        </div>
                                      </div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div></form>
                    <form action="mailto:anirban_dut@yahoo.com" method="post" enctype="text/plain">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                               <span style="font-size: 24px;font-weight: bold">Mr. Anirban Dutta
                               <button style="float:right"  type="submit" class="btn btn-default">Send Mail</button></span>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="role col-md-11 col-sm-11 text-center" style="margin:10px;padding:5px!important">
                                        <div class="teacher-overview-block" style="padding: 10px;">
                                            <img style="width: 160px;height:180px; float: left;padding:10px" class="teacher-overview-image" src="../img/anirban.jpg">
                                              <div class="teacher-content-bloc" style="float: left">
                                                  <div style="text-align: left">
                                                    <h3>Assistant Professor</h3>
                                                      <h4> Electronics & Communication Engineering</h4>
                                                      <h4> 9232306747</h4>
                                                      <h4> anirban_dut@yahoo.com</h4>
                                                      <h4>Specialization/Research : VLSI Design & Microelectronics</h4>
                                                  </div>
                                              </div>
                                        </div>
                                      </div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div></form>
                    <form action="mailto:parimal.chowdhury1985@gmail.com" method="post" enctype="text/plain">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              <span style="font-size: 24px;font-weight: bold">Mr. Parimal Chowdhury 
                              <button style="float:right"  type="submit" class="btn btn-default">Send Mail</button></span>
                                                    
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="role col-md-11 col-sm-11 text-center" style="margin:10px;padding:5px!important">
                                        <div class="teacher-overview-block" style="padding: 10px;">
                                            <img style="width: 160px;height:180px; float: left;padding:10px" class="teacher-overview-image" src="../img/primal.jpg">
                                              <div class="teacher-content-bloc" style="float: left">
                                                  <div style="text-align: left">
                                                    <h3>Assistant Professor</h3>
                                                      <h4>Electronics & Communication Engineering</h4>
                                                      <h4> Mobile:</h4>
                                                      <h4>parimal.chowdhury1985@gmail.com</h4>
                                                      <h4>Specialization/Research : Mobile Communication & Network Technology</h4>
                                                  </div>
                                              </div>
                                        </div>
                                      </div>
                                      
                    
                            </div>
                            
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div></form>
                    <form action="mailto:sharmistha.biswas48@gmail.com" method="post" enctype="text/plain">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              <span style="font-size: 24px;font-weight: bold">Miss. Sharmistha Dutta
                              <button style="float:right"  type="submit" class="btn btn-default">Send Mail</button></span>
                                                    
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="role col-md-11 col-sm-11 text-center" style="margin:10px;padding:5px!important">
                                        <div class="teacher-overview-block" style="padding: 10px;">
                                            <img style="width: 160px;height:180px; float: left;padding:10px" class="teacher-overview-image" src="../img/sharmistha.jpg">
                                              <div class="teacher-content-bloc" style="float: left">
                                                  <div style="text-align: left">
                                                    <h3>Assistant Professor</h3>
                                                      <h4> Electronics & Communication Engineering</h4>
                                                     
                                                      <h4> sharmistha.biswas48@gmail.com</h4>
                                                      <h4>Specialization/Research : Radio physics & Electronics</h4>
                                                  </div>
                                              </div>
                                        </div>
                                      </div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div></form>
                    <form action="mailto:dutta.g07@gmail.com" method="post" enctype="text/plain">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              <span style="font-size: 24px;font-weight: bold">Mr. Gopal Dutta
                              <button style="float:right"  type="submit" class="btn btn-default">Send Mail</button></span>
                                                    
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="role col-md-11 col-sm-11 text-center" style="margin:10px;padding:5px!important">
                                        <div class="teacher-overview-block" style="padding: 10px;">
                                            <img style="width: 160px;height:180px; float: left;padding:10px" class="teacher-overview-image" src="../img/gopal.jpg">
                                              <div class="teacher-content-bloc" style="float: left">
                                                  <div style="text-align: left">
                                                    <h3>Assistant Professor</h3>
                                                      <h4> Electronics & Communication Engineering</h4>
                                                      <h4> Mobile:</h4>
                                                      <h4> dutta.g07@gmail.com</h4>
                                                      <h4>Specialization/Research :  Optics and Photonics</h4>
                                                  </div>
                                              </div>
                                        </div>
                                      </div>
                            </div>
                            
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div></form>
                    <form action="mailto:dipankar.misra1971@gmail.com" method="post" enctype="text/plain">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              <span style="font-size: 24px;font-weight: bold">Mr. Dipankar Misra
                              <button style="float:right"  type="submit" class="btn btn-default">Send Mail</button></span>
                                                    
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="role col-md-11 col-sm-11 text-center" style="margin:10px;padding:5px!important">
                                        <div class="teacher-overview-block" style="padding: 10px;">
                                            <img style="width: 160px;height:180px; float: left;padding:10px" class="teacher-overview-image" src="../img/dipankar.jpg">
                                              <div class="teacher-content-bloc" style="float: left">
                                                  <div style="text-align: left">
                                                    <h3>Technical Assistant</h3>
                                                      <h4> Electronics & Communication Engineering</h4>
                                                      <h4> Mobile:</h4>
                                                      <h4> dipankar.misra1971@gmail.com</h4>
                                                      <h4>Specialization/Research :  Electronics & Communication</h4>
                                                  </div>
                                              </div>
                                        </div>
                                      </div>
                            </div>
                            
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div></form>
              
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
