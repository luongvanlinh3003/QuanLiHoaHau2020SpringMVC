<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TrangChu</title>
<jsp:include page="Header.jsp"></jsp:include>
</head>
<body>
	 <div style="background-image:url(&#39;http://hoahauhoanvuvietnam.com/FileStorage/Slide/Thumbnail/1112-banner-web-HHHV-02-bg.jpg&#39;)">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <img src="<c:url value="/resources/image/logo.png"/>" width="15%" height="1%"></img>
  </nav>
  <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 1349px;"><div class="item has-play slick-slide slick-current slick-active" data-img="http://hoahauhoanvuvietnam.com/FileStorage/Slide/Thumbnail/1112-banner-web-HHHV-02-bg.jpg" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 1349px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
    <div class="img content-layer" style="background-image:url(&#39;http://hoahauhoanvuvietnam.com/FileStorage/Slide/Thumbnail/1112-banner-web-HHHV-02-bg.jpg&#39;)">
        <div class="inner">
            <div class="box-text-slide">

              <!--Khung vinh danh hoa hậu 2019-->
                <div class="ChucmungHH" style="padding: 0 auto; border: 6px double;border-top: none;border-left: none;border-right: none;border-bottom: none;word-wrap: break-word;">
                    <h4 style="color: yellow;">Hoa hậu Hoàn vũ Việt Nam</h4> 
				</div>
		</div>
	</div>
</div>

<!--Thanh công cụ-->
<div class="container khung">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <%-- <a class="navbar-brand" href="#"><img src="<c:url value="/resources/image/miss.png"/>"></a> --%>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a style="margin: 0 20px;color: white!important;"  href="index.html">TRANG CHỦ<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <div class="dropdown">
                  <a style="margin: 0 20px;padding: 0;color: white;" class="nav-link hh" href="#">LỊCH TRÌNH</a>
                  <div class="dropdown-content">
                    <a class="hi" href="/QuanLiHoaHau2020/lichtrinhvongsokhao">VÒNG SƠ TUYỂN</a>
                    <a class="hi" href="/QuanLiHoaHau2020/lichtrinhvongbanket">VÒNG BÁN KẾT</a>
                    <a class="hi" href="/QuanLiHoaHau2020/lichtrinhvongchungket">VÒNG CHUNG KẾT</a>
                  </div>
                </div>
            </li>
            <li class="nav-item active">
              
              <div class="dropdown">
                <a style="margin: 0 20px;color: white!important;" href="#">HH VN 2020</a>
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
               <a style="margin: 0 20px; color: white!important;" href="/QuanLiHoaHau2020/thisinh">ỨNG VIÊN</a>
            </li>
            <li class="nav-item active dropdown">
                <a style="margin: 0 20px;color: white!important;" href="#">TIN TỨC</a>
                 <div class="dropdown-content">
                    <a class="hi" href="#">Nội dụng vòng sơ khảo</a>
                    <a class="hi" href="#">Nội dung vòng bán kết</a>
                    <a class="hi" href="#">Nội dung vòng chung kết</a>
                 </div>
            </li>
            <li class="nav-item active">
              
                <div class="dropdown">
                  <a style="margin: 0 20px;color: white!important;" href="#">ĐẶT VÉ</a>
                  <div class="dropdown-content">
                    <a class="hi" href="#">THÔNG TIN ĐẶT VÉ</a>
                    <a class="hi" href="#">VÒNG BÁN KẾT</a>
                    <a class="hi" href="#">VÒNG CHUNG KẾT</a>
                  </div>
            </li>
            <li class="nav-item active">
                <a style="margin: 0 20px;color: white!important;" href="#">ĐỐI TÁC</a>
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
</div>
    <!--Khung các video(Link youtube)-->
    <div style="margin-left: 50px;" class="row row1">
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/Xy8fcMDqtHI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    </div>
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/CcEMlLmxPng" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    </div>
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/8ifrCdof9jg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
    </div>
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/Xy8fcMDqtHI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      </div>
    <div class="col-md-4">
    <div class="nenxanh"> <iframe width="370" height="315" src="https://www.youtube.com/embed/tqcw-u-YVdc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        </div>
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/UJBYKGYzVaU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
         </div>
         </div>
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/yqad38NdbqQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
          </div>
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/im2KPsOdREI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
          </div>
    <div class="col-md-4">
    <div class="nenxanh"><iframe width="370" height="315" src="https://www.youtube.com/embed/oz5RykzEk4A" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
          </div>          
    </div>
    <h1 style="color: white;font-weight: 350;"><large>SERIES "KHÁNH VÂN - ROAD TO MISS UNIVERSE 2020"</large></h1>
    </div>
    </div>
    </div>


<!--Tổng quan về hoa hậu hoàn vũ-->
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="HH-slip">
            <div><img src="<c:url value="/resources/image/miss1.jpg"/>" width="550px" height="300px"></div> 
            &emsp;&emsp;&emsp;&emsp;&emsp;
            <div>
             <h5 style="color: white-space: ;">Hoa hậu Hoàn vũ Việt Nam</h5>
             <p style="color: white-space: ;">Hoa hậu Hoàn vũ Việt Nam (tên tiếng Anh là Miss Universe Vietnam) là cuộc thi sắc đẹp cấp quốc gia của Việt Nam, do Công ty Cổ phần Hoàn vũ Sài Gòn tổ chức, nhằm lựa chọn đại diện Việt Nam đến với đấu trường Hoa hậu Hoàn vũ. Đương kim Hoa hậu Hoàn vũ Việt Nam là H'Hen Niê. Cô xuất sắc vào Top 5 Miss Universe 2018. </p>
            </div>
         </div>
      </div>
      <div class="carousel-item">
        <div class="HH-slip">
            <div><img src="<c:url value="/resources/image/miss2.jpg"/>" width="550px" height="300px"></div> 
            &emsp;&emsp;&emsp;&emsp;&emsp;
            <div>
             <h5 style="color: black;">Hoa hậu Hoàn vũ</h5>
             <p style="color: black;">Hoa hậu Hoàn vũ là cuộc thi sắc đẹp hấp dẫn bậc nhất hành tinh. Mỗi năm, cuộc thi thu hút hơn 1 tỷ khán giả theo dõi, và nhận được hơn 90 quốc gia cử thí sinh tham dự. Vương miện Miss Universe là niềm khao khát của rất nhiều cô gái. Đương kim Miss Universe là Catriona Gray - Hoa hậu đến từ Philippines.</p>
            </div>
         </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <!--Thí Sinh-->
<div class="thisinh">
  <div class="all-thisinh">
  <a style="color: black;font-size: 30px;font-weight: 400;margin-left: 73px;margin-top: 30px;margin-bottom: 26px;" href="#"><big>THÍ SINH</big></a>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/hoahau1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau4.jpg"/>" width="300px" height="280px">
        </div>
      </div>
      <div class="carousel-item">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/hoahau1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau4.jpg"/>" width="300px" height="280px">
        </div>
      </div>
      <div class="carousel-item">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/hoahau1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau4.jpg"/>" width="300px" height="280px">
        </div>
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
  </div>

  <!--Ban giám khảo-->
<div class="all-bangiamkhao">
  <a style="color: black;font-size: 30px;font-weight: 400;margin-left: 73px;margin-top: 60px;margin-bottom: 26px;" href="#"><big>BAN GIÁM KHẢO HOA HẬU HOÀN VŨ VIỆT NAM 2020</big></a>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/giamkhao1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao4.jpg"/>" width="300px" height="280px">
        </div>
      </div>
      <div class="carousel-item">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/giamkhao1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao4.jpg"/>" width="300px" height="280px">
        </div>
      </div>
      <div class="carousel-item">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/giamkhao1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/giamkhao4.jpg"/>" width="300px" height="280px">
        </div>
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
</div>

 <!--Tin nổi bật-->
 <div class="all-tinnoibat">
  <a style="color: black;font-size: 30px;font-weight: 400;margin-left: 73px;margin-top: 60px;margin-bottom: 26px;" href="#"><big>TIN NỔI BẬT</big></a>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/hoahau1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau4.jpg"/>" width="300px" height="280px">
        </div>
      </div>
      <div class="carousel-item">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/hoahau1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau4.jpg"/>" width="300px" height="280px">
        </div>
      </div>
      <div class="carousel-item">
        <div class="khung-4-anh">
          <img src="<c:url value="/resources/image/hoahau1.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau2.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau3.jpg"/>" width="300px" height="280px">
          <img src="<c:url value="/resources/image/hoahau4.jpg"/>" width="300px" height="280px">
        </div>
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
</div>
</div>

<footer class="page-footer font-small bg-dark pt-4">
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

</div>
<jsp:include page="Footer.jsp"></jsp:include>	
</body>
</html>