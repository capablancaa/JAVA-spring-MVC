<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>

<title>Admin Panel</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
<!-- Icons -->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/resources/img/icon.png">

<!-- Application CSS -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />

<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />

<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datatables/datatables.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/css/components.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"
	rel="stylesheet" type="text/css" />
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

	<%@include file="/WEB-INF/views/admin/template/header.jsp"%>
	<div class="content -dark -with-left-sidebar -collapsible"
		style="min-height: 416px;">
		<div class="container-fluid">
			<!-- BEGIN CONTENT BODY -->

			<div class="row">
				<div class="col -lg-12">
					<!-- Panel -->
					<div class="panel -dark">
						<!-- Panel Heading -->
						<div class="panel-heading">
							<h4>Detailed Table</h4>
						</div>
						<!-- /Panel Heading -->
						<div class="table-responsive">
							<table class="table -dark">
								<thead>
									<tr>
										<th>Id</th>
										<th>Marka</th>
										<th>Model</th>
										<th>Araç Sınıfı</th>
										<th>Yıl</th>
										<th>Kiralanma Durumu</th>
										<th>Vites Tipi</th>
										<th>Yakıt Türü</th>
										<th>Kapasite</th>
										<th>Fiyat</th>
										<th>Resim</th>
										<th>İşlem</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${carList}" var="car">
										<tr>
											<td class="-detailed">${car.id}</td>
											<td class="-detailed">${car.brand}</td>
											<td class="-detailed">${car.model}</td>
											<td class="-detailed">${car.vehicleclass}</td>
											<td class="-detailed">${car.year}</td>
											<td class="-detailed"><c:if test="${car.hire}">
											Kiralanmış
											</c:if> Müsait</td>
											<td class="-detailed">${car.geartype}</td>
											<td class="-detailed">${car.fueltype}</td>
											<td class="-detailed">${car.capacity}</td>
											<td class="-detailed">${car.price}₺</td>
											<td class="-user -detailed"><img
												src="<%=request.getContextPath()%>/resources/resim/car-image/${car.imagepath}"></td>
											<td><table border="0">
													<tr>
														<td><a href=""><i class="fa fa-cog"></i></a></td>
														<td><a href="deletecar?carId=${car.id}"><i
																class="fa fa-trash-o"></i></a></td>
													</tr>
												</table></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- /Panel -->
				</div>
			</div>
			<!-- END CONTENT BODY -->
		</div>
	</div>



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
	<script
		src="<%=request.getContextPath()%>/resources/js/sparkline/sparkline.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/flot/jquery.flot.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/flot/jquery.flot.pie.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/flot/jquery.flot.resize.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/flot/jquery.flot.animator.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/application/views/index.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery/jquery.ui.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/fullcalendar/tr.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/application/views/pages/calendar.min.js"
		type="text/javascript"></script>



	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datatable.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datatables/datatables.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/app.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/table-datatables-editable.min.js"
		type="text/javascript"></script>
</body>
</html>