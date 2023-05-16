<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="jsp/static/head.jsp"%>
</head>
<style>

</style> 
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<!-- Color Changer -->

	<!-- /Color Changer -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<%@ include file="jsp/static/topNav.jsp"%>
				<!-- Menu -->
			<div class="container menu-nav">
				<nav class="navbar navbar-expand-lg lochana-bg text-white">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="ti-menu text-white"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
						<ul class="navbar-nav mr-auto" id="navUl">

							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">个人中心</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="jsp/modules/center/updatePassword.jsp">修改密码</a><a
										id="myinfo" class="dropdown-item"
										href="jsp/modules/center/info.jsp">个人信息</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">用户管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/yonghu/list.jsp">用户</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">商家管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/shangjia/list.jsp">商家</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">用户申请管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/yonghushenqing/list.jsp">用户申请</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">商品分类管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/shangpinfenlei/list.jsp">商品分类</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">商品信息管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/shangpinxinxi/list.jsp">商品信息</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">在线咨询管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/zaixianzixun/list.jsp">在线咨询</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">店铺公告管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/dianpugonggao/list.jsp">店铺公告</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">意见反馈</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/messages/list.jsp">意见反馈</a>
								</div>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">系统管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="jsp/modules/config/list.jsp">轮播图管理</a>
								</div>
							</li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
															 href="#" role="button" aria-haspopup="true"
															 aria-expanded="false">订单管理</a>
								<div class="dropdown-menu"><a class="dropdown-item"
															  href="/jspmyo1c0/jsp/modules/orders/list.jsp?orderStatus=已完成">已完成订单</a><a
										class="dropdown-item"
										href="/jspmyo1c0/jsp/modules/orders/list.jsp?orderStatus=已发货">已发货订单</a><a
										class="dropdown-item"
										href="/jspmyo1c0/jsp/modules/orders/list.jsp?orderStatus=未支付">未支付订单</a><a
										class="dropdown-item"
										href="/jspmyo1c0/jsp/modules/orders/list.jsp?orderStatus=已取消">已取消订单</a><a
										class="dropdown-item"
										href="/jspmyo1c0/jsp/modules/orders/list.jsp?orderStatus=已支付">已支付订单</a><a
										class="dropdown-item"
										href="/jspmyo1c0/jsp/modules/orders/list.jsp?orderStatus=已退款">已退款订单</a>
								</div>
							</li>
						</ul>
					</div>
				</nav>
			</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">主页</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="#">
										<span class="ti-home"></span>
									</a>
								</li>
							</ol>
						</div>
					</div>
				</div>
			
			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">				
				<!-- Main Content -->
				<div class="row">
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow min-h200" style="height: 700px;">
							<h3 class="widget-title"> </h3>
							<h1 align="center" ><strong>欢迎使用xxx系统</strong></h1>
						</div>
					</div>
				</div>
			</div>
			<!-- /Main Content -->
			<!--Copy Rights-->
			<!-- <div class="container">
				<div class="d-sm-flex justify-content-center">
				  <span class="text-muted text-center d-block d-sm-inline-block"></span>
				</div>
			</div> -->
			<!-- /Copy Rights-->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
			<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="jsp/static/foot.jsp"%>

	<script>
		<%@ include file="jsp/utils/menu.jsp"%>
		<%@ include file="jsp/static/setMenu.js"%>
		<%@ include file="jsp/utils/baseUrl.jsp"%>
		// 用户登出
        <%@ include file="jsp/static/logout.jsp"%>

		$(document).ready(function() {
		//我的后台,session信息转移
		if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
			  if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
				  window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
				  window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
				  window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
				  window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
			  }
		  }			
		  $('h1 strong').html('欢迎使用'+projectName);
          $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
		  $('.sidebar-header h3 a').html(projectName)
		  var token = window.sessionStorage.getItem("token");
		  if(token == "null" || token == null){
		  	alert("请登录后再操作");
		  	window.location.href = ("jsp/login.jsp");
		  }
			setMenu();
			<%@ include file="jsp/static/myInfo.js"%>
		});
	</script>
</body>

</html>
