<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="<c:url value="/resources/admin/bootstrap.min.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/admin/icon-font.min.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/admin/morris.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/admin/style.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/fonts/fontawesome-free-5.12.1/css/all.min.css"/>"/>
</head>
<body>

<div class="page-container">
        <div class="sidebar-menu">
            <header class="logo1">
                <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
            </header>
            <div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
            <div class="menu">
                <ul id="menu">
                    <li><a href="#"><span>Admin:&nbsp;&nbsp;&nbsp;
                    <span style="font-size: 1.5em;color: aqua; font-weight: bold;">${pageContext.request.userPrincipal.name}</span>
                    </span></a></li>
                    <li><a href="<c:url value="admin/quanlithongtinthisinh"/>"><span>Quản lí thông tin thí sinh</span></a></li>
                    <li><a id="quanlivongsokhao" href="<c:url value="admin/quanlivongsokhao"/>"><span>Quản lí điểm vòng sơ khảo</span></a></li>
            		<li><a href="<c:url value="admin/quanlivongbanket"/>"><span>Quản lí điểm vòng bán kết</span></a></li>
            		<li><a href="<c:url value="admin/quanlivongchungket"/>"><span>Quản lí điểm vòng chung kết</span></a></li>
                    <li><a id="logout" href="${pageContext.servletContext.contextPath}/logout">Đăng xuất</a> </li>
                                      
                </ul>
            </div>
        </div>
        
        <div class="left-content">
        	<div class="mother-grid-inner">
        		<div class="header-main-fixed">
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<%-- <h3 style="color: blue;">${pageContext.request.userPrincipal.name}</h3>	 --%>									
					</c:if>
				</div>
        	</div>
        </div>
</div>

<script src="<c:url value="/resources/admin/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/admin/jquery-3.5.1.min.js"/>"></script>
<script src="<c:url value="/resources/admin/jquery.nicescroll.js"/>"></script>
<script src="<c:url value="/resources/admin/morris.js"/>"></script>
<script src="<c:url value="/resources/admin/raphael-min.js"/>"></script>
</body>
</html>