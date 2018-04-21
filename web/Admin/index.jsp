<%-- 
    Document   : index
    Created on : Apr 1, 2018, 2:24:04 PM
    Author     : Bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>JSP Page</title>
        <link href="../Resources/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <!-- FONTAWESOME STYLES-->
    <link href="../Resources/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <!-- CUSTOM STYLES-->
    <link href="../Resources/assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
    <body>
       <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Anginhi.vn Admin Site</a>
                    
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Xem trang chủ</a></li>                                      
                    </ul>
                </div>

            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center user-image-back">                       
                        <img src="../Resources/assets/img/find_user.png" alt="" class="img-responsive"/>
                    </li>


                   
                    <li>
                        <a href="#"><i class="fa fa-edit "></i>Chào mừng, Admin<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Thông báo</a>
                            </li>
<li>
                        <a href="info.html"><i class="fa fa-desktop "></i>Thông tin cá nhân</a>
                    </li>                            <li>
                                <a href="history.html">Lịch sử đăng nhập</a>
                               
                            </li>
                            <li>
                                <a href="password.html">Đổi mật khẩu</a>
                            </li>
                          <li>
                                <a href="#">Thoát</a>
                            </li>
                        </ul>
                    </li>
 
                    
                    <li>
                        <a href="#"><i class="fa fa-sitemap "></i>Công cụ quản lý<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="MemberAccount.jsp">Quản lý thành viên</a>
                               
                            </li>
                            <li>
                                <a href="post.html">Quản lý bài đăng</a>
                            </li>
                            <li>
                                <a href="Food.jsp">Quản lý thực phẩm</a>                               
                    </li>
                    </ul></li>
                     
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Admin Dashboard</h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <h5>Lượt truy Cập</h5>
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <i class="fa fa-bar-chart-o fa-5x"></i>
                                <h3>1000 </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                lượt truy cập trong tuần
                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <h5>Tin nhắn chưa đọc </h5>
                        <div class="alert alert-info text-center">
                            <i class="fa fa-desktop fa-5x"></i>
                            <h3>6</h3>
                            tin nhắn chưa đọc</div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                      <h5>Tin nhắn chưa trả lời </h5>
                      <div class="alert alert-info text-center"> <i class="fa fa-desktop fa-5x"></i>
                        <h3>5</h3>
                        tin nhắn chưa trả lời</div>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                
    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="../Resources/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="../Resources/assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="../Resources/assets/js/jquery.metisMenu.js" type="text/javascript"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="../Resources/assets/js/custom.js" type="text/javascript"></script>


    </body>
</html>
