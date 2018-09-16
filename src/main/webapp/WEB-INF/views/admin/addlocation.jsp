<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">

<title>Admin Panel</title>

<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
<!-- Icons -->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/resourcesimg/icon.png">

<!-- Application CSS -->
<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/css/animate/animate.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/css/nanoscroller/nanoscroller.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/css/metis-menu/metis-menu.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/css/icons/pixeden-stroke-icons.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/css/icons/font-awesome-icons.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/css/application/application.min.css"
	rel="stylesheet" type="text/css">
</head>
<body data-themeable="true" itemscope itemtype="">
	<style>
option {
	background-color: #c04848;
}
</style>
	<%@include file="/WEB-INF/views/admin/template/header.jsp"%>
	<!-- Content -->
	<div class="content -dark -with-left-sidebar -collapsible">
		<div class="container-fluid">
			<div class="row">
				<div class="col -lg-12">
					<!-- Page Heading -->
					<div class="page-heading -dark">
						<h2>Lokasyon Ekleme</h2>
						<!-- Breadcrumb -->
						<div class="breadcrumb">
							<a class="breadcrumb-item" href="index.html">Ana Sayfa</a><a
								class="breadcrumb-item" href="#">Lokasyon İşlemleri</a><a
								class="breadcrumb-item -active">Lokasyon Ekleme</a>
						</div>
						<!-- /Breadcrumb -->
					</div>
					<!-- /Page Heading -->
				</div>
			</div>
			<div class="row">
				<div class="col -lg-12">
					<!-- Panel -->
					<div class="panel -dark">
						<!-- Panel Heading -->
						<div class="panel-heading">
							<!-- Panel Body -->
							<div class="panel-body">
								<!-- Form -->

								<form:form class="form -dark" action=""
									modelAttribute="newLocation" method="post">
									<div class="form-group -warning">
										<label for="form-elements-select">Lokasyon Adı</label>
										<form:input path="locationname" class="form-control"
											type="text" id="locationname" placeholder="Lokasyon Adı" />
									</div>

									<div class="form-group -warning">
										<label for="form-elements-select">İl</label>
										<form:input class="form-control" path="city" type="text"
											id="city" placeholder="İl..." />
									</div>

									<div class="form-group -warning">
										<label for="form-elements-select">Geniş Adres</label>
										<form:textarea class="form-control" path="wideAddress"
											id="sokak" type="text" placeholder="Geniş Adres..." />
									</div>

									<div class="container-fluid"
										style="padding: 0 !important; margin: 0 !important;">
										<div class="row">
											<div class="col -sm-6">
												<button class="btn -primary -block" type="submit">Kaydet</button>
											</div>
											<div class="col -sm-6">
												<button class="btn -warning -block" type="submit">Vazgeç</button>
											</div>
										</div>
									</div>
								</form:form>

								<!-- /Form -->
							</div>
							<!-- /Panel Body -->
						</div>
						<!-- /Panel -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Content -->
	<!-- Theme -->
	<script
		src="<%=request.getContextPath()%>/resources/js/themes/base.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/themes/volta.min.js"
		type="text/javascript"></script>
	<!-- Document -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/tether/tether.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/moment/moment.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/validator/validator.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/datepicker/datepicker.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/cookie/cookie.min.js"
		type="text/javascript"></script>
	<!-- Animations -->
	<script
		src="<%=request.getContextPath()%>/resources/js/gsap/tweenlite.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/gsap/plugins/css.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/gsap/easing/easepack.min.html"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/animus/animus.min.js"
		type="text/javascript"></script>
	<!-- Notifications -->
	<script
		src="<%=request.getContextPath()%>/resources/js/gritter/gritter.min.js"
		type="text/javascript"></script>
	<!-- Analytics -->
	<script
		src="<%=request.getContextPath()%>/resources/js/googleanalytics/googleanalytics.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/hotjar/hotjar.min.js"
		type="text/javascript"></script>
	<!-- Sidebar -->
	<script
		src="<%=request.getContextPath()%>/resources/js/metis-menu/metis-menu.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/nanoscroller/nanoscroller.min.js"
		type="text/javascript"></script>
	<!-- Application Components -->
	<script
		src="<%=request.getContextPath()%>/resources/js/application/components/morph-dropdown.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/application/components/navbar.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/application/components/panel.min.js"
		type="text/javascript"></script>
	<!-- Allow Theme Cookies -->
	<script
		src="<%=request.getContextPath()%>/resources/js/themes/themeable.min.js"
		type="text/javascript"></script>
	<!-- Application -->
	<script
		src="<%=request.getContextPath()%>/resources/js/application/application.min.js"
		type="text/javascript"></script>
	<!-- Page Specific Scripts -->
</body>
</html>