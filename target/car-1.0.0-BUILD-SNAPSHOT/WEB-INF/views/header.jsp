<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- BEGIN TOP BAR -->
<div class="pre-header">
	<div class="container">
		<div class="row">
			<!-- BEGIN TOP BAR LEFT PART -->
			<div class="col-md-6 col-sm-6 additional-shop-info">
				<ul class="list-unstyled list-inline">
					<li><i class="fa fa-phone"></i><span>+90 538 575 81 51</span></li>
					<li><i class="fa fa-envelope-o"></i><span>arslanyakup56@gmail.com</span></li>
				</ul>
			</div>
			<!-- END TOP BAR LEFT PART -->
			<!-- BEGIN TOP BAR MENU -->
			<div class="col-md-6 col-sm-6 additional-nav">
				<ul class="list-unstyled list-inline pull-right">
					<li><a href="page-login.html">Giriş Yap</a></li>
					<li><a href="page-reg-page.html">Kayıt ol</a></li>
					<li><a href="admin/">Admin</a></li>
				</ul>
			</div>
			<!-- END TOP BAR MENU -->
		</div>
	</div>
</div>
<!-- END TOP BAR -->

<!-- BEGIN HEADER -->
<div class="header">
	<div class="container">
		<c:url value="/" var="url"></c:url>
		<a class="site-logo" href="${url}"><img
			src="<%=request.getContextPath()%>/resources/themefolder1/assets/frontend/layout/img/logos/logo-corp-turquoise.png"
			alt="Metronic FrontEnd"></a> <a href="javascript:void(0);"
			class="mobi-toggler"><i class="fa fa-bars"></i></a>

		<!-- BEGIN NAVIGATION -->
		<div class="header-navigation pull-right font-transform-inherit">
			<ul>
				<li><c:url value="/" var="url" /><a
					href='<c:out value="${url}"/>'>Anasayfa</a></li>
				<li><c:url value="user/carlist" var="url1" /><a
					href='<c:out value="${url1}"/>'>Araç Listesi</a></li>
				<li><a href="onepage-index.html">Kiralama Koşulları</a></li>
				<li><a href="onepage-index.html">Oto haberleri</a></li>
				<li><a href="onepage-index.html">Blog</a></li>
				<li><a href="onepage-index.html">Hakkımızda</a></li>
				<li><a href="onepage-index.html">İletişim</a></li>
			</ul>
		</div>
		<!-- END NAVIGATION -->
	</div>
</div>
<!-- Header END -->
