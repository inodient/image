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
					<li id="0" class="active"><a href="/">DashBoard</a></li>
					<li id="1" class=""><a href="/analyzing">Analyzing</a></li>
					<li id="30"class=""><a href="/std">Standard</a></li>
					<li id="30"class=""><a href="/history">History</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right top-nav">
					<!-- <li style="padding-right: 15px" id="35" name="facebook" class=""><a href="window.open('https://www.facebook.com/dialog/feed?app_id=755383531310577&amp;display=popup&amp;caption=An%20example%20caption&amp;link=http://imgnews.naver.net/image/076/2017/10/18/2017101901001253400099581_20171018133052141.jpg?type=w540&amp;redirect_uri=http://localhost:3000/template', '', 'top=250,left=250,width=1000,height=400' );"><i class="fa fa-facebook fa-lg"></i>&nbsp;&nbsp;Facebook</a></li> -->
				</ul>
			</div>
		</header>
	</div>
	
	<!-- <div class="jumbotron" style="background-image: url('/uploads/jumbotron_bg.png'); background-size: 100% auto;color: white; padding-top: 70px; text-align: center"> -->
	<div class="jumbotron" style="background-color: black; background-size: 100% auto;color: white; padding-top: 70px; text-align: center">
		<div class="container-fluid">
			<div class="row" style="max-width: 1000px; margin: auto; padding-top: 40px">
				<!-- <img src="/uploads/histogram_black_icon.png" style="background-color: white; max-width:45vw; width:45vw; max-height:15vh; height: 15vh" /> -->
				<i class="fas fa-cogs my-icon"></i>
				<h2>Oil Analyzing &<br> Check Machine Status</h2>
				<button class="btn_important" onclick="location.href='/analyzing'" style="width:100%">Analyze</button>
			</div>
		</div>
	</div>
	
	<div class="doc">
		<div class="page-content">
			<div class="container-fluid">
			
				<div class="row">
					<div class="col-md-12 small-section-end">
						<h3 class="after-line-block" style="margin-bottom: 25px">History</h3>
						<p>Find & Access Analyzed results.</p>
						<table class="table table-hover table-bordered">
							<thead class="thead-dark">
								<tr>
									<th>Date</th>
									<th>Title</th>
									<th>Analyzer</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Sep 30 '18</td>
									<td>Car Oil Analysis</td>
									<td>Park Hong Gue</td>
								</tr>
								<tr>
									<td>Oct 1 '18</td>
									<td>Excavator Oil Analysis</td>
									<td>Kang Chang Ho</td>
								</tr>
								<tr>
									<td>Oct 13 '18</td>
									<td>Presentation Testing</td>
									<td>Kang Chang Ho</td>
								</tr>
							</tbody>
							
						</table>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12 small-section-end">
						<h3 class="after-line-block" style="margin-bottom: 25px">Standard</h3>
						<p>User can set analyzed results as standard. It can be used when analyzing other oil.</p>
						<button class="btn_important" onclick="location.href='/analyze'">Analyze</button>
					</div>
				</div>
			
			
			
				<!-- <div class="row">
					<div class="col-md-12 small-section-end">
						<h3 class="after-line-block" style="margin-bottom: 25px">Oid Analyzing & Check Machine Status</h3>
						<p>RGB Pattern information represents machine's status. It's possible to manage machine using this information.</p>
						<button class="btn_important" onclick="location.href='/analyze'">Analyze</button>
					</div>
				</div>
				<div class="row" style="text-align: left">
					<div class="col-md-12">
						<h3 class="after-line-block" style="margin-bottom: 25px">Analyzed Results contain specific informations for tracking machine status.</h3>
						<p>Analyzing reuslts can be connected each other for extracting meaningful information.</p>
						<table class="table table-hover table-bordered">
							<thead class="thead-dark">
								<tr>
									<th>Date</th>
									<th>Title</th>
									<th>Analyzer</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Sep 30 '18</td>
									<td>Car Oil Analysis</td>
									<td>Park Hong Gue</td>
								</tr>
								<tr>
									<td>Oct 1 '18</td>
									<td>Excavator Oil Analysis</td>
									<td>Kang Chang Ho</td>
								</tr>
								<tr>
									<td>Oct 13 '18</td>
									<td>Presentation Testing</td>
									<td>Kang Chang Ho</td>
								</tr>
							</tbody>
							
						</table>
					</div>
				</div> -->
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