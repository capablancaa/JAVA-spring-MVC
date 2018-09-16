<%@page import="java.util.ArrayList"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@page import="com.rental.car.service.impl.LocationServiceImpl"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.rental.car.service.LocationService"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap-select/css/bootstrap-select.min.css"
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
<body class="corporate">

	<%@ include file="/WEB-INF/views/template/header.jsp"%>

	<!-- WRAPPER -->
	<div class="wrapper">
		<!-- CONTENT AREA -->
		<div class="content-area">

			<!-- PAGE -->
			<section class="page-section no-padding slider">
				<div class="container full-width">

					<div class="main-slider">
						<div class="item slide1 ver1">
							<div class="caption">
								<div class="container">
									<div class="div-table">
										<div class="div-cell">
											<div class="caption-content">
												<h2 class="caption-title">ARAÇ KİRALAMA SERVİSİ</h2>
												<h3 class="caption-subtitle">SİZE EN UYGUN ARACI HEMEN
													KİRALAYIN</h3>
												<!-- Search form -->
												<div class="row">
													<div class="col-sm-12 col-md-10 col-md-offset-1">

														<div class="form-search dark">
															<form:form action="reservation/reservationQuery"
																modelAttribute="newReservation" method="GET">
																<div class="form-title">
																	<i class="fa fa-globe"></i>
																	<h2>Aşağıdaki alanları size uygun şekilde
																		doldurarak en uygun aracı bulabilirsiniz!</h2>
																</div>

																<div class="row row-inputs">
																	<div class="container-fluid">
																		<div class="col-sm-4">
																			<div class="form-group has-icon has-label">
																				<label for="formSearchUpHour">Şehir</label>
																				<form:select path="receptionLocation.city"
																					onblur="getLocationBySelectedCity()"
																					style="background-color: #545454; font-family: inherit;"
																					name="city" class="form-control" id="city1">
																					<option value="NONE">Select City</option>
																					<c:forEach items="${cityList}" var="city">
																						<option value="${city}">${city}</option>
																					</c:forEach>
																				</form:select>
																				<span class="form-control-icon"><i
																					class="fa fa-home"></i></span>
																			</div>
																		</div>
																		<div class="col-sm-4">
																			<div class="form-group has-icon has-label">
																				<label for="formSearchUpLocation">Alış
																					Lokasyonu</label>
																				<form:select path="receptionLocation.locationname"
																					id="location1" name="beginlocation"
																					style="background-color: #545454; font-family: inherit;"
																					class="form-control">
																					<option value="NONE">Airport or Anywhere</option>
																				</form:select>
																				<div id="loading"></div>
																				<span class="form-control-icon"><i
																					class="fa fa-map-marker"></i></span>
																			</div>
																		</div>
																		<div class="col-sm-4">
																			<div class="form-group has-icon has-label "
																				data-date-start-date="+0d"
																				data-date-format="dd-mm-yyyy">
																				<label for="formSearchUpDate">Alış
																					Tarihi/Saati</label>
																				<form:input path="startdate" type="text"
																					class="form-control" id="formSearchUpDate"
																					placeholder="dd/mm/yyyy"></form:input>
																				<span class="form-control-icon"><i
																					class="fa fa-calendar"></i></span>
																			</div>
																		</div>
																	</div>
																</div>

																<div class="row row-inputs">
																	<div class="container-fluid">
																		<div class="col-sm-4">
																			<div class="form-group has-icon has-label">
																				<label for="city2">Şehir</label>
																				<form:select path="returnLocation.city"
																					onblur="getLocationBySelectedCity2()"
																					style="background-color: #545454; font-family: inherit;"
																					name="beginlocation" class="form-control"
																					id="city2">
																					<option value="NONE">Select City</option>
																					<c:forEach items="${cityList}" var="city">
																						<option value="${city}">${city}</option>
																					</c:forEach>
																				</form:select>
																				<span class="form-control-icon"><i
																					class="fa fa-home"></i></span>
																			</div>
																		</div>
																		<div class="col-sm-4">
																			<div class="form-group has-icon has-label">
																				<label for="location2">İade Lokasyonu</label>
																				<form:select path="returnLocation.locationname"
																					style="background-color: #545454; font-family: inherit;"
																					name="beginlocation" class="form-control"
																					id="location2">
																					<option value="NONE">Airport or Anywhere</option>
																				</form:select>
																				<span class="form-control-icon"><i
																					class="fa fa-map-marker"></i></span>
																			</div>
																		</div>
																		<div class="col-sm-4">
																			<div class="form-group has-icon has-label">
																				<label for="formSearchOffDate">İade
																					Tarihi/Saati</label>
																				<form:input path="enddate" type="text"
																					class="form-control" id="formSearchOffDate"
																					placeholder="dd/mm/yyyy"></form:input>
																				<span class="form-control-icon"><i
																					class="fa fa-calendar"></i></span>
																			</div>
																		</div>
																	</div>
																</div>

																<div class="row row-submit">
																	<div class="container-fluid">
																		<div class="inner">
																			<button type="submit" id="formSearchSubmit"
																				class="btn btn-submit btn-theme pull-right">Araç
																				Bul</button>
																			<br />
																		</div>
																	</div>
																</div>
															</form:form>
														</div>

													</div>
												</div>
												<!-- /Search form -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</section>
			<!-- /PAGE -->
			<!-- PAGE -->
			<section class="page-section">
				<div class="container">

					<h2 class="section-title wow fadeInUp" data-wow-offset="70"
						data-wow-delay="100ms">
						<small>Ne tür bir araba tercih edersiniz?</small> <span> En
							uygun aracı bul</span>
					</h2>

					<div class="tabs wow fadeInUp" data-wow-offset="70"
						data-wow-delay="300ms">
						<ul id="tabs" class="nav">
							<!--
                            -->
							<li class=""><a href="#tab-1" data-toggle="tab">FIRSATLAR</a></li>
							<!--
                            -->
							<li class="active"><a href="#tab-2" data-toggle="tab">TERCİH
									EDİLEN</a></li>
							<!--
                            -->
							<li class=""><a href="#tab-3" data-toggle="tab">EKONOMİK</a></li>
						</ul>
					</div>

					<div class="tab-content wow fadeInUp" data-wow-offset="70"
						data-wow-delay="500ms">

						<!-- tab 1 -->
						<div class="tab-pane fade" id="tab-1">

							<div class="swiper swiper--offers-best">
								<div class="swiper-container">

									<div class="swiper-wrapper">
										<!-- Slides -->
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="../../assets/img/preview/cars/car-370x220x1.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x1.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x2.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x2.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x3.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x3.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x4.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x4.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>

								</div>

								<div class="swiper-button-next">
									<i class="fa fa-angle-right"></i>
								</div>
								<div class="swiper-button-prev">
									<i class="fa fa-angle-left"></i>
								</div>

							</div>

						</div>

						<!-- tab 2 -->
						<div class="tab-pane fade active in" id="tab-2">

							<div class="swiper swiper--offers-popular">
								<div class="swiper-container">

									<div class="swiper-wrapper">
										<!-- Slides -->
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x1.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x1.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x2.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x2.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x3.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x3.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x4.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x4.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>

								</div>

								<!-- If we need navigation buttons -->
								<div class="swiper-button-next">
									<i class="fa fa-angle-right"></i>
								</div>
								<div class="swiper-button-prev">
									<i class="fa fa-angle-left"></i>
								</div>

							</div>

						</div>

						<!-- tab 3 -->
						<div class="tab-pane fade" id="tab-3">

							<div class="swiper swiper--offers-economic">
								<div class="swiper-container">

									<div class="swiper-wrapper">
										<!-- Slides -->
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x1.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x1.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x2.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x2.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x3.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x3.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="swiper-slide">
											<div
												class="thumbnail no-border no-padding thumbnail-car-card">
												<div class="media">
													<a class="media-link" data-gal="prettyPhoto"
														href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x4.jpg">
														<img
														src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-370x220x4.jpg"
														alt="" /> <span class="icon-view"><strong><i
																class="fa fa-eye"></i></strong></span>
													</a>
												</div>
												<div class="caption text-center">
													<h4 class="caption-title">
														<a href="#">VW POLO TRENDLINE 2.0 TDI</a>
													</h4>
													<div class="caption-text">Start from 39$/per a day</div>
													<div class="buttons">
														<a class="btn btn-theme ripple-effect" href="#">Rent
															It</a>
													</div>
													<table class="table">
														<tr>
															<td><i class="fa fa-car"></i> 2013</td>
															<td><i class="fa fa-dashboard"></i> Diesel</td>
															<td><i class="fa fa-cog"></i> Auto</td>
															<td><i class="fa fa-road"></i> 25000</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>

								</div>

								<!-- If we need navigation buttons -->
								<div class="swiper-button-next">
									<i class="fa fa-angle-right"></i>
								</div>
								<div class="swiper-button-prev">
									<i class="fa fa-angle-left"></i>
								</div>

							</div>

						</div>
					</div>

				</div>
			</section>
			<!-- /PAGE -->

			<!-- PAGE -->
			<section class="page-section">
				<div class="container">

					<h2 class="section-title wow fadeInUp" data-wow-offset="70"
						data-wow-delay="500ms">
						<small>Select What You Want</small> <span>Our awesome
							Rental Fleet cars</span>
					</h2>

					<div class="tabs awesome wow fadeInUp" data-wow-offset="70"
						data-wow-delay="500ms">
						<ul id="tabs1" class="nav">
							<!--
                            -->
							<li class="active"><a href="#tab-x2" data-toggle="tab">Business
									cars</a></li>
							<!--
                            -->
							<li class=""><a href="#tab-x4" data-toggle="tab">Luxury
									cars</a></li>
						</ul>
					</div>

					<div class="tab-content wow fadeInUp" data-wow-offset="70"
						data-wow-delay="500ms">

						<!-- tab 2 -->
						<div class="tab-pane fade active in" id="tab-x2">

							<div class="car-big-card">
								<div class="row">
									<div class="col-md-3">
										<div class="tabs awesome-sub">
											<ul id="tabs-x2" class="nav">
												<!--
                                                -->
												<li class=""><a href="#tab-x2x1" data-toggle="tab">VW
														Passat CC 2.0 TDI</a></li>
												<!--
                                                -->
												<li class="active"><a href="#tab-x2x2"
													data-toggle="tab">VW Polo 1.6 TDI Comfortline</a></li>
												<!--
                                                -->
												<li class=""><a href="#tab-x2x3" data-toggle="tab">Toyota
														Corolla 1.6 Elegant</a></li>
												<!--
                                                -->
												<!--
                                                -->
											</ul>
										</div>
									</div>
									<div class="col-md-9">

										<!-- Sub tabs content -->
										<div class="tab-content">

											<div class="tab-pane fade" id="tab-x2x1">
												<div class="row">
													<div class="col-md-8">
														<!-- Swiper -->
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide">
																	<a class="btn btn-zoom"
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><i class="fa fa-arrows-h"></i></a>
																	<a
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><img class="img-responsive"
																		src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		alt="" /></a>
																</div>
															</div>
															<!-- Add Pagination -->
															<div class="row car-thumbnails"></div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="car-details">
															<div class="price">
																<strong>121.0</strong> <span>$/per a day</span> <i
																	class="fa fa-info-circle"></i>
															</div>
															<div class="list">
																<ul>
																	<li>Fuel Diesel / 1600 cm3 Engine</li>
																	<li>Under 25,000 Km</li>
																	<li>Transmission Manual</li>
																	<li>5 Year service included</li>
																	<li>Manufacturing Year 2014</li>
																	<li>5 Doors and Panorama View</li>
																</ul>
															</div>
															<div class="button">
																<a href="#"
																	class="btn btn-theme ripple-effect btn-theme-dark btn-block">Reservation
																	Now</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade active in" id="tab-x2x2">
												<div class="row">
													<div class="col-md-8">
														<!-- Swiper -->
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide">
																	<a class="btn btn-zoom"
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><i class="fa fa-arrows-h"></i></a>
																	<a
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><img class="img-responsive"
																		src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		alt="" /></a>
																</div>
															</div>
															<!-- Add Pagination -->
															<div class="row car-thumbnails"></div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="car-details">
															<div class="price">
																<strong>122.0</strong> <span>$/per a day</span> <i
																	class="fa fa-info-circle"></i>
															</div>
															<div class="list">
																<ul>
																	<li>Fuel Diesel / 1600 cm3 Engine</li>
																	<li>Under 25,000 Km</li>
																	<li>Transmission Manual</li>
																	<li>5 Year service included</li>
																	<li>Manufacturing Year 2014</li>
																	<li>5 Doors and Panorama View</li>
																</ul>
															</div>
															<div class="button">
																<a href="#"
																	class="btn btn-theme ripple-effect btn-theme-dark btn-block">Reservation
																	Now</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="tab-x2x3">
												<div class="row">
													<div class="col-md-8">
														<!-- Swiper -->
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide">
																	<a class="btn btn-zoom"
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><i class="fa fa-arrows-h"></i></a>
																	<a
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><img class="img-responsive"
																		src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		alt="" /></a>
																</div>
															</div>
															<!-- Add Pagination -->
															<div class="row car-thumbnails"></div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="car-details">
															<div class="price">
																<strong>123.0</strong> <span>$/per a day</span> <i
																	class="fa fa-info-circle"></i>
															</div>
															<div class="list">
																<ul>
																	<li>Fuel Diesel / 1600 cm3 Engine</li>
																	<li>Under 25,000 Km</li>
																	<li>Transmission Manual</li>
																	<li>5 Year service included</li>
																	<li>Manufacturing Year 2014</li>
																	<li>5 Doors and Panorama View</li>
																</ul>
															</div>
															<div class="button">
																<a href="#"
																	class="btn btn-theme ripple-effect btn-theme-dark btn-block">Reservation
																	Now</a>
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
										<!-- /Sub tabs content -->

									</div>
								</div>
							</div>

						</div>

						<!-- tab 4 -->
						<div class="tab-pane fade" id="tab-x4">

							<div class="car-big-card">
								<div class="row">
									<div class="col-md-3">
										<div class="tabs awesome-sub">
											<ul id="tabs-x4" class="nav">
												<!--
                                                -->
												<li class=""><a href="#tab-x4x1" data-toggle="tab">VW
														Passat CC 2.0 TDI</a></li>
												<!--
                                                -->
												<li class="active"><a href="#tab-x4x2"
													data-toggle="tab">VW Polo 1.6 TDI Comfortline</a></li>
												<!--
                                                -->
											</ul>
										</div>
									</div>
									<div class="col-md-9">

										<!-- Sub tabs content -->
										<div class="tab-content">

											<div class="tab-pane fade" id="tab-x4x1">
												<div class="row">
													<div class="col-md-8">
														<!-- Swiper -->
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide">
																	<a class="btn btn-zoom"
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><i class="fa fa-arrows-h"></i></a>
																	<a
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><img class="img-responsive"
																		src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		alt="" /></a>
																</div>
															</div>
															<!-- Add Pagination -->
															<div class="row car-thumbnails"></div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="car-details">
															<div class="price">
																<strong>141.0</strong> <span>$/per a day</span> <i
																	class="fa fa-info-circle"></i>
															</div>
															<div class="list">
																<ul>
																	<li>Fuel Diesel / 1600 cm3 Engine</li>
																	<li>Under 25,000 Km</li>
																	<li>Transmission Manual</li>
																	<li>5 Year service included</li>
																	<li>Manufacturing Year 2014</li>
																	<li>5 Doors and Panorama View</li>
																</ul>
															</div>
															<div class="button">
																<a href="#"
																	class="btn btn-theme ripple-effect btn-theme-dark btn-block">Reservation
																	Now</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade active in" id="tab-x4x2">
												<div class="row">
													<div class="col-md-8">
														<!-- Swiper -->
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide">
																	<a class="btn btn-zoom"
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><i class="fa fa-arrows-h"></i></a>
																	<a
																		href="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		data-gal="prettyPhoto"><img class="img-responsive"
																		src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/cars/car-600x426x1.jpg"
																		alt="" /></a>
																</div>
															</div>
															<!-- Add Pagination -->
															<div class="row car-thumbnails"></div>
														</div>
													</div>
													<div class="col-md-4">
														<div class="car-details">
															<div class="price">
																<strong>142.0</strong> <span>$/per a day</span> <i
																	class="fa fa-info-circle"></i>
															</div>
															<div class="list">
																<ul>
																	<li>Fuel Diesel / 1600 cm3 Engine</li>
																	<li>Under 25,000 Km</li>
																	<li>Transmission Manual</li>
																	<li>5 Year service included</li>
																	<li>Manufacturing Year 2014</li>
																	<li>5 Doors and Panorama View</li>
																</ul>
															</div>
															<div class="button">
																<a href="#"
																	class="btn btn-theme ripple-effect btn-theme-dark btn-block">Reservation
																	Now</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- /Sub tabs content -->

									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
			</section>
			<!-- /PAGE -->


			<!-- PAGE -->
			<section class="page-section">
				<div class="container">

					<h2 class="section-title wow fadeInDown" data-wow-offset="200"
						data-wow-delay="100ms">
						<small>Rental Magazine Here</small> <span>Recent Blog Posts</span>
					</h2>

					<div class="row">
						<div class="col-md-6 wow fadeInLeft" data-wow-offset="200"
							data-wow-delay="200ms">
							<div class="recent-post alt">
								<div class="media">
									<a class="media-link" href="#">
										<div class="badge type">Car Service</div>
										<div class="badge post">
											<i class="fa fa-video-camera"></i>
										</div> <img class="media-object"
										src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/blog/recent-post-570x270x1.jpg"
										alt=""> <i class="fa fa-plus"></i>
									</a>
									<div class="media-left">
										<div class="meta-date">
											<div class="day">21</div>
											<div class="month">Dec</div>
										</div>
									</div>
									<div class="media-body">
										<div class="media-meta">
											By isamercan <span class="divider">|</span><a href="#"><i
												class="fa fa-comment"></i>13</a> <span class="divider">|</span><a
												href="#"><i class="fa fa-heart"></i>346</a> <span
												class="divider">|</span><a href="#"><i
												class="fa fa-share-alt"></i></a>
										</div>
										<h4 class="media-heading">
											<a href="#">Amazing Cars here and best offer waits for
												you</a>
										</h4>
										<div class="media-excerpt">This is Photoshop's version
											of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
											Aenean sollicitudin, lorem quis bibendum auctor, nisi elit
											consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio
											sit amet nibh vulputate cursus a sit amet mauris.</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 wow fadeInRight" data-wow-offset="200"
							data-wow-delay="200ms">
							<div class="recent-post alt">
								<div class="media">
									<a class="media-link" href="#">
										<div class="badge type">Repair</div>
										<div class="badge post">
											<i class="fa fa-image"></i>
										</div> <img class="media-object"
										src="<%=request.getContextPath()%>/resources/themefolder1/assets/img/preview/blog/recent-post-570x270x2.jpg"
										alt=""> <i class="fa fa-plus"></i>
									</a>
									<div class="media-left">
										<div class="meta-date">
											<div class="day">21</div>
											<div class="month">Dec</div>
										</div>
									</div>
									<div class="media-body">
										<div class="media-meta">
											By isamercan <span class="divider">|</span><a href="#"><i
												class="fa fa-comment"></i>13</a> <span class="divider">|</span><a
												href="#"><i class="fa fa-heart"></i>346</a> <span
												class="divider">|</span><a href="#"><i
												class="fa fa-share-alt"></i></a>
										</div>
										<h4 class="media-heading">
											<a href="#">Amazing Cars here and best offer waits for
												you</a>
										</h4>
										<div class="media-excerpt">This is Photoshop's version
											of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
											Aenean sollicitudin, lorem quis bibendum auctor, nisi elit
											consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio
											sit amet nibh vulputate cursus a sit amet mauris.</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="text-center margin-top wow fadeInDown"
						data-wow-offset="200" data-wow-delay="100ms">
						<a href="#"
							class="btn btn-theme ripple-effect btn-theme-light btn-more-posts">See
							All Posts</a>
					</div>

				</div>
			</section>
			<!-- /PAGE -->
		</div>
		<!-- /CONTENT AREA -->

		<div id="to-top" class="to-top">
			<i class="fa fa-angle-up"></i>
		</div>

	</div>

	<%@include file="/WEB-INF/views/template/footer.jsp"%>
	<!-- END FOOTER -->
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

	<script src="<%=request.getContextPath()%>/resources/ajax.js"></script>
</body>
<!-- END BODY -->
</html>
