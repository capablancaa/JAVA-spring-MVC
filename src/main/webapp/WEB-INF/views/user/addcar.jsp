<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<!-- Head BEGIN -->
<head>
<title>RentACar Frontend</title>
<!-- Favicon -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/ico/favicon.ico">
<!-- Fonts START -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<!-- Fonts END -->

<!-- Global styles START -->
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/prettyphoto/css/prettyPhoto.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/owl-carousel2/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/owl-carousel2/assets/owl.theme.default.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/swiper/css/swiper.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/animate/animate.min.css"
	rel="stylesheet">
<!-- Global styles END -->

<script
	src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/modernizr.custom.js"></script>

<!-- Theme styles START -->
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/frontend/layout/css/style.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/frontend/layout/css/style-responsive.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/css/theme.css"
	rel="stylesheet">
<!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body id="home" class="wide">

	<%@ include file="/WEB-INF/views/template/header.jsp"%>

	<div class="page-head">
		<div class="container" style="margin-top: 20px;">
			<h2 style="color: #43C6DB">Araç Ekleme</h2>
			<div class="panel -dark">
				<!-- Panel Heading -->
				<div class="panel-heading">
					<!-- Panel Body -->
					<div class="panel-body">
						<!-- Form -->
						<form:form modelAttribute="newCar" class="form -dark"
							action="addcar" method="POST" enctype="multipart/form-data">
							<!-- Form Group -->

							<div class="form-group -warning">
								<label for="form-elements-select">Marka</label>
								<form:input class="form-control" path="brand" type="text"
									id="brand" placeholder="Marka..." />
							</div>
							<div class="form-group -warning">
								<label for="form-elements-select">Model</label>
								<form:input class="form-control" path="model" id="model"
									type="text" placeholder="Model..." />
							</div>
							<div class="form-group -warning">
								<label for="form-elements-text">Yıl</label>
								<form:input path="year" class="form-control"
									id="form-elements-text" name="text" type="text"
									placeholder="Yıl.." />
							</div>
							<div class="form-group -warning">
								<label for="form-elements-select">Araç Sınıfı</label> <select
									style="height: 46px;" name="vehicleclass" class="form-control"
									id="form-elements-select">
									<option value="NONE">---Lütfen Seçiniz---</option>
									<c:forEach items="${carType}" var="carType">
										<option value="${carType}">${carType}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group -warning">
								<label for="form-elements-select">Yakıt Türü</label> <select
									style="height: 46px;" class="form-control" name="fueltype">
									<option value="NONE">---Lütfen Seçiniz---</option>
									<c:forEach items="${fuelType}" var="fuelType">
										<option value="${fuelType}">${fuelType}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group -warning">
								<label for="form-elements-select">Vites Tipi</label> <select
									style="height: 46px;" class="form-control" name="geartype">
									<option value="NONE">---Lütfen Seçiniz---</option>
									<c:forEach items="${gearType}" var="gearType">
										<option value="${gearType}">${gearType}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group -warning">
								<label for="form-elements-select">Araç Yolcu Kapasitesi</label>
								<form:input class="form-control" path="capacity" id="capacity"
									type="text" placeholder="" />
							</div>
							<div class="form-group -warning">
								<label for="form-elements-select">Günlük kira</label>
								<form:input class="form-control" path="price" id="price"
									type="text" placeholder="" />
							</div>
							<div class="form-group -warning">
								<label for="form-elements-file">Resim</label>
								<form:input path="carimage" class="form-control"
									id="form-elements-file" name="file" type="file" />
							</div>
							<!-- /Form Group -->
							<div class="container-fluid"
								style="padding: 0 !important; margin: 0 !important;">
								<div class="row">
									<div class="col-sm-2">
										<button class="btn -primary -block" type="submit">Kaydet</button>
									</div>
									<div class="col-sm-2">
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

	<%@include file="/WEB-INF/views/template/footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery/jquery-1.11.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/superfish/js/superfish.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap-select/js/bootstrap-select.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datetimepicker/js/moment-with-locales.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/owl-carousel2/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery.easing.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery.smoothscroll.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/swiper/js/swiper.jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/prettyphoto/js/jquery.prettyPhoto.js"></script>

	<!-- JS Page Level -->
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/js/theme-ajax-mail.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/js/theme.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery.cookie.js"></script>
</body>
<!-- END BODY -->
</html>
