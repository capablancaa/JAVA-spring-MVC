<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	href="<%=request.getContextPath()%>/resources/img/icon.png">

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

	<%@include file="/WEB-INF/views/admin/template/header.jsp"%>
	<!-- Content -->
	<div class="content -dark -with-left-sidebar -collapsible">
		<div class="container-fluid">
			<div class="container-fluid">
				<div class="row">
					<div class="col -lg-12"></div>
				</div>

				<!-- Ana ekranda Çıkan Sayfa -->

				<div class="row">
					<div class="col -md-8">
						<div id="calendar" class="fc fc-unthemed fc-ltr">
							<div class="fc-toolbar fc-header-toolbar">
								<div class="fc-left">
									<div class="fc-button-group">
										<button type="button"
											class="fc-prev-button fc-button fc-state-default fc-corner-left">
											<span class="fc-icon fc-icon-left-single-arrow"></span>
										</button>
										<button type="button"
											class="fc-next-button fc-button fc-state-default fc-corner-right">
											<span class="fc-icon fc-icon-right-single-arrow"></span>
										</button>
									</div>
									<button type="button"
										class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled"
										disabled="">Bugün</button>
								</div>
								<div class="fc-right">
									<div class="fc-button-group">
										<button type="button"
											class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">Ay</button>
										<button type="button"
											class="fc-agendaWeek-button fc-button fc-state-default">Hafta</button>
										<button type="button"
											class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">Gün</button>
									</div>
								</div>
								<div class="fc-center">
									<h2>Şubat 2017</h2>
								</div>
								<div class="fc-clear"></div>
							</div>
							<div class="fc-view-container">
								<div class="fc-view fc-month-view fc-basic-view">
									<table>
										<thead class="fc-head">
											<tr>
												<td class="fc-head-container fc-widget-header">
													<div class="fc-row fc-widget-header">
														<table>
															<thead>
																<tr>
																	<th class="fc-day-header fc-widget-header fc-sun">
																		<span>Pzt</span>
																	</th>
																	<th class="fc-day-header fc-widget-header fc-mon">
																		<span>Sl</span>
																	</th>
																	<th class="fc-day-header fc-widget-header fc-tue">
																		<span>Çrş</span>
																	</th>
																	<th class="fc-day-header fc-widget-header fc-wed">
																		<span>Prş</span>
																	</th>
																	<th class="fc-day-header fc-widget-header fc-thu">
																		<span>Cm</span>
																	</th>
																	<th class="fc-day-header fc-widget-header fc-fri">
																		<span>Cts</span>
																	</th>
																	<th class="fc-day-header fc-widget-header fc-sat">
																		<span>Pz</span>
																	</th>
																</tr>
															</thead>
														</table>
													</div>
												</td>
											</tr>
										</thead>
										<tbody class="fc-body">
											<tr>
												<td class="fc-widget-content">
													<div class="fc-scroller fc-day-grid-container"
														style="overflow: hidden; height: 463px;">
														<div class="fc-day-grid fc-unselectable">
															<div class="fc-row fc-week fc-widget-content fc-rigid"
																style="height: 77px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
																					data-date="2017-01-29"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
																					data-date="2017-01-30"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
																					data-date="2017-01-31"></td>
																				<td class="fc-day fc-widget-content fc-wed fc-past"
																					data-date="2017-02-01"></td>
																				<td class="fc-day fc-widget-content fc-thu fc-past"
																					data-date="2017-02-02"></td>
																				<td class="fc-day fc-widget-content fc-fri fc-past"
																					data-date="2017-02-03"></td>
																				<td class="fc-day fc-widget-content fc-sat fc-past"
																					data-date="2017-02-04"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-other-month fc-past"
																					data-date="2017-01-29"><span
																					class="fc-day-number">29</span></td>
																				<td class="fc-day-top fc-mon fc-other-month fc-past"
																					data-date="2017-01-30"><span
																					class="fc-day-number">30</span></td>
																				<td class="fc-day-top fc-tue fc-other-month fc-past"
																					data-date="2017-01-31"><span
																					class="fc-day-number">31</span></td>
																				<td class="fc-day-top fc-wed fc-past"
																					data-date="2017-02-01"><span
																					class="fc-day-number">1</span></td>
																				<td class="fc-day-top fc-thu fc-past"
																					data-date="2017-02-02"><span
																					class="fc-day-number">2</span></td>
																				<td class="fc-day-top fc-fri fc-past"
																					data-date="2017-02-03"><span
																					class="fc-day-number">3</span></td>
																				<td class="fc-day-top fc-sat fc-past"
																					data-date="2017-02-04"><span
																					class="fc-day-number">4</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content fc-rigid"
																style="height: 77px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td class="fc-day fc-widget-content fc-sun fc-past"
																					data-date="2017-02-05"></td>
																				<td class="fc-day fc-widget-content fc-mon fc-past"
																					data-date="2017-02-06"></td>
																				<td class="fc-day fc-widget-content fc-tue fc-past"
																					data-date="2017-02-07"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-today fc-state-highlight"
																					data-date="2017-02-08"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-future"
																					data-date="2017-02-09"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-future"
																					data-date="2017-02-10"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-future"
																					data-date="2017-02-11"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-past"
																					data-date="2017-02-05"><span
																					class="fc-day-number">5</span></td>
																				<td class="fc-day-top fc-mon fc-past"
																					data-date="2017-02-06"><span
																					class="fc-day-number">6</span></td>
																				<td class="fc-day-top fc-tue fc-past"
																					data-date="2017-02-07"><span
																					class="fc-day-number">7</span></td>
																				<td
																					class="fc-day-top fc-wed fc-today fc-state-highlight"
																					data-date="2017-02-08"><span
																					class="fc-day-number">8</span></td>
																				<td class="fc-day-top fc-thu fc-future"
																					data-date="2017-02-09"><span
																					class="fc-day-number">9</span></td>
																				<td class="fc-day-top fc-fri fc-future"
																					data-date="2017-02-10"><span
																					class="fc-day-number">10</span></td>
																				<td class="fc-day-top fc-sat fc-future"
																					data-date="2017-02-11"><span
																					class="fc-day-number">11</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content fc-rigid"
																style="height: 77px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-future"
																					data-date="2017-02-12"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-future"
																					data-date="2017-02-13"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-future"
																					data-date="2017-02-14"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-future"
																					data-date="2017-02-15"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-future"
																					data-date="2017-02-16"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-future"
																					data-date="2017-02-17"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-future"
																					data-date="2017-02-18"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-future"
																					data-date="2017-02-12"><span
																					class="fc-day-number">12</span></td>
																				<td class="fc-day-top fc-mon fc-future"
																					data-date="2017-02-13"><span
																					class="fc-day-number">13</span></td>
																				<td class="fc-day-top fc-tue fc-future"
																					data-date="2017-02-14"><span
																					class="fc-day-number">14</span></td>
																				<td class="fc-day-top fc-wed fc-future"
																					data-date="2017-02-15"><span
																					class="fc-day-number">15</span></td>
																				<td class="fc-day-top fc-thu fc-future"
																					data-date="2017-02-16"><span
																					class="fc-day-number">16</span></td>
																				<td class="fc-day-top fc-fri fc-future"
																					data-date="2017-02-17"><span
																					class="fc-day-number">17</span></td>
																				<td class="fc-day-top fc-sat fc-future"
																					data-date="2017-02-18"><span
																					class="fc-day-number">18</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content fc-rigid"
																style="height: 77px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-future"
																					data-date="2017-02-19"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-future"
																					data-date="2017-02-20"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-future"
																					data-date="2017-02-21"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-future"
																					data-date="2017-02-22"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-future"
																					data-date="2017-02-23"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-future"
																					data-date="2017-02-24"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-future"
																					data-date="2017-02-25"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-future"
																					data-date="2017-02-19"><span
																					class="fc-day-number">19</span></td>
																				<td class="fc-day-top fc-mon fc-future"
																					data-date="2017-02-20"><span
																					class="fc-day-number">20</span></td>
																				<td class="fc-day-top fc-tue fc-future"
																					data-date="2017-02-21"><span
																					class="fc-day-number">21</span></td>
																				<td class="fc-day-top fc-wed fc-future"
																					data-date="2017-02-22"><span
																					class="fc-day-number">22</span></td>
																				<td class="fc-day-top fc-thu fc-future"
																					data-date="2017-02-23"><span
																					class="fc-day-number">23</span></td>
																				<td class="fc-day-top fc-fri fc-future"
																					data-date="2017-02-24"><span
																					class="fc-day-number">24</span></td>
																				<td class="fc-day-top fc-sat fc-future"
																					data-date="2017-02-25"><span
																					class="fc-day-number">25</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content fc-rigid"
																style="height: 77px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-future"
																					data-date="2017-02-26"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-future"
																					data-date="2017-02-27"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-future"
																					data-date="2017-02-28"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-other-month fc-future"
																					data-date="2017-03-01"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-other-month fc-future"
																					data-date="2017-03-02"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
																					data-date="2017-03-03"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
																					data-date="2017-03-04"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td class="fc-day-top fc-sun fc-future"
																					data-date="2017-02-26"><span
																					class="fc-day-number">26</span></td>
																				<td class="fc-day-top fc-mon fc-future"
																					data-date="2017-02-27"><span
																					class="fc-day-number">27</span></td>
																				<td class="fc-day-top fc-tue fc-future"
																					data-date="2017-02-28"><span
																					class="fc-day-number">28</span></td>
																				<td
																					class="fc-day-top fc-wed fc-other-month fc-future"
																					data-date="2017-03-01"><span
																					class="fc-day-number">1</span></td>
																				<td
																					class="fc-day-top fc-thu fc-other-month fc-future"
																					data-date="2017-03-02"><span
																					class="fc-day-number">2</span></td>
																				<td
																					class="fc-day-top fc-fri fc-other-month fc-future"
																					data-date="2017-03-03"><span
																					class="fc-day-number">3</span></td>
																				<td
																					class="fc-day-top fc-sat fc-other-month fc-future"
																					data-date="2017-03-04"><span
																					class="fc-day-number">4</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<div class="fc-row fc-week fc-widget-content fc-rigid"
																style="height: 78px;">
																<div class="fc-bg">
																	<table>
																		<tbody>
																			<tr>
																				<td
																					class="fc-day fc-widget-content fc-sun fc-other-month fc-future"
																					data-date="2017-03-05"></td>
																				<td
																					class="fc-day fc-widget-content fc-mon fc-other-month fc-future"
																					data-date="2017-03-06"></td>
																				<td
																					class="fc-day fc-widget-content fc-tue fc-other-month fc-future"
																					data-date="2017-03-07"></td>
																				<td
																					class="fc-day fc-widget-content fc-wed fc-other-month fc-future"
																					data-date="2017-03-08"></td>
																				<td
																					class="fc-day fc-widget-content fc-thu fc-other-month fc-future"
																					data-date="2017-03-09"></td>
																				<td
																					class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
																					data-date="2017-03-10"></td>
																				<td
																					class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
																					data-date="2017-03-11"></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="fc-content-skeleton">
																	<table>
																		<thead>
																			<tr>
																				<td
																					class="fc-day-top fc-sun fc-other-month fc-future"
																					data-date="2017-03-05"><span
																					class="fc-day-number">5</span></td>
																				<td
																					class="fc-day-top fc-mon fc-other-month fc-future"
																					data-date="2017-03-06"><span
																					class="fc-day-number">6</span></td>
																				<td
																					class="fc-day-top fc-tue fc-other-month fc-future"
																					data-date="2017-03-07"><span
																					class="fc-day-number">7</span></td>
																				<td
																					class="fc-day-top fc-wed fc-other-month fc-future"
																					data-date="2017-03-08"><span
																					class="fc-day-number">8</span></td>
																				<td
																					class="fc-day-top fc-thu fc-other-month fc-future"
																					data-date="2017-03-09"><span
																					class="fc-day-number">9</span></td>
																				<td
																					class="fc-day-top fc-fri fc-other-month fc-future"
																					data-date="2017-03-10"><span
																					class="fc-day-number">10</span></td>
																				<td
																					class="fc-day-top fc-sat fc-other-month fc-future"
																					data-date="2017-03-11"><span
																					class="fc-day-number">11</span></td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col -md-4">
						<!-- Panel -->
						<div class="panel -dark" id="external-events">
							<!-- Panel Heading -->
							<div class="panel-heading">
								<h4>Etkinlik Ekle</h4>
							</div>
							<!-- /Panel Heading -->
							<!-- Panel Body -->
							<div class="panel-body">
								<div class="fc-event ui-draggable ui-draggable-handle">1.
									Araç</div>
								<div class="fc-event ui-draggable ui-draggable-handle">2.
									Araç</div>
								<div class="fc-event ui-draggable ui-draggable-handle">3.
									araç</div>
								<div class="fc-event ui-draggable ui-draggable-handle">4.
									araç</div>
								<div class="fc-event ui-draggable ui-draggable-handle">5.
									araç</div>
							</div>
							<!-- /Panel Body -->
						</div>
						<!-- /Panel -->
					</div>
				</div>
			</div>
		</div>
		<!-- /Content -->
	</div>
	<!-- Theme -->




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
</body>
</html>