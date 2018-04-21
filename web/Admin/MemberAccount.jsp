<%-- 
    Document   : MemberAccount
    Created on : Apr 1, 2018, 6:38:16 PM
    Author     : Bach
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entities.*" %>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">                  
        <title>JSP Page</title> 
        <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Free Bootstrap Admin Template : Two Page</title> -->
        <meta charset="utf-8" />
        <link href="../Resources/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../Resources/assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="../Resources/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <!-- GOOGLE FONTS-->
        <!--  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> -->

        <style type="text/css">
            #wrapper #page-wrapper #page-inner form div table {
                font-family: Verdana, Geneva, sans-serif;
            }
            
            
        </style>
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
                        <p><a class="navbar-brand" href="#">Anginhi.vn Admin Site</a></p>

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
                                    <a href="member.html">Quản lý thành viên</a>
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
            <div id="page-wrapper" >
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Quản lý thành viên</h2>   
                        </div>
                    </div>              
                    <!-- /. ROW  -->
                    <hr />

                    <!-- /. ROW  -->         

                    <form action="MemberAccountServlet" method="post" name="form1" class="open">

                        <label for="select"></label>
                        <div align="center">
                            <table width="100%" border="1">                                
                                <tr>
                                    <th width="99" scope="col"><div align="center">Mã tài khoản</div></th>
                                    <th width="146" scope="col"><div align="center">Tên đăng nhập</div></th>
                                    <th width="133" scope="col"><div align="center">Mật khẩu</div></th>
                                    <th width="174" scope="col"><div align="center">Giới tính</div></th>
                                    <th width="80" scope="col"><div align="center">Địa chỉ</div></th>
                                    <th width="96" scope="col"><div align="center">Điện thoại</div></th>
                                    <th width="96" scope="col"><div align="center"></div></th>
                                </tr>

                                <% MemberAccountModel tktv = new MemberAccountModel();%>                                                                                     

                                <c:forEach var="tk" items="<%= tktv.danhsach()%>">
                                    <tr>
                                        <td style="text-align: center">${tk.getMemberId()}</td>
                                        <td style="text-align: center">${tk.getMemberLoginName()}</td>
                                        <td style="text-align: center">${tk.getMemberPassword()}</td>
                                        <td style="text-align: center">${tk.getMemberGender()}</td>
                                        <td style="text-align: center">${tk.getMemberAddress()}</td>
                                        <td style="text-align: center">${tk.getMemberPhoneNumber()}</td>
                                        <td>
                                            <div align="center">
                                                <a href="${pageContext.request.contextPath}/MemberAccountServlet?memberId=${tk.memberId}&action=xoa" class="btn btn-danger" onclick="return confirm('Are you sure?')"><img src="../Resources/images/delete_user.png" alt="" style="height: 30px"/></a>                                                         
                                                
                                            </div>
                                        </td>

                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </form>
                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->       
        <script src="../Resources/assets/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Resources/assets/js/custom.js" type="text/javascript"></script>
        <script src="../Resources/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="../Resources/assets/js/jquery.metisMenu.js" type="text/javascript"></script>
        <script>
            function myFunction()
            {
                location.reload();
            }
        </script>
    </body>
</html>
