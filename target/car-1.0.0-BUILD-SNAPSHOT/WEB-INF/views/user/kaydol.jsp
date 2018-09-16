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

	<div class="springajax">
		<div class="container" style="margin-top: 20px;">
			<div class="col-md-12">
				<h2 style="color: #43C6DB; margin-bottom: 20px;">Kaydol</h2>
				<div class="panel -dark">
					<!-- Panel Heading -->
					<div class="panel-heading">
						<!-- Panel Body -->
						<div class="panel-body">
							<!-- Form -->
							<form:form commandName="newUser" class="form -dark" action=""
								method="POST" enctype="multipart/form-data">
								<!-- Form Group -->

								<div class="form-group">
									<label for="control-label col-md-3">Ad</label>
									<form:input class="form-control" path="firstname" type="text"
										id="brand" placeholder="Ad" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">Soyad</label>
									<form:input class="form-control" path="lastname" type="text"
										id="brand" placeholder="Soyad" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">Telefon</label>
									<form:input class="form-control" path="telephone" type="text"
										id="mask_phone" placeholder="Telefon" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">E-Mail</label>
									<form:input class="form-control" path="email" id="model"
										type="text" placeholder="E Mail" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">İl</label>
									<form:input path="address.city" class="form-control"
										id="form-elements-text" name="text" type="text"
										placeholder="İl" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">İlçe</label>
									<form:input path="address.district" class="form-control"
										id="form-elements-text" name="text" type="text"
										placeholder="İlçe" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">Geniş Adres</label>
									<form:input path="address.wideAddress" class="form-control"
										id="form-elements-text" name="text" type="text"
										placeholder="Geniş Adres" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">Kullanıcı Adı</label>
									<form:input class="form-control" path="username" id="capacity"
										type="text" placeholder="Kullanıcı Adı" />
								</div>
								<div class="form-group">
									<label for="control-label col-md-3">Şifre</label>
									<form:input class="form-control" path="password" id="price"
										type="password" placeholder="Şifre" />
								</div>
								<div class="container-fluid"
									style="padding: 0 !important; margin: 0 !important;">
									<div class="row">
										<sec:csrfInput />
										<form:hidden path="" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
										<div class="col-sm-2">
											<button style="background-color: #43C6DB; color: white"
												class="btn -primary -block" type="submit">Kaydet</button>
										</div>
										<div class="col-sm-2">
											<button style="background-color: #B53F3F; color: white"
												class="btn -warning -block" type="submit">Vazgeç</button>
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
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/form-input-mask.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js"
		type="text/javascript"></script>


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
