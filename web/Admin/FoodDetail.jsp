<%-- 
    Document   : FoodDetail
    Created on : Apr 9, 2018, 1:07:52 PM
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
                            <h2>Chi tiết thực phẩm</h2>   
                        </div>
                    </div>              
                    <!-- /. ROW  -->
                    <hr />
                    <form name="form1" method="post" action="">
                        <input type="submit" name="btnAdd" id="btnAdd" value="Thêm mới">
                        <input type="submit" name="btnAdd2" id="btnAdd2" value="Nhập XSLS">
                        <input type="submit" name="btnAdd3" id="btnAdd3" value="Xuất XSLS">
                    </form>
                    <div  style="float: left; width: 100%; margin-top:100px; padding: 5px 0">
                        <div style="width: 100%;padding: 5px 0">
                            <div class="col-lg-4"><label for="select" style="float:right;">Nhóm thực phẩm:</label></div>
                            <div class="col-lg-4">
                                <select name="select" id="select" style="width: 100%">
                                    <option selected>--Chọn một nhóm thực phẩm--</option>
                                    <option value="1">Nhóm 1: Ngũ cốc và sản phẩm chế biến</option>
                                    <option value="2">Nhóm 2: Khoai củ và sản phẩm chế biến</option>
                                    <option value="3">Nhóm 3: Hạt,quả giàu đạm, béo và sản phẩm chế biến</option>
                                    <option value="4">Nhóm 4: Rau, quả, củ dùng làm rau</option>
                                    <option value="5">Nhóm 5: Quả chín</option>
                                    <option value="6">Nhóm 6: Dầu, mỡ, bơ</option>
                                    <option value="7">Nhóm 7: Thịt và sản phẩm chế biến</option>
                                    <option value="8">Nhóm 8: Thủy sản và sản phẩm chế biến</option>
                                    <option value="9">Nhóm 9:Trứng và sản phẩm chế biến</option>
                                    <option value="10">Nhóm 10: Sữa và sản phẩm chế biến</option>
                                    <option value="11">Nhóm 11: Đồ hộp</option>
                                    <option value="12">Nhóm 12: Đồ ngọt(đường, mứt, bánh, kẹo)</option>
                                    <option value="13">Nhóm 13: Gia vị, nước chấm</option>
                                    <option value="14">Nhóm 14: Nước giải khát, bia, rượu</option>
                                </select>
                            </div>
                            <div class="col-lg-4">&nbsp;</div>
                        </div>
                        <div  style="width: 100%; float:left;padding: 5px 0">
                            <div class="col-lg-4" ><label style="float:right;">Mã thực phẩm:</label>
                            </div>
                            <div class="col-lg-4">20001 </div>
                            <div class="col-lg-4">&nbsp;</div>
                        </div>
                        <div style="width: 100%; float:left;padding: 5px 0">
                            <div class="col-lg-4">
                                <label for="textfield2" style="float:right;">Tên thực phẩm (tiếng Việt):</label>
                            </div>
                            <div class="col-lg-4">
                                <input type="text" name="tenthucphamTV" id="textfield2" style="width: 100%"/>
                            </div>				
                            <div class="col-lg-4">&nbsp;</div>
                        </div>
                        <div  style="width: 100%; float:left;padding: 5px 0">
                            <div class="col-lg-4" ><label for="textfield3" style="float:right;">Tên thực phẩm (tiếng Anh):</label>
                            </div>
                            <div class="col-lg-4"><input type="text" name="tenthucphamTA" id="textfield3"  style="width: 100%"/> </div>
                            <div class="col-lg-4">&nbsp;</div>
                        </div>
                        <div style="width: 100%; height:100px; float:left; padding: 5px 0 ">
                            <div class="col-lg-4"><label for="textarea" style="float:right;">Công dụng:</label></div>
                            <div class="col-lg-4" style="height: 100%"><textarea name="congdung" id="textarea" style="width:100%; height:100%"></textarea>
                            </div>
                            <div class="col-lg-4">&nbsp;</div>					
                        </div>	
                        <div  style="width: 100%; float:left;padding: 5px 0">
                            <div class="col-lg-4" ><label for="imageUpload" style="float:right;">Ảnh: </label>
                            </div>
                            <div class="col-lg-4"><input type="file" id="imageUpload"/></div>
                            <div class="col-lg-4">&nbsp;</div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-lg-offset-1" ><table width="100%" border="5">
                            <tbody>
                                <tr>
                                    <th width="54%" scope="col" class="vHeading text-center">Thành phần dinh dưỡng</th>
                                    <th width="12%" scope="col" class="vHeading text-center">Đơn vị</th>
                                    <th width="34%" scope="col" class="vHeading text-center">Hàm lượng</th>
                                </tr>
                                <tr>
                                    <th scope="row">Nước</th>
                                    <td class="text-center">g</td>
                                    <td>
                                        <input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Năng lượng(Energy)</th>
                                    <td class="text-center">KCal</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Protein</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Lipid(Fat)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Glucid(Carbohydrate)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Celluloza(Fiber)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Tro(Ash)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Đường tổng số</th>
                                    <td class="text-center">g</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Galactoza(Galactose)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Maltoza(Maltose)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Lactoza(Lactose)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Fructoza(Fructose)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Glucoza(Glucose)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Sacaroza(Sucrose)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Calci(Calcium)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Magiê(Magnesium)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Mangan(Manganese)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Phospho(Phosphorous)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Kali(Potassium)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Natri(Sodium)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Kẽm(Zinc)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Đồng(Copper)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Selen(Selenium)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin C(Ascorbic acid)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin B1(Thiamine)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin B2(Riboflavin)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin PP(Niacin)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin B5(Pantothenic acid)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin B6(Pyridoxine)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Folat(Folate)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin B9(Folic acid)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin H(Biotin)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin B12(Cyanocobalamine)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin A(Retinol)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin D(Calciferol)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin E(Alpha-tocopherol)</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Vitamin K(Phylloquinone)</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Beta-caroten</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Alpha-caroten</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Beta-cryptoxanthin</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Lycopen</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Lutein+Zeaxanthin</th>
                                    <td class="text-center">µg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Purin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-5"  >
                        <table width="100%" border="5">
                            <tbody>
                                <tr>
                                    <th width="54%" scope="col" class="vHeading text-center">Thành phần dinh dưỡng</th>
                                    <th width="12%" scope="col" class="vHeading text-center">Đơn vị</th>
                                    <th width="34%" scope="col" class="vHeading text-center">Hàm lượng</th>
                                </tr>
                                <tr>
                                    <th scope="row"> Tổng số isoflavon(Total isoflavone)</th>
                                    <td class="text-center">mg</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Daidzein</th>
                                    <td class="text-center"> mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Genistein</th>
                                    <td class="text-center"> mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Glycetin</th>
                                    <td class="text-center"> mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Tổng số acid béo no</th>
                                    <td class="text-center">g</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Palmitic(C16:9)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Marganic(C17:0)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft">Stearic(C18:0)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Arachidic (C20:0)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Behenic(22:0)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Lignoceric(C24:0)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Tổng số acid béo không no 1 nối đôi</th>
                                    <td class="text-center">g</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Myristoleic(C14:1)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Palmitoleic(C16:1)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Oleic(C18:1)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Tổng số acid béo không no nhiều nối đôi</th>
                                    <td class="text-center">g</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Linoleic(C18:2 n6)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Linolenic(C18:2 n3)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Arachidonic(C20:4)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Eicosapentaenoic(C20:5 n3)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row" class="paddingLeft"> Docosahenxaenoic(C22:6 n3)</th>
                                    <td class="text-center">g</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Tổng số acid bén trans</th>
                                    <td class="text-center">g</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row">Cholesterol</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Phylosterol</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Lysin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Methionin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Tryptophan</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Phenylalanin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Threonin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Valin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Leucin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Isoleucin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Arginin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Histidin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Cystin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Tyrosin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Alanin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Acid aspartic</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Acid glutamic</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Glycin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Prolin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"> Serin</th>
                                    <td class="text-center">mg</td>
                                    <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                </tr>
                                <tr>
                                    <th scope="row"></th>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </tbody>
                        </table></div>

                    <div><input type="button" value="Lưu" name="btnLuu" align="middle"/></div>

                </div>
                <!-- /. PAGE INNER  -->
                <div>




                </div>
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>

        <!-- /. ROW  -->

  
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
