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
    <style type="text/css">
        
        
#banner {
	/* background:url(../sbijava/images/prelogin/sbcollect_banner.png) no-repeat; */
	background:url(../sbijava/images/SB_collect_banner.png) no-repeat;
	height:200px;
    border-bottom:5px solid #54acba;
}	
 
        </style>
        
        
        
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
                                <a href="adminpanel.jsp" class="active"><i style="font-size: 26px;" class="fa fa-user-secret fa-fw"></i>
                                <span style="font-size: 23px;font-weight: bold">Admin Panel</span>
                              <i style="font-size: 26px;" class="fa fa-user-secret fa-fw"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa fa-graduation-cap fa-fw"></i> STUDENTS SECTION<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="add_admission.jsp"><i class="fa fa fa-plus fa-fw"></i> ADD ADDMISSION</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa fa-paypal fa-fw"></i> PAYMENT</a>
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
                                        <a href="ce,jsp"><i class="fa fa fa-users fa-fw"></i> C.E</a>
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
                
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            
                            <div class="panel-body">
                                <div class="row">
                                        <form name="welcomecollect" method="post">

<div id="wrapper">
	
  <div id="nav">
  	<span class="font_14"><a href="otaku.jsp" class="topnavlink">OTAKU AVENGERS Official Team</a></span>
  
  	<div style="float:right">
  		
	  	<span class="font_14" style="float:right"><a href="#" class="topnavlink" onclick="window.open('https://www.youtube.com/channel/UCKltO3_AkA-qh5ilcagzAQA','productservice','width=780, height=500, status=1, scrollbars=1, location=0')">Know&nbsp;More</a></span>
  	</div>
  	
  </div>
  
  <div  id="banner">
  </div>
                                 <div class="row">
                                 <div class="panel panel-default"><br>
                            <div id="nav">
                               <span style="font-size: 20px;" class="font_14"><a  class="topnavlink">Online Payment</a></span>
                                           		
	  	                       <span style="font-size: 16px;" class="font_14" ><a href="payment.jsp" class="topnavlink">Offline Payment</a></span>
  	                       </div> 
                                 <br><div id="disclaimer_english">
       <span class="heading txt_green font_13 width100">Terms Used:</span>
    	<ul class="list">
		      <div><i class="fa fa-arrow-right fa-fw"></i><span class="txt_green">Corporate Customer: </span>Firm/Company/Institution (F/C/I) 
		      collecting payment from their beneficiaries.</div>
		      <div><i class="fa fa-arrow-right fa-fw"></i><span class="txt_green">User:</span> The beneficiary making a payment to F/C/I for 
		      the services/goods availed.</div>
		      <div><i class="fa fa-arrow-right fa-fw"></i>Institute shall not be responsible, in any way, for the quality or merchantability 
		      of any product/merchandise or any of the services related thereto, &nbsp;&nbsp;&nbsp;&nbsp;whatsoever, offered to the User by 
		      the Corporate Customer. Any disputes regarding the same or delivery of the Service or otherwise will be settled 
		      &nbsp;&nbsp;&nbsp;&nbsp;between Corporate Customer and the User and Institute shall not be a party to any such dispute. 
		      Any request for refund by the User on any grounds &nbsp;&nbsp;&nbsp;&nbsp;whatsoever should be taken up directly with the 
		      Corporate Customer and the Institute will not be concerned with such a request.</div>
		      <div><i class="fa fa-arrow-right fa-fw"></i>Institute takes no responsibility in respect of the services provided and User 
		      shall not be entitled to make any claim against the Institute for deficiency in &nbsp;&nbsp;&nbsp;&nbsp;the services provided by the 
		          Corporate Customer.</div>
		      <div><i class="fa fa-arrow-right fa-fw"></i>The User shall not publish, display, upload or transmit any information prohibited 
		      under Rule 3(2) of the Information Technology (Intermediaries guidelines) &nbsp;&nbsp;&nbsp;&nbsp;Rules, 2011.</div>
		      <div><i class="fa fa-arrow-right fa-fw"></i>In case of non-compliance of the terms and conditions of usage by the User, 
		      the Institute has the right to immediately terminate the access or usage rights &nbsp;&nbsp;&nbsp;&nbsp;of the User to the computer
		          resource of the Institute and remove the non-compliant information.</div>
		     
	    </ul>
	   <div class="terms-conditions">
	      <input type="checkbox" name="checkbox" id="checkbox" checked required>
	      <div class="terms-conditions-text">I have read and accepted the terms and conditions stated above. <br>
	        <span class="marginT5 float_left">(Click Check Box to proceed for payment.) </span></div>
	    </div>
	    <div class="clear">
	    </div>
	    <div align="center">
	     <a href="adminpanel.jsp" class="btn btn-default"  
	     onclick="window.open('https://www.onlinesbi.com/sbicollect/icollecthome.htm',
	    		 'productservice','width=1200px, height=800, status=1, scrollbars=1, location=0')">
	    		  Proceed</a>
	    </div>
	    <div class="clear"></div>
  </div>
                                 
                            </div>
                            
                            
                            
                            </div>
   
  	
  
  

             
                                    
             
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
