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
					<li id="0" class=""><a href="/">DashBoard</a></li>
					<li id="1" class=""><a href="/analyzing">Analyzing</a></li>
					<li id="30"class="active"><a href="/std">Standard</a></li>
					<li id="30"class=""><a href="/history">History</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right top-nav">
					<!-- <li style="padding-right: 15px" id="35" name="facebook" class=""><a href="window.open('https://www.facebook.com/dialog/feed?app_id=755383531310577&amp;display=popup&amp;caption=An%20example%20caption&amp;link=http://imgnews.naver.net/image/076/2017/10/18/2017101901001253400099581_20171018133052141.jpg?type=w540&amp;redirect_uri=http://localhost:3000/template', '', 'top=250,left=250,width=1000,height=400' );"><i class="fa fa-facebook fa-lg"></i>&nbsp;&nbsp;Facebook</a></li> -->
				</ul>
			</div>
		</header>
	
		<div class="page-content">
			<div class="container-fluid">
				<div class="row">
					<div class="small-section-end"></div>
					<h2>Basic Image Information</h2>
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
						href="javascript:getLicenseInfo()">Open Source Projects</a><br
						class="mobile-show"> and licensed under a <a
						href="javascript:getLicenseInfo()">MIT License</a>.
				</p>
			</div>

		</div>
	</footer>

</body>
</html>