<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vòng Sơ Khảo</title>
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
                <a class="nav-link hh" href="#">HH VN 2020</a>
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
               <a class="nav-link hh" href="/QuanLiHoaHau2020/thisinh/">ỨNG VIÊN</a>
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

    <h2 class="chus">VÒNG SƠ KHẢO HOA HẬU VIỆT NAM 2020</h2>

    <div class="container">
      <div class="row">
        <div class="col-sm-9">
          <div class="saa">
            <i class="far fa-clock"></i> 24/05/2020
            <h4 class="chua">Vòng sơ khảo</h4>
            <img src="<c:url value="/resources/image/toanbo.jpg"/>" alt="hiep" width="100%" height="450px">
          </div>
          <div class="chua2">
            <p>
              <h4>Vòng sơ khảo miền Bắc</h4> <br>
              <strong>Thời gian: </strong> 19-24/02/2020 <br>
              <strong>Địa điểm:  </strong>Thành phố Đà Nẵng<br>
              <strong>Nội dung thi:  </strong> <br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Đo chiều cao,cân nặng, hình thể,nhân trắc học và tính điểm chỉ số hình thể<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trình diễn catwalk theo nhạc<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trả lời phỏng vấn cua Ban Giám Khảo<br>
            </p>
            <p>
              <h4>Vòng sơ khảo miền Nam</h4> <br>
              <strong>Thời gian: </strong> 19-24/02/2020 <br>
              <strong>Địa điểm:  </strong>Thành phố Đà Nẵng<br>
              <strong>Nội dung thi:  </strong> <br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Đo chiều cao,cân nặng, hình thể,nhân trắc học và tính điểm chỉ số hình thể<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trình diễn catwalk theo nhạc<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trả lời phỏng vấn cua Ban Giám Khảo<br>
              <strong>Công bố kết quả:</strong> <br>
              &nbsp; - &nbsp; Ban giám khảo sẽ tuyển chọn 60 thí sinh vào vòng Bán kết.
              Top 60 thí sinh được chọn theo kết quả cao nhất của Ban giám khảo bao gồm cả thí sinh được đặc cách (nếu có).<br>
              </p>
               <img src="<c:url value="/resources/image/hoahauhoanvu.jpg"/>" alt="hiep" width="100%" height="450px" style="margin-bottom: 10px;">
              <strong>Một số lưu ý và yêu cầu</strong><br>
              &nbsp; &nbsp;-&nbsp; &nbsp;Trang phục và trang điểm thí sinh tự chuẩn bị <br>
              &nbsp; &nbsp;- &nbsp; &nbsp;Các thí sinh phải tự túc chi phí ăn uống và đi lại cho các phần thi Sơ khảo. <br>
            </p>
            
          </div>
          <div style="float: right; font-size:20px;">
            <strong>HH VN 2020</strong>
          </div>

          <div>
            <p><strong>Chia sẻ nội dung</strong></p>
            <i class="fab fa-facebook-square" style="font-size:36px;color:rgb(85, 70, 219)"></i>
            <i class="fab fa-twitter-square" style="font-size:36px;color:rgb(90, 52, 196)"></i>
            <i class="fas fa-envelope" style="font-size:36px;color:rgb(90, 52, 196)"></i>
            <i class="fa fa-plus-square" style="font-size:36px;color:rgb(90, 52, 196)"></i>
          </div>

          <div>
            <h4 style="margin-top: 15px;"><strong> Những nội dung khác</strong></h4><hr>
            <ul>
              <li><a href="#">Truyền hình thực tế tại TP. Hồ Chí Minh</a></li>
              <li><a href="#">Vòng chung kết hoa hậu Việt Nam 2020</a></li>
              <li><a href="#">Thông báo lịch trình vòng chung kết hoa hậu Việt Nam 2019</a></li>
            </ul>
            
          </div>

          <div>
            <h4 style="margin-top: 15px;"><strong>Nhà tài trợ</strong></h4>
            <div id="demo" class="carousel slide" data-ride="carousel">
              <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
                <li data-target="#demo" data-slide-to="3"></li>
                <li data-target="#demo" data-slide-to="4"></li>
                <li data-target="#demo" data-slide-to="5"></li>
                <li data-target="#demo" data-slide-to="6"></li>
                <li data-target="#demo" data-slide-to="7"></li>
                <li data-target="#demo" data-slide-to="8"></li>
                <li data-target="#demo" data-slide-to="9"></li>
                <li data-target="#demo" data-slide-to="10"></li>
              </ul>
              
              <div class="carousel-inner">
                <div class="carousel-item col-md-6 active">
                  <img src="<c:url value="/resources/image/i1.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6" >
                  <img src="<c:url value="/resources/image/i2.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i3.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i4.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i5.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i6.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i7.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i8.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i9.png"/>" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="<c:url value="/resources/image/i10.png"/>" alt="s" width="50%" height="auto">
                </div>
              </div>
              
              <!-- Left and right controls -->
              <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon" style="background-color: rgb(74, 228, 87);"></span>
              </a>
              <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon" style="background-color: rgb(74, 228, 87);"></span>
              </a>
            </div>
          </div>

      

        </div>
        <div class="col-sm-3">

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