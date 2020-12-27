<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quản lí thông tin thí sinh</title>
<jsp:include page="Header.jsp"></jsp:include>
<link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.css"/>"/>
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
              <a style="padding: 5px;" class="nav-link active" href="/QuanLiHoaHau2020">TRANG CHỦ<span class="sr-only">(current)</span></a>
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
                <a style="padding: 5px;" class="nav-link active" href="#">TIN TỨC</a>
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
                </div>  
            </li>
            <li class="nav-item active">
                <a style="padding: 5px;" class="nav-link active" href="#">ĐỐI TÁC</a>
            </li>
          </ul>
         
        </div>
    </nav>
	
	<div align="center">
    <h2> Quản lí vòng sơ khảo hoa hậu hoàn vũ 2020</h2>
       
    <form method="get" action="search">
        <input type="text" name="keyword" /> &nbsp;
        <input type="submit" value="Tìm kiếm thí sinh" />
    </form>
    <h3><a href="/QuanLiHoaHau2020/admin">Quay về trang chủ admin</a></h3>
    <h3><a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/new">Nhập điểm thí sinh dự thi</a></h3>
    <h3><a id ="clickDtb" href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemtrungbinh">Tổng điểm vòng sơ khảo</a></h3>
    <h3><a href="/QuanLiHoaHau2020/admin/quanlivongsokhao">Danh sách thí sinh</a></h3>
    
    <table border="1" cellpadding="5" id="table-sanpham" class="table">
    <thead>	
        <tr>
            <th>Mã thí sinh</th>
            <th>Tên thí sinh</th>
             <th ><a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemhinhthe">Điểm Hình Thể</a></th>
            <th><a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemtraloiphongvan">Điểm trả lời phỏng vấn</a></th>
            <th><a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemcatwalk">Điểm Catwalk theo nhạc</a></th>
            <th>Tổng điểm vòng sơ khảo</th> 
            <th>Chức năng</th>
        </tr>
     </thead>
     <tbody>
        <c:forEach items="${listDtbThiSinh}" var="thisinh" varStatus="itr">
        <tr>
            <td>${thisinh.getMaThiSinh()}</td>
            <td>${thisinh.getTenThiSinh()}</td>
            <td>${thisinh.getDiemHinhThe()}</td>
            <td>${thisinh.getDiemTraLoiPhongVan()}</td>
            <td>${thisinh.getDiemCatwalkTheoNhac()}</td>
            <td>${thisinh.getDiemTrungBinh()}</td>
            <td>
                <a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/edit?MaThiSinh=${thisinh.getMaThiSinh()}">Nhập và sửa điểm</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/delete/${thisinh.getMaThiSinh()}" onclick="return confirm('Bạn chắc chắn muốn xóa không!');">Xóa</a>
            </td>
        </tr>
        </c:forEach>
    </tbody>    
    </table>
	
	<%-- <tag:paginate max="5" offset="${offset}" count="${count}" uri="/QuanLiHoaHau2020/admin/quanlithongtinthisinh" next="&raquo;" previous="&laquo;"/> --%>

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