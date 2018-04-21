<%-- 
    Document   : Food
    Created on : Apr 1, 2018, 6:38:34 PM
    Author     : Bach
--%>

<%@page import="controller.SearchFoodByCategoryServlet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entities.*" %>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Two Page</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="../Resources/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- FONTAWESOME STYLES-->
        <link href="../Resources/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <!-- CUSTOM STYLES-->
        <link href="../Resources/assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <style type="text/css">
            #apDiv1 {
                position: absolute;
                width: 200px;
                height: 115px;
                z-index: 2;
            }
            #apDiv2 {
                position: absolute;
                width: 200px;
                height: 115px;
                z-index: 2;
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

                            <img src="../Resources/assets/img/find_user.png" alt="" class="img-responsive" align="middle"/>

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
                                    <a href="food.html">Quản lý thực phẩm</a>
                                <li>
                                    <a href="#">Quản lý món ăn</a>
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
                            <h2>Quản lý thực phẩm</h2>  

                        </div>
                    </div>    
                    
                    <!-- /. ROW  -->
                    <hr />
                    <form action="SearchFoodByCategoryServlet" method="post" name="form1" class="open">         
                        <div align="center">
                         <!--   <input type="text" list="tennhom"  style="align-items: center"> -->
                         <select name="category" id="category">    
            
                                <c:forEach var="tk" items="<%= new FoodCategoryModel().danhsachnhomthucpham()%>">                               
                                    <option value="${tk.foodCategoryId}">${tk.foodCategoryName}</option>
                                </c:forEach>
                            </select>
                           <!--  <input type="submit" value="Tìm kiếm"/>  -->
                             <% 
                        String s=request.getParameter("category");
                              %>
      
                          <a href="${pageContext.request.contextPath}/SearchFoodByCategoryServlet?category=${s}"><img src="../Resources/images/search_category.png" style="height: 30px" alt=""/></a>
                              
                                   
                        </div> 
                      


                  
                        <div align="center">
                            <table width="100%" border="1">
                                <tr>
                                    <th width="110" scope="col"><div align="center">Tên thực phẩm</div></th>
                                    <th width="80" scope="col"><div align="center">Nước</div></th>
                                    <th width="133" scope="col"><div align="center">Năng lượng</div></th>
                                    <th width="174" scope="col"><div align="center">Carbohydrate</div></th>
                                    <th width="80" scope="col"><div align="center">Protein</div></th>   
                                    <th width="80" scope="col"><div align="center">Lipid</div></th>
                                </tr>  

                                <%                                       
                          
                             /*      List<Food> foodList;
                                    // ArrayList<ThanhVien> dsLoc = (ArrayList<ThanhVien>)session.getAttribute("dsLoc");
                                    if (request.getParameter("category")==null || request.getParameter("category").equals("")){
                                           foodList= (List<Food>) request.getAttribute("allfood");
                                    } else 
                                    {
                                           foodList= (List<Food>) request.getAttribute("allfoodbycategory");
                                    } */
                             
                                 List<Food> ds = new FoodModel().getAllFood();
			   List<Food> allfoodbycategory = (List<Food> )session.getAttribute("allfoodbycategory");
			      if(session.getAttribute("allfoodbycategory")!=null){
				ds=allfoodbycategory;
			}

                                %>               
                                <tr>
                                    <c:forEach var="th" items="${foodList}">                                        
                                        <td>${foodList.foodVName}</td>
                                        <td>${foodList.water}</td>
                                        <td>${foodList.energy}</td>
                                        <td>${foodList.carbohydrate}</td>
                                        <td>${foodList.protein}</td>
                                        <td>${foodList.lipid}</td>                                   
                                        <td width="120"><div><a href="#" class="btn btn-danger"><img src="../Resources/images/delele_food.png" alt="" style="height: 30px"/></a>
                                                <a href="#" class="btn btn-danger"><img src="../Resources/images/search.png" alt="" style="height: 30px"/></a></div>
                                            
                                          
                                        </td>
                                    </tr>
                                   
                                </c:forEach>
                            </table>

                        </div>
                    </form>

                    <!-- /. ROW  -->
                    <form name="form3" method="post" action="">
                        <a href="FoodDetail.jsp"><img src="../Resources/images/add.png" alt="" style="height: 30px"/></a>
                        <input type="submit" name="btnAdd" id="btnAdd" value="Thêm mới">
                        <input type="submit" name="btnAdd2" id="btnAdd2" value="Nhập XSLS">
                        <input type="submit" name="btnAdd3" id="btnAdd3" value="Xuất XSLS">
                    </form> 

                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
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