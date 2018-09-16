<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<!-- Head BEGIN -->
<head>
<title>RentACar Frontend</title>
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/select2/css/select2.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/select2/css/select2-bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/css/components.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/css/plugins.min.css"
	rel="stylesheet" type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/css/login.min.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
</head>
<!-- Head END -->
<body class=" login">
	<!-- BEGIN LOGO -->
	<div class="logo">
		<a href="index.html"> <img
			src="<%=request.getContextPath()%>/resources/themefolder1/assets/frontend/layout/img/logos/logo-corp-turquoise.png"
			alt="" />
		</a>
	</div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<h3 class="form-title font-green">Giriş Yap</h3>

		<c:if test="${not empty logout}">
			<div>${logout}</div>
		</c:if>
		<form class="login-form" action="login" method="post">
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Geçersiz Kullanıcı Adı veya Parola!!</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>Sistemden başarı ile çıkış yapıldı!!</p>
				</div>
			</c:if>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Kullanıcı
					Adı</label> <input
					class="form-control form-control-solid placeholder-no-fix"
					type="text" autocomplete="off" placeholder="Kullanıcı Adı"
					name="username" id="username" />
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Şifre</label> <input
					class="form-control form-control-solid placeholder-no-fix"
					type="password" autocomplete="off" placeholder="Şifre"
					name="password" id="password" />
			</div>
			<sec:csrfInput />
			<div class="form-actions">
				<button type="submit" class="btn green uppercase">Giriş Yap</button>
				<button style="float: right" class="btn green uppercase">
					<a style="color: white;" href="<%=request.getContextPath()%>/">Anasayfa</a>
				</button>
			</div>

			<div class="create-account">
				<p>
					<a href="<%=request.getContextPath()%>/user/registeruser"
						id="register-btn" class="uppercase">Hesap oluşturmak için
						tıklayınız</a>
				</p>
			</div>
		</form>
		<!-- END LOGIN FORM -->
		<!-- BEGIN FORGOT PASSWORD FORM -->
		<form class="forget-form" action="index.html" method="post">
			<h3 class="font-green">Forget Password ?</h3>
			<p>Enter your e-mail address below to reset your password.</p>
			<div class="form-group">
				<input class="form-control placeholder-no-fix" type="text"
					autocomplete="off" placeholder="Email" name="email" />
			</div>
			<div class="form-actions">
				<button type="button" id="back-btn" class="btn green btn-outline">Back</button>
				<button type="submit" class="btn btn-success uppercase pull-right">Submit</button>
			</div>
		</form>
		<!-- END FORGOT PASSWORD FORM -->
	</div>
	<!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<!-- BEGIN CORE PLUGINS -->
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/bootstrap/js/bootstrap.min.js"
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
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery-validation/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/jquery-validation/js/additional-methods.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/select2/js/select2.full.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/app.min.js"
		type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script
		src="<%=request.getContextPath()%>/resources/themefolder1/assets/plugins/login.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/global.js"></script>
</body>

</html>
