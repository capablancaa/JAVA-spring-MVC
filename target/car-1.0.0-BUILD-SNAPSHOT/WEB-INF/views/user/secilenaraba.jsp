<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
<meta charset="utf-8">
<title>Rent A Car Theme</title>

<link rel="shortcut icon" href="favicon.ico">

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
<!-- Global styles END -->


<!-- Theme styles START -->
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/css/components.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/themefolder1/assets/frontend/layout/css/style.css"
	rel="stylesheet">
<link href="../../assets/frontend/layout/css/themes/red.css"
	rel="stylesheet" id="style-color">
<!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="corporate">

	<%@include file="/WEB-INF/views/template/header.jsp"%>
	<div class="main">
		<div class="container">
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN CONTENT -->
				<div class="col-md-12 col-sm-12">
					<br></br>
					<h1>Portfolio Item</h1>
					<div class="content-page">
						<div class="row margin-bottom-30">
							<!-- BEGIN CAROUSEL -->
							<div class="col-md-5 front-carousel">
								<div class="carousel slide" id="myCarousel">
									<!-- Carousel items -->
									<div class="carousel-inner">
										<div class="item active">
											<img alt=""
												src="../../assets/frontend/pages/img/works/img2.jpg">
											<div class="carousel-caption">
												<p>Ducimus qui blanditiis praesentium voluptatum</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- END CAROUSEL -->

							<!-- BEGIN PORTFOLIO DESCRIPTION -->
							<div class="col-md-7">
								<h2>Quis tempor incididunt</h2>
								<p>Molestias excepturi sint occaecati cupiditate non
									provident, similique sunt in culpa quis tempor incididunt ut et
									dolore et dolorum fuga. Ut non libero consectetur adipiscing
									elit magna. Sed et quam lacus.</p>
								<p>Lorem ipsum dolor sit amet, dolore eiusmod quis tempor
									incididunt ut et dolore Ut veniam unde nostrudlaboris. Sed unde
									omnis iste natus error sit voluptatem.</p>
								<br>
								<div class="row front-lists-v2 margin-bottom-15">
									<div class="col-md-6">
										<ul class="list-unstyled">
											<li><i class="fa fa-html5"></i> HTML5/CSS3</li>
											<li><i class="fa fa-bell"></i> Web Deisgn</li>
											<li><i class="fa fa-globe"></i> Web Development</li>
											<li><i class="fa fa-shopping-cart"></i> Shoping Cart</li>
										</ul>
									</div>
									<div class="col-md-6">
										<ul class="list-unstyled">
											<li><i class="fa fa-dropbox"></i> Free Storage</li>
											<li><i class="fa fa-cloud"></i> Cloud Hosting</li>
											<li><i class="fa fa-comments"></i> Free Support</li>
											<li><i class="fa fa-star"></i> Awesome UI</li>
										</ul>
									</div>
								</div>
								<a class="btn btn-primary" href="#"> VISIT THE PROJECT</a>
							</div>
							<!-- END PORTFOLIO DESCRIPTION -->
						</div>
					</div>
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- BEGIN SIDEBAR & CONTENT -->
		</div>
	</div>
	<%@include file="/WEB-INF/views/template/footer.jsp"%>

</body>
<!-- END BODY -->
</html>
