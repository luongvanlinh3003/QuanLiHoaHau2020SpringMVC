<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quản lí vòng sơ khảo hình thể</title>
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
        <input class="btn btn-info" type="submit" value="Tìm kiếm thí sinh" />
    </form>
    
    <div class="button-first">
	    <div><a href="/QuanLiHoaHau2020/admin"><button class="btn btn-primary">Quay về trang chủ admin</button></a></div>
	    <div><a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/new"><button class="btn btn-primary">Nhập điểm thí sinh dự thi</button></a></div>
	    <div><a id ="clickDtb" href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemtrungbinh"><button class="btn btn-primary">Tổng điểm vòng sơ khảo</button></a></div>
	    <div><a href="/QuanLiHoaHau2020/admin/quanlivongsokhao"><button class="btn btn-primary">Danh sách thí sinh</button></a></div>
    </div>
    
    
     <table border="1" cellpadding="5" class="table table-dark table-hover table-bordered">
    <thead>	
        <tr>
            <th>Mã thí sinh</th>
            <th>Tên thí sinh</th>
            <th>Điểm Hình Thể<a class="link-sort" href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemhinhthe"><i class="fas fa-sort-numeric-down-alt"></i><i class="fas fa-sort-numeric-up-alt"></i></a></th>
            <!-- <th>Điểm trả lời phỏng vấn<a class="link-sort" href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemtraloiphongvan"><i class="fas fa-sort-numeric-down-alt"></i><i class="fas fa-sort-numeric-up-alt"></i></a></th>
            <th>Điểm Catwalk theo nhạc<a class="link-sort" href="/QuanLiHoaHau2020/admin/quanlivongsokhao/diemcatwalk"><i class="fas fa-sort-numeric-down-alt"></i><i class="fas fa-sort-numeric-up-alt"></i></a></th> -->
            <th>Chức năng</th>
        </tr>
     </thead>
     <tbody>
        <c:forEach items="${listDiemHinhTheThiSinh}" var="thisinh" varStatus="itr">
        <tr>
            <td>${thisinh.getMaThiSinh()}</td>
            <td>${thisinh.getTenThiSinh()}</td>
            <td>${thisinh.getDiemHinhThe()}</td>
            <%-- <td>${thisinh.getDiemTraLoiPhongVan()}</td>
            <td>${thisinh.getDiemCatwalkTheoNhac()}</td> --%>
            <td class="button-actions">
                <a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/edit?MaThiSinh=${thisinh.getMaThiSinh()}"><button class="btn btn-info badge-pill">Sửa</button></a>
               
                <a href="/QuanLiHoaHau2020/admin/quanlivongsokhao/delete/${thisinh.getMaThiSinh()}" onclick="return confirm('Bạn chắc chắn muốn xóa không!');"><button class="btn btn-danger badge-pill">Xóa</button></a>
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