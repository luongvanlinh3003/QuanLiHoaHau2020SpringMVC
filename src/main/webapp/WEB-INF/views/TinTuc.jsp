<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tin tức</title>
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
                  <div class="dropdown-content">
                    <a class="hi" href="#">2018</a>
                    <a class="hi" href="#">2019</a>
                    <a class="hi" href="#">2020</a>
                  </div>
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

    <h2 class="chus">TIN TỨC</h2>

    <div class="container">
      <div class="row">
        <div class="col-sm-9">
          <div id="carouselExampleIndicators" class="carousel slide banner" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators banner-indicator" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
          
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="2/anh hoa hau/a-hau-07.jpg" class="d-block w-100 image-banner"   alt="..." width="100%" height="300px">
              </div>
              <div class="carousel-item">
                <img src="2/anh hoa hau/KHANH-VAN-BI-1575728686.jpg" class="d-block w-100 image-banner" alt="..." width="100%" height="300px">
              </div>
              <div class="carousel-item">
                <img src="2/anh hoa hau/pham-dieu-linh-2-16013529818491351938521.jpg" class="d-block w-100 image-banner" alt="..." width="100%" height="300px">
              </div>
              <div class="carousel-item">
                <img src="2/anh hoa hau/le-thi-hanh-dung2-15972042554231865398842.jpg" class="d-block w-100 image-banner" alt="..." width="100%" height="300px">
              </div>
              <div class="carousel-item">
                <img src="2/anh hoa hau/vuong-mien-hoa-hau-hoan-vu-viet-nam-bi-gay-chua-day-1-tuan-sau-dang-quang-4.jpg" class="d-block w-100 image-banner" alt="..." width="100%" height="300px">
              </div>
              <div class="carousel-item">
                <img src="2/anh hoa hau/images (1).jpg" class="d-block w-100 image-banner" alt="...">
              </div>
              <div class="carousel-item">
                <img src="2/anh hoa hau/anh-doi-thuong-hut-mat-cua-thi-sinh-hoa-hau-viet-nam-2020.jpg" class="d-block w-100 image-banner" alt="..." width="100%" height="300px">
              </div>
          
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
            <div>
              <p>
                <strong>Thời gian Vòng Bán Kết - Chung Kết: </strong> 19-24/05/2020 <br>
                <strong>Địa điểm:  </strong>Thành phố Đà Nẵng<br>
                <strong>Nội dung thi:  </strong> <br>
                &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Kiểm tra nhân trắc học, hồ sơ cá nhân<br>
                &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Huấn luyện đào tạo các kỹ năng: ứng xử, phỏng vấn, catwalk...<br>
                &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Tham gia hoạt động từ thiện, xã hội<br>
                &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trả lời phỏng vấn ban giám khảo<br>
              </p>
              <p>
                  <strong>Tham gia các phần thi khác: </strong> 
                
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người đẹp Áo dài<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người Đẹp Biển<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người Đẹp Bản lĩnh<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người Đẹp Thời Trang<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người đẹp Thể Thao<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người Đẹp Truyền Thông(Tryền thông bình chọn)<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người Đẹp được yêu thích nhất(Khán giả bình chọn)<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Người Đẹp Tài Năng(phần thi này theo đăng ký của thí sinh)<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Thi ứng xử<br>
                </p>
                <p>
                  <strong>Nội dung thi đêm Bán kết: </strong> 20h00-24/05/2020 <br>
                  <strong>Địa điểm:  </strong>Thành phố Đà Nẵng<br>
                  <strong>Nội dung thi:  </strong> <br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trình diễn trang phục Áo dài<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trình diễn trang phục Áo tắm<br>
                  &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trình diễn trang phục Dạ hội<br>
                  <img src="hoahau/hoahau.jpg" alt="hiep" width="100%" height="450px" style="margin-bottom: 10px;">
                  <img src="hoahau/2019.jpg" alt="hiep" width="100%" height="450px">
                </p>
            </div>

            <h5> <strong>Nội dung thi đêm Chung Kết: </strong></h5>
            <p>
              <strong>Thời gian: </strong> 20h00 24/05/2000
              <strong>Địa điểm:  </strong>Thành phố Đà Nẵng<br>
              <strong>Nội dung thi:  </strong> tất cả thí sinh sẽ cùng có mặt trong đêm Chung kết, tham gia lần lượt các phần sau:
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;<strong>Công bố Top 15</strong><br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Top 15 trình diễn trang phục Áo tắm.<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;<strong>Công bố Top 10</strong>><br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Top 10 thí sinh trình diễn trang phục Dạ hội<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;<strong>Công bố Top 5</strong>><br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Top 5 thí sinh thi ứng cử<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;<strong>Công bố Top 3</strong><br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Top 3 thí sinh thi ứng xử<br>
              &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Công bố và trao thưởng cho các danh hiệu: Hoa hậu, Á hậu 1 và Á hậu 2 cùng các danh hiệu phụ<br>
            </p>
            <img src="hoahau/hoahauhoanvu.jpg" alt="hiep" width="100%" height="450px" style="margin-bottom: 10px;">
            <strong>Một số lưu ý và yêu cầu: </strong>  <hr>
                &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Trang phục dạ hội, trang phục hàng ngày, các phụ kiện đi kèm và trang điểm thí sinh tự chuẩn bị. BTC sẽ hỗ trợ trang phục dạ hội trong trường hợp thí sinh có nhu cầu.<br>
                &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;BTC tài trợ phần trang điểm và làm tóc cho thí sinh trong các phần thi & hoạt động chính thức của cuộc thi (riêng các hoạt động bên lề thí sinh tự trang điểm).<br>
                &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;BTC tài trợ chi phí ăn ở cho thí sinh trong suốt quá trình diễn ra vòng thi chung kết.<br>
            
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
                  <img src="hoahau/i1.png" alt="s" width="50%" height="20%">
                </div>
                <div class="carousel-item col-md-6" >
                  <img src="hoahau/i2.png" alt="s" width="50%" height="20%">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i3.png" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i4.png" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i5.png" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i6.png" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i7.png" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i8.png" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i9.png" alt="s" width="50%" height="auto">
                </div>
                <div class="carousel-item col-md-6">
                  <img src="hoahau/i10.png" alt="s" width="50%" height="auto">
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
            <h2>TIN MỚI</h2>
            <div class="chua1">
              <img src="hoahau/khanhvan.jpg" width="50%"  alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/7.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/hoahauan.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/Nga.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/Nga.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/Nga.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/Nga.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/Nga.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/Nga.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
            </div>
            <div class="chua1">
              <img src="hoahau/Nga.jpg" width="50%" alt="sss" height="auto">
              &nbsp;<p style="float: right;">HOA HẬU ...</p>
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
              <i class="fab fa-facebook-square" style="font-size:36px;color:rgb(216, 240, 6)"></i>
            <i class="fab fa-twitter-square" style="font-size:36px;color:rgb(216, 240, 6)"></i>
            <i class="fas fa-envelope" style="font-size:36px;color:rgb(216, 240, 6)"></i>
            <i class="fa fa-plus-square" style="font-size:36px;color:rgb(216, 240, 6)"></i>
         
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