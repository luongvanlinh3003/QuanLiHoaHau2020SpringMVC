<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>

<jsp:include page="Header.jsp"></jsp:include>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="<c:url value="/resources/image/miss.png"/>"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link hh" href="/QuanLiHoaHau2020">TRANG CHỦ<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <div class="dropdown">
                  <a class="nav-link hh" href="#">LỊCH TRÌNH</a>
                  <div class="dropdown-content">
                    <a class="hi" href="/QuanLiHoaHau2020/lichtrinhvongsokhao">VÒNG SƠ TUYỂN</a>
                    <a class="hi" href="/QuanLiHoaHau2020/lichtrinhvongbanket">VÒNG BÁN KẾT</a>
                    <a class="hi" href="/QuanLiHoaHau2020/lichtrinhvongchungket">VÒNG CHUNG KẾT</a>
                  </div>
                </div>
            </li>
            <li class="nav-item active">
              
              <div class="dropdown">
                <a class="nav-link hh" href="#">HHVN 2020</a>
                <div class="dropdown-content">
                  <a class="hi" href="#">ĐƠN VỊ TỔ CHỨC</a>
                  <a class="hi" href="#">ĐĂNG KÍ DỰ THI</a>
                  <a class="hi" href="#">BAN GIÁM KHẢO</a>
                  <a class="hi" href="#">THỂ LỆ</a>
                  <a class="hi" href="#">LỊCH THI</a>
                  <a class="hi" href="#">GIẢI THƯỞNG</a>
                </div>
              </div>
            </li>
            <li class="nav-item active">
                
                <div class="dropdown">
                  <a class="nav-link hh" href="/QuanLiHoaHau2020/thisinh/">ỨNG VIÊN</a>
                </div>
            </li>
            <li class="nav-item active dropdown">
                <a class="nav-link hh" href="#">TIN TỨC</a>
                <div class="dropdown-content">
                    <a class="hi" href="#">Nội dụng vòng sơ khảo</a>
                    <a class="hi" href="#">Nội dung vòng bán kết</a>
                    <a class="hi" href="#">Nội dung vòng chung kết</a>
                 </div>
            </li>
            <li class="nav-item active">
              
                <div class="dropdown">
                  <a class="nav-link hh" href="#">ĐẶT VÉ</a>
                  <div class="dropdown-content">
                    <a class="hi" href="#">THÔNG TIN ĐẶT VÉ</a>
                    <a class="hi" href="#">VÒNG BÁN KẾT</a>
                    <a class="hi" href="#">VÒNG CHUNG KẾT</a>
                  </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link hh" href="#">ĐỐI TÁC</a>
            </li>
          </ul>
         
        </div>
    </nav>

<div id="body-login" >
	<div id="body-flex-login" >
		<div style="background-color: gray !important;" id="container-login" >
			<div id="container-login-left" >
				<div id="header-top-left" class="header-login">
					<span id="text-logo" >Welcome</span><br>
					<span id="hint-text-logo" >Cuộc thi hoa hậu hoàn vũ 2020! </span>
				</div>
				<div id="header-bottom-left">
					<p>
					<img alt="icon_oval" src="<c:url value="/resources/image/icon_oval.png"/>"/>
					<span>Cuộc thi hoa hậu hoàn vũ 2020 được tổ chức tại Hà Nội</span>
					</p>
					<p>
					<img alt="icon_oval" src="<c:url value="/resources/image/icon_oval.png"/>"/>
					<span>Cuộc thi năm có sự tham gia của nhiều thí sinh trẻ</span>
					</p>
					<p>
					<img alt="icon_oval" src="<c:url value="/resources/image/icon_oval.png"/>"/>
					<span>Quán quân sẽ được 1 suất học bổng do chương trình tài trợ</span>
					</p>
				</div>
			</div>
			<div id="container-login-right" >
				<div id="header-top-right" class="header-login" >
					<span style="color: white !important;	font-size: 2em;font-weight: bold;" id="dangnhap" class="actived">Đăng Nhập</span>
				</div>
				<div id="container-center-login-right" >
						<!-- invalid credentials error msg -->
						<c:if test="${not empty error}">
							<div style="color: red;font-size: 15px;" class="error">${error}</div>
						</c:if>

						<!-- logged out msg -->
						<c:if test="${not empty msg}">
							<div style="color: blue;font-size: 15px;" class="msg">${msg}</div>
						</c:if>
						<form name="loginform" action="<c:url value='/login'/>" method="POST" class="container-login-form" id="container-center-login-right">
							<input id="tendangnhap" class="material-text-input input-icon-user" placeholder="Tên Đăng Nhập" name="username"  type="text"/><br>
							<input id="matkhau" class="material-text-input input-icon-password" placeholder="Mật khẩu" name="password" type="password"/><br>
							<input id="btnDangNhap" class="material-primary-button" type="submit" value="ĐĂNG NHẬP"/><br>
							<div id="ketqua" style="margin-top: 10px; text-align: center;color: red;font-weight: bold;"></div>	
						</form>
				</div>
				<div id="container-social-login" >
					<img alt="icon_oval" src="<c:url value="/resources/image/icon_facebook.png"/>"/>
					<img alt="icon_oval" src="<c:url value="/resources/image/icon_google.png"/>"/>
				</div>
			</div>
		</div>
	</div>
</div>	

		<footer class="page-footer font-small pt-4">
      <div class="container-fluid text-center text-md-left blue">
        <div class="row">
    
          <div class="col-md-6 mt-md-0 mt-3">
            <ul class="list-unstyled">
              <li>
                <a class="as" href="#!">TRANG CHỦ</a>
              </li>
              <li>
                <a class="as" href="#!">GIỚI THIỆU</a>
              </li>
              <li>
                <a class="as" href="#!">LỊCH TRÌNH</a>
              </li>
              <li>
                <a class="as" href="#!">ỨNG VIÊN</a>
              </li>
              <li>
                <a class="as" href="#!">THƯ VIỆN VIDEO</a>
              </li>
            </ul>
    
          </div>
       
    
          <hr class="clearfix w-100 d-md-none pb-3">
    
          <div class="col-md-3 mb-md-0 mb-3">
              <p>Kết nối với chúng tôi trên:</p>
          </div>
          <div class="col-md-3 mb-md-0 mb-3">
            Đăng kí nhận thông tin
            <input type="email" class="form-control" id="pwd" placeholder="Nhập địa chỉ Email" name="pwd">
          </div>
         
    
        </div>
       
    
      </div>
      <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="#">Miss Universe VietNam</a>
      </div>
    </footer>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>