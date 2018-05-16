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
                                        <a href="#"><i class="fa fa fa-plus fa-fw"></i>REGISTRATION SAMPLE</a>
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
                                        <form id="frmm"role="form">
                                        <fieldset disabled>
                                      <div class="col-lg-6">
                                        
                                            
                                            <div class="form-group">
                                                <label>ID</label>
                                                <input class="form-control" placeholder="Auto Generated">
                                            </div>
                                            <div class="form-group">
                                                <label>Father's Name *</label>
                                                <input name="fname" id="fname" class="form-control" placeholder="Enter Father's Name" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Mother's Name *</label>
                                                <input name="mname" id="mname" class="form-control" placeholder="Enter Mother's Name" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Address *</label>
                                                <textarea name="addr" id="addr" class="form-control" rows="4" required></textarea>
                                            </div>
                                                                                                                                                                          
                                            <div class="form-group">
                                                <label>Gender *</label><br>
                                                <label class="radio-inline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" name="male" id="male" value="male"  checked>Male
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="female" id="female" value="female" >Female
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="transgender" id="transgender" value="transgender" >Transgender
                                                </label>
                                            </div>
                                            <div class="form-group">
                                               <label>QUATA *</label><br>
                                        <select class="form-control" name='quata' id='quata' >
                                       <option value=''>--Select Quata--</option>
                                      <option value='rt' >Regular & TFW</option>
                                       <option value='rg' >Regular & GENERAL</option>
                                        <option value='dt' >Distance & TFW</option>
                                        <option value='dg' >Distance & GENERAL</option>
                                         <option value='lr' >Lateral Regular</option>
                                           <option value='ld' >Lateral Distance</option>
                                          </select>
                                            </div>
                                            <div class="form-group">
                                            <label>STREAM *</label>
                                                <select class="form-control" name='stream' id='stream' >
                                       <option value=''>--Select Stream--</option>
                                      <option value='cse' >Computer Science & Engineering(C.S.E)</option>
                                       <option value='ce' >Civil Engineering(C.E)</option>
                                        <option value='ece' >Electronics Comunication Engineering(E.C.E)</option>
                                        <option value='ee' >Electrical Engineering(E.E)</option>
                                         </select>
                                                </div>
                                            <div class="form-group">
                                                <label>Date OF joining*</label>
                                                <input name="date" class="form-control" id="date" type="date" required>
                                            </div>
                                            
                                        
                                    </div>
                                            <div class="col-lg-6">
                                        
                                            
                                            <div class="form-group">
                                                <label>Full Name *</label>
                                                <input name="1st&mid" id="1st&mid" class="form-control" placeholder="First Space Middle Name" >
                                                <br>
                                                <input name="lastname" id="lastname" class="form-control"  placeholder="Last Name" >
                                                
                                            </div>
                                            <div class="form-group">
                                                <label>Date OF Birth *</label>
                                                <input name="date" class="form-control" id="date" type="date" >
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Mobile No. *</label>
                                                <input name="mob" id="mob" class="form-control" placeholder="Mobile Number" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Parrent's Mo. No. *</label>
                                                <input name="pmob" id="pmob" class="form-control" placeholder="Guardian Mobile Number" >
                                            </div>
                                            <div class="form-group">
                                                <label>Religion *</label>
                                                <select class="form-control" name='religion' id='religion' >
                                       <option value=''>--Select Religion--</option>
                                      <option value='hindu' >Hindu</option>
                                       <option value='muslim' >Muslim</option>
                                        <option value='cristian' >Cristian</option>
                                        <option value='others' >Others</option>
                                         </select>
                                                
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Email Id. *</label>
                                                <input name="email" id="email" class="form-control" placeholder="email@example.com">
                                            </div>
                                            <div class="form-group">
                                            <label >Batch *</label>
                                          <select class="form-control" name="section_id" id="section_id">
                                               <option value="batch1">2012-2016</option>
                                              <option value="batch2">2013-2016</option>
                                               <option value="batch3">2014-2017</option>
                                                  <option value="batch4">2015-2018</option>
                                                    <option value="batch5">2016-2019</option>
                                                   <option value="batch6">2017-2020</option>
                                                      <option value="batch7">2018-2021</option>
                                                        <option value="batch8">2019-2022</option>
                                                          <option value="batch9">2020-2023</option>
                                                        </select>
                                                   </div>
                                            <div class="form-group">
                                                <label>Photo</label><br>
                                                <textarea name="addr" id="addr"  rows="6" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;paste your &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;passport &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;size photo"></textarea>
                                            </div><br><br><br><br>
                                            </div></fieldset>
                                            <div align="center">
                                            <input type="button" class="btn btn-default" onclick="window.print('')" value="Print"/>
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
