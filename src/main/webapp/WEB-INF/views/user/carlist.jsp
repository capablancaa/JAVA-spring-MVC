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

	<%@include file="/WEB-INF/views/template/header.jsp"%>

	<!-- WRAPPER -->
	<div class="wrapper">

		<!-- CONTENT AREA -->
		<div class="content-area">

			<!-- PAGE WITH SIDEBAR -->
			<section class="page-section with-sidebar sub-page">
				<div class="container">
					<div class="row">
						<!-- CONTENT -->
						<div class="col-md-10 content car-listing" id="content">

							<!-- Car Listing -->

							<c:forEach items="${carList}" var="car">
								<div
									class="thumbnail no-border no-padding thumbnail-car-card clearfix">
									<div class="media">
										<a class="media-link" data-gal="prettyPhoto"
											href="<%=request.getContextPath()%>/resources/resim/car-image/${car.imagepath}">
											<img style="width: 350px; height: 210px;"
											src="<%=request.getContextPath()%>/resources/resim/car-image/${car.imagepath}"
											alt="${car.brand} ${car.model}" /> <span class="icon-view"><strong><i
													class="fa fa-eye"></i></strong></span>
										</a>
									</div>
									<div class="caption">
										<h4 class="caption-title">
											<a href="#"></a>
										</h4>
										<h3 class="caption-title-sub">
											<b>${car.brand } ${car.model }</b>
										</h3>
										<div class="caption-text">
											<table style="color: grey;">
												<tr>
													<td style="font-size: 15px;"><i class="fa fa-car"></i><b>
															${car.vehicleclass} sınıf</b></td>
												</tr>
												<tr>
													<td style="font-size: 15px;"><i
														class="fa fa-dashboard"></i><b> ${car.fueltype} yakıt</b></td>
												</tr>
												<tr>
													<td style="font-size: 15px;"><i
														class="fa fa-tachometer"></i><b> ${car.geartype} vites</b></td>
												</tr>
												<tr>
													<td style="font-size: 15px;"><i class="fa fa-road"></i><b>
															${car.year } model</b></td>
												</tr>
												<tr>
													<td style="font-size: 15px;"><i class="fa fa-road"><b></i>
														${car.capacity} koltuk</b></td>
												</tr>
											</table>
										</div>
										<table class="table">
											<tr>
												<td class="buttons"><a class="btn btn-theme" href="#">Kirala</a></td>
											</tr>
										</table>
									</div>
								</div>
							</c:forEach>

							<!-- /Car Listing -->

							<!-- Pagination -->
							<div class="pagination-wrapper">
								<ul class="pagination">
									<li class="disabled"><a href="#"><i
											class="fa fa-angle-double-left"></i> Previous</a></li>
									<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">Next <i
											class="fa fa-angle-double-right"></i></a></li>
								</ul>
							</div>
							<!-- /Pagination -->

						</div>
						<!-- /CONTENT -->

					</div>
				</div>
			</section>
			<!-- /PAGE WITH SIDEBAR -->

		</div>
		<!-- /CONTENT AREA -->

		<div id="to-top" class="to-top">
			<i class="fa fa-angle-up"></i>
		</div>

	</div>
	<!-- /WRAPPER -->

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
