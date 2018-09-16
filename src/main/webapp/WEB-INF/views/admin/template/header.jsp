<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Navbar -->
<div class="navbar -dark -fixed-top -has-5-items">
	<div class="navbar-wrapper">
		<a class="navbar-brand" href="index.html"> <span
			class="hidden-sm-up">V</span> <span class="hidden-xs-down">Admin
				Paneli</span>
		</a>
		<ul class="navbar-nav -right">
			<li><a class="has-morph-dropdown" href="#notifications-dropdown">
					<i class="pe pe-bell"></i> <span class="navbar-item-count">2</span>
			</a></li>
			<li><a class="has-morph-dropdown" href="#applications-dropdown">
					<i class="pe pe-keypad"></i>
			</a></li>
			<li class="navbar-profile"><a class="has-morph-dropdown"
				href="#profile-dropdown"> <!-- Image --> <img
					src="<%=request.getContextPath()%>/resources/img/yakup.jpg">
			</a></li>
		</ul>
	</div>
</div>
<!-- /Navbar -->
<!-- Left Sidebar -->
<div class="sidebar -dark -left -collapsible" id="sidebar">
	<div class="nano">
		<div class="nano-content">
			<div class="sidebar-wrapper">
				<ul class="sidebar-menu metismenu">
					<li class="sidebar-heading">İçerik</li>
					<li class="-active"><a href="index.html"> <i
							class="pe pe-home"></i> <span>Ana Sayfa</span></a></li>
					<li class=""><a href="#"> <i class="pe pe-note"></i> <span>Araç
								İşlemleri</span><span class="fa arrow"></span></a>
						<ul>
							<li class=""><a
								href="<%=request.getContextPath()%>/admin/addcar">Araç
									Ekleme</a></li>
							<li class=""><a
								href="<%=request.getContextPath()%>/admin/carlist">Araç
									Düzenleme</a></li>

						</ul></li>
					<li class=""><a href="#"> <i class="pe pe-note"></i> <span>Lokasyon
								İşlemleri</span><span class="fa arrow"></span></a>
						<ul>
							<li class=""><a
								href="<%=request.getContextPath()%>/admin/addlocation">Lokasyon
									Ekleme</a></li>
							<li class=""><a href="elements.html">Lokasyon Düzenleme</a></li>
						</ul></li>
					<li class=""><a href="#"> <i class="pe pe-note"></i> <span>Araç
								İşlemleri</span><span class="fa arrow"></span></a>
						<ul>
							<li class=""><a href="elements.html">Araç Kiralama</a></li>
							<li class=""><a href="elements.html">Araç Kiralama</a></li>
							<li class=""><a href="elements.html">Araç Kiralama</a></li>
						</ul></li>
					<li class=""><a href="#"> <i class="pe pe-note"></i> <span>Araç
								İşlemleri</span><span class="fa arrow"></span></a>
						<ul>
							<li class=""><a href="elements.html">Araç Kiralama</a></li>
							<li class=""><a href="elements.html">Araç Kiralama</a></li>
							<li class=""><a href="elements.html">Araç Kiralama</a></li>
						</ul></li>


					<li class="sidebar-heading">Admin İşlemleri</li>
					<li><a class="" href="#"> <i class="pe pe-copy-file"></i>
							<span>Admin İşlemleri</span><span class="fa arrow"></span></a>
						<ul>
							<li class=""><a href="signin.html">Giriş Yap</a></li>
							<li class=""><a href="signup.html">Kayıt Ol</a></li>
							<li class=""><a href="forgot-password.html">Şifre
									Değiştir</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- /Left Sidebar -->
