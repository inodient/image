<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/image.css">

<title>Analyze Images</title>

</head>

<body>
	<div class="doc">
		<header class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-container"
				style="max-width: 1000px; margin-left: auto; margin-right: auto;">
				<div class="navbar-header">
					<button type="button" style="margin-left: 10px"
						class="pull-left navbar-toggle" data-toggle="collapse"
						data-target="#top_menu">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="/" class="navbar-brand mobile-navbar-brand mobile-show">Image Analyzer</a>
					<a id="download" class="mobile-show" href="/"><i
						class="fa fa-facebook fa-lg logo"></i></a>
				</div>
			</div>
			<div class="collapse navbar-collapse navbar-content" id="top_menu"
				style="max-width: 1000px; margin-left: auto; margin-right: auto;">
				<ul class="nav navbar-nav top-nav">
					<li id="0" class=""><a href="/">Dash Board</a></li>
					<li id="1" class="active"><a href="/analyze">Analyze</a></li>
					<li id="30"class=""><a href="/information">Information</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right top-nav">
					<!-- <li style="padding-right: 15px" id="35" name="facebook" class=""><a href="window.open('https://www.facebook.com/dialog/feed?app_id=755383531310577&amp;display=popup&amp;caption=An%20example%20caption&amp;link=http://imgnews.naver.net/image/076/2017/10/18/2017101901001253400099581_20171018133052141.jpg?type=w540&amp;redirect_uri=http://localhost:3000/template', '', 'top=250,left=250,width=1000,height=400' );"><i class="fa fa-facebook fa-lg"></i>&nbsp;&nbsp;Facebook</a></li> -->
				</ul>
			</div>
		</header>
	
		<div class="page-content">
			<div class="container-fluid">
				<div class="row" style="padding-top: 30px">
					<div class="col-md-12">
						<article>
							<h3 class="after-line-block">Copyright</h3>
							<div class="machine-title">
							</div>
							<table class="table table-responsive table-bordered machine-list">
								<tbody>
									<tr>
										<td class="td-title">System</td>
										<td class="td-content">
											<span>Image Analyzer</span>
										</td>
									</tr>
									<tr>
										<td class="td-title">Regulation</td>
										<td class="td-content">
											<span>Whole usage of this system would be monitored by administrator. There are no one can use one as personal purpose. All rights are reserved in KANGCHANGHO.</span>
										</td>
									</tr>
									<tr>
										<td class="td-title">Date</td>
										<td class="td-content">
											<span>Oct 30 2018</span>
										</td>
									</tr>
								</tbody>
							</table>
			
						</article>
			
						<article>
							<h3 class="after-line-block">Development Info</h3>
							<div class="machine-title">
							</div>
							<table class="table table-responsive table-bordered machine-list">
								<tbody>
									<tr>
										<td class="td-title">University</td>
										<td class="td-content">
											<span></span>
										</td>
									</tr>
									<tr>
										<td class="td-title">Developer</td>
										<td class="td-content">
											<span>Changho Kang</span>
										</td>
									</tr>
									<tr>
										<td class="td-title">Management</td>
										<td class="td-content">
											<span>Changho Kang</span>
										</td>
									</tr>
									<tr>
										<td class="td-title">System Env</td>
										<td class="td-content">
											<span>JAVA EE</span>
										</td>
									</tr>
									<tr>
										<td class="td-title">Framework</td>
										<td class="td-content">
											<span>Spring Boot</span>
										</td>
									</tr>
								</tbody>
							</table>
			
						</article>
			
						<article>
							<h3 class="after-line-block">Open Source License</h3>
							<div class="machine-title">
							</div>
							<table class="table table-responsive table-bordered machine-list">
								<tbody>
									<tr>
										<td class="td-title">Spring Boot</td>
										<td class="td-content">
											<span>3.0.x</span>
										</td>
									</tr>
								</tbody>
							</table>
			
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<footer style="background-color: black">
		<div class="jumbotron footer-background">
			<div class="footer-heading">
				<h2 class="title">Image Analyzer</h2>
				<div class="description">Image Analyzing For maintaining machines</div>
			</div>

			<div class="footer-footer">
				<hr class="color-weaken">
				<p class="copyright">
					Copyright(c) 2018 KANGCHANGHO <br> Created and Maintained by <br
						class="mobile-show"> <a
						href="mailto:inodient@gmail.com?subject=KANGCHANGHO.COM - OPINITON">Ino
						Kang [Changho Kang]</a>. <br> <br> This work is using <a
						href="javascript:getLicenseInfo()">Spring Boot</a><br
						class="mobile-show"> and licensed under a <a
						href="javascript:getLicenseInfo()">MIT License</a>.
				</p>
			</div>

		</div>
	</footer>

</body>
</html>