<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ChiTietThiSinh</title>
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
                <a class="nav-link hh" href="#">HH VN 2019</a>
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
          <ul class="navbar-nav active">
            <li class="nav-item">
              <a class="nav-link hh" href="#">Đăng nhập</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link hh" href="#">Đăng kí</a>
            </li>
          </ul>
        </div>
    </nav>
    
    <h2 class="chus">Thông tin thí sinh</h2>
    
    <div class="container"> 
    	<div class="row">
    			<div class="col-sm-4">
    				<img src="<c:url value="/resources/image/${thisinh.getAnhChanDung()}"/>"  class="card-img-top" alt="..."  width="100%" height="400px"><br>
    			</div>
    			<div class="col-md-8">
    									
		    				<span style="font-size: 1,5em;font-weight: bold;">Tên thí sinh: ${thisinh.getTenThiSinh()}</span><br>
		    				<span style="font-size: 1,5em;font-weight: bold;">Ngày sinh:	<fmt:formatDate pattern = "dd-MM-yyyy"  value = "${thisinh.getNgaySinh()}" /></span><br>
		    				<span style="font-size: 1,5em;font-weight: bold;">Địa chỉ: ${thisinh.getDiaChi()}</span><br>
		    				<span style="font-size: 1,5em;font-weight: bold;">Trình độ: ${thisinh.getTrinhDo()}</span><br>
		    				<span style="font-size: 1,5em;font-weight: bold;">Số đo 3 vòng : ${thisinh.getSoDoVong1()}</span>
		    				 - <span style="font-size: 1,5em;font-weight: bold;">${thisinh.getSoDoVong2()}</span>
		    				 - <span style="font-size: 1,5em;font-weight: bold;">${thisinh.getSoDoVong3()}</span><br>
		    				<span style="font-size: 1,5em;font-weight: bold;">Cân nặng: ${thisinh.getCanNang()} Kg</span><br>
		    				<span style="font-size: 1,5em;font-weight: bold;">Chiều cao: ${thisinh.getChieuCao()} m</span><br>
		    			
    			</div>
    	</div>
    </div>
    
    <footer style="margin-top: 50px" class="page-footer font-small pt-4">
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