<!-- <!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <title>Spring Boot File Upload / Download Rest API Example</title>
        <link rel="stylesheet" href="/css/main.css" />
    </head>
    <body>
        <noscript>
            <h2>Sorry! Your browser doesn't support Javascript</h2>
        </noscript>
        <div class="upload-container">
            <div class="upload-header">
                <h2>Spring Boot File Upload / Download Rest API Example</h2>
            </div>
            <div class="upload-content">
                <div class="single-upload">
                    <h3>Upload Single File</h3>
                    <form id="singleUploadForm" name="singleUploadForm">
                        <input id="singleFileUploadInput" type="file" name="file" class="file-input" required />
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="singleFileUploadError"></div>
                        <div id="singleFileUploadSuccess"></div>
                    </div>
                </div>
                <div class="multiple-upload">
                    <h3>Upload Multiple Files</h3>
                    <form id="multipleUploadForm" name="multipleUploadForm">
                        <input id="multipleFileUploadInput" type="file" name="files" class="file-input" multiple required />
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="multipleFileUploadError"></div>
                        <div id="multipleFileUploadSuccess"></div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/js/main.js" ></script>
    </body>
</html> -->

















































<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Image Analyzer</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bluebird/3.3.5/bluebird.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/image.css">

<script
	src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@1.6.0/src/loadingoverlay.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@1.6.0/extras/loadingoverlay_progress/loadingoverlay_progress.min.js"></script>

<script>
	$(document).ready( function(){
		
		$('#singleUploadForm').submit(function(event) {
		    var formElement = this;
		    // You can directly create form data from the form element
		    // (Or you could get the files from input element and append them to FormData as we did in vanilla javascript)
		    var formData = new FormData(formElement);

		    $.ajax({
		        type: "POST",
		        enctype: 'multipart/form-data',
		        url: "/uploadFile",
		        data: formData,
		        processData: false,
		        contentType: false,
		        success: function (response) {
		            console.log(response);
		            // process response
		        },
		        error: function (error) {
		            console.log(error);
		            // process error
		        }
		    });

		    event.preventDefault();
		});
		
		
		
		
		var rhistList = new Array();
		var ghistList = new Array();
		var bhistList = new Array();
		
		  <c:forEach items="${rhist}" var="rhist">
		  	rhistList.push("${rhist}");
		  </c:forEach>
		  
		  <c:forEach items="${ghist}" var="ghist">
		  	ghistList.push("${ghist}");
		  </c:forEach>
		  
		  <c:forEach items="${bhist}" var="bhist">
		  	bhistList.push("${bhist}");
		  </c:forEach>

	    
	    
	    
	    var rctx = $("#rcolorhistcanvas")[0].getContext("2d");
	    var gctx = $("#gcolorhistcanvas")[0].getContext("2d");
	    var bctx = $("#bcolorhistcanvas")[0].getContext("2d");
	    
	    var rmax = Math.max.apply(null, rhistList);
	    var bmax = Math.max.apply(null, ghistList);
	    var gmax = Math.max.apply(null, bhistList);

	    function colorbars(ctx, max, vals, color, y) {
	      ctx.fillStyle = color;
	      jQuery.each(vals, function(i,x) {
	        var pct = (vals[i] / max) * 100;
	        ctx.fillRect(i, y, 1, -Math.round(pct));
	      });
	    }

	    colorbars(rctx, rmax, rhistList, "rgb(255,0,0)", 100);
	    colorbars(gctx, gmax, ghistList, "rgb(0,255,0)", 100);
	    colorbars(bctx, bmax, bhistList, "rgb(0,0,255)", 100);
	    
	    
	    	

	} );
</script>

</head>
<!-- <body style="background-image: url(https://www.summermvc.com/img_bg_pattern.png);">
 -->
<body>
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
				<a href="/" class="navbar-brand mobile-navbar-brand mobile-show">IMAGE</a>
				<a id="download" class="mobile-show" href="/"><i
					class="fa fa-facebook fa-lg logo"></i></a>
			</div>
		</div>
		<div class="collapse navbar-collapse navbar-content" id="top_menu"
			style="max-width: 1000px; margin-left: auto; margin-right: auto;">
			<ul class="nav navbar-nav top-nav">

				<li id="0" name="summermvc" class="active"><a href="/">IMAGE</a></li>

				<li id="1" name="gettingstarted" class=""><a
					href="/doc/getting-started">Analyze</a></li>

				<!--           <li id="25" name="advancedtopic" class=""><a href="/doc/advanced-topic">History</a></li>
 -->
				<li id="30" name="information" class=""><a
					href="/doc/information">Information</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right top-nav">

				<!-- <li style="padding-right: 15px" id="35" name="facebook" class=""><a href="window.open('https://www.facebook.com/dialog/feed?app_id=755383531310577&amp;display=popup&amp;caption=An%20example%20caption&amp;link=http://imgnews.naver.net/image/076/2017/10/18/2017101901001253400099581_20171018133052141.jpg?type=w540&amp;redirect_uri=http://localhost:3000/template', '', 'top=250,left=250,width=1000,height=400' );"><i class="fa fa-facebook fa-lg"></i>&nbsp;&nbsp;Facebook</a></li> -->
			</ul>
		</div>
	</header>





	<div class="container-fluid" style="padding-top: 60px">
		<div class="row"
			style="max-width: 1000px; margin-left: auto; margin-right: auto; margin-bottom:50px">
			
			<div class="col-md-12">
				<h2>Basic Information</h2>
			</div>
			
			<div class="col-md-6">
				<img style="width: 100%" src="/uploads/1377559307007.jpg"></img>
			</div>
			
			<div class="col-md-6">
				<div class="form-group">
					<label for="inp-title"><h4>Title</h4></label> <input type="text"
						class="form-control" id="inp-title" />
				</div>
				<form class="form-group" id="uploadForm" >
					<label for="inp-image"><h4>Image</h4></label> 
					<input type="file"
						class="form-control" id="inp-image" />
				</form>
				<div>
					<button class="btn_important">Analyze</button>
				</div>
			</div>
			
			<div class="col-md-12">
				<hr>
			</div>
			
			<div class="col-md-12">
				<form id="singleUploadForm" name="singleUploadForm">
                        <input id="singleFileUploadInput" type="file" name="file" class="file-input" required />
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="singleFileUploadError"></div>
                        <div id="singleFileUploadSuccess"></div>
                    </div>
			</div>
			
			<div class="col-md-12">
				<div class="multiple-upload">
                    <h3>Upload Multiple Files</h3>
                    <form id="multipleUploadForm" name="multipleUploadForm">
                        <input id="multipleFileUploadInput" type="file" name="files" class="file-input" multiple required />
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="multipleFileUploadError"></div>
                        <div id="multipleFileUploadSuccess"></div>
                    </div>
                </div>
			</div>
			
			
		</div>
		
		<c:forEach items="${ghist}" var="ghistList" varStatus="status1" >
			<c:out value="${ghistList}" /><br>
			<%-- <c:forEach items="${rhistList}" var="rhistItems" varStatus="status2" >
				${rhistItems}
			</c:forEach> --%>
		</c:forEach>

		
		<div class="row"
			style="max-width: 1000px; margin-left: auto; margin-right: auto; margin-bottom:50px">
			
			<div class="col-md-12">
				<h2>Analyzed</h2>
			</div>
			
			<div class="col-md-4">
				<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
    
    
    
    
    
    
    
    
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
    	  
    	  /*var data = google.visualization.arrayToDataTable( ${rhist} );
 */    	  
    	  /* var data = google.visualization.arrayToDataTable( [['Dinosaur', 'Length'], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 0], ['', 1], ['', 2], ['', 2], ['', 2], ['', 5], ['', 5], ['', 5], ['', 5], ['', 16], ['', 11], ['', 9], ['', 33], ['', 89], ['', 116], ['', 512], ['', 347], ['', 299043]]
); */
         var data = google.visualization.arrayToDataTable([
          ['Dinosaur', 'Length'],
          ['Acrocanthosaurus (top-spined lizard)', 12.2],
          ['Albertosaurus (Alberta lizard)', 9.1],
          ['Allosaurus (other lizard)', 12.2],
          ['Apatosaurus (deceptive lizard)', 22.9],
          ['Archaeopteryx (ancient wing)', 0.9],
          ['Argentinosaurus (Argentina lizard)', 36.6],
          ['Baryonyx (heavy claws)', 9.1],
          ['Brachiosaurus (arm lizard)', 30.5],
          ['Ceratosaurus (horned lizard)', 6.1],
          ['Coelophysis (hollow form)', 2.7],
          ['Compsognathus (elegant jaw)', 0.9],
          ['Deinonychus (terrible claw)', 2.7],
          ['Diplodocus (double beam)', 27.1],
          ['Dromicelomimus (emu mimic)', 3.4],
          ['Gallimimus (fowl mimic)', 5.5],
          ['Mamenchisaurus (Mamenchi lizard)', 21.0],
          ['Megalosaurus (big lizard)', 7.9],
          ['Microvenator (small hunter)', 1.2],
          ['Ornithomimus (bird mimic)', 4.6],
          ['Oviraptor (egg robber)', 1.5],
          ['Plateosaurus (flat lizard)', 7.9],
          ['Sauronithoides (narrow-clawed lizard)', 2.0],
          ['Seismosaurus (tremor lizard)', 45.7],
          ['Spinosaurus (spiny lizard)', 12.2],
          ['Supersaurus (super lizard)', 30.5],
          ['Tyrannosaurus (tyrant lizard)', 15.2],
          ['Ultrasaurus (ultra lizard)', 30.5],
          ['Velociraptor (swift robber)', 1.8]]); 

        var options = {
          title: 'Lengths of dinosaurs, in meters',
          legend: { position: 'none' },
          histogram: { bucketSize: 1 }
        };

        var chart = new google.visualization.Histogram(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    
    			<div id="chart_div" style="width: 100%; height: 100%;"></div>
			</div>
			
			<div class="col-md-4">
				<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
				<canvas id="myChart" width="20" height="20"></canvas>
			</div>
			
			<div class="col-md-4">
				<img style="width: 100%" src="https://www.summermvc.com/write_code.png"></img>
			</div>
		
		</div>
			
			
				<div class="row"
			style="max-width: 1000px; margin-left: auto; margin-right: auto; margin-bottom:50px">
				
			
			
			<div class="col-md-12 table-response" style="text-align:center">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Color</th>
							<th>Max(Color Value)</th>
							<th>FWHM</th>
							<th>FWHM/2</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>RED</td>
							<td>Max(Color Value)</td>
							<td>FWHM</td>
							<td>FWHM/2</td>
						</tr>
						<tr>
							<td>GREEN</td>
							<td>Max(Color Value)</td>
							<td>FWHM</td>
							<td>FWHM/2</td>
						</tr>
						<tr>
							<td>BLUE</td>
							<td>Max(Color Value)</td>
							<td>FWHM</td>
							<td>FWHM/2</td>
						</tr>
					</tbody>
					
				</table>
			</div>
			
			<div class="col-md-12">
				<hr>
			</div>
			
		</div>
	</div>
	
	<script>
		$(document).ready( function(){
			
			var rhistList = new Array();
			var ghistList = new Array();
			var bhistList = new Array();
			
			  <c:forEach items="${rhist}" var="rhist">
			  	rhistList.push("${rhist}");
			  </c:forEach>
			  
			  <c:forEach items="${ghist}" var="ghist">
			  	ghistList.push("${ghist}");
			  </c:forEach>
			  
			  <c:forEach items="${bhist}" var="bhist">
			  	bhistList.push("${bhist}");
			  </c:forEach>
			
			  var labelsList = new Array();
			  for( var i=0; i<256; i++ ){
				  labelsList.push(i);
			  }
			  
			  console.log( rhistList );
			
			var ctx = document.getElementById("myChart").getContext('2d');
			var myChart = new Chart(ctx, {
  type: 'bar',
			  data: {
			    labels: labelsList,
			    datasets: [{
			      label: 'Group A',
			      data: rhistList,
			      backgroundColor: 'rgba(255, 99, 132, 1)',
			    }]
			  },
			  options: {
			    scales: {
			      xAxes: [{
			        display: false,
			        barPercentage: 1,
			      }, {
			        display: false,
			      }],
			      yAxes: [{
			        ticks: {
			          beginAtZero:true
			        }
			      }]
			    }
			  }
			});
			
			
		} );
		
		
	</script>

	<div class="container-fluid">
		<div class="row">
			<canvas id="rcolorhistcanvas"></canvas>
		</div>
	</div>
	
	<div class="container-fluid">
		<div class="row">
			<canvas id="gcolorhistcanvas"></canvas>
		</div>
	</div>
	
	<div class="container-fluid">
		<div class="row">
			<canvas id="bcolorhistcanvas"></canvas>
		</div>
	</div>


	

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
				<canvas id="myChart" width="20" height="20"></canvas>
			</div>
		</div>
	</div>

	<footer style="background-color: black">
		<div class="jumbotron footer-background">
			<div class="footer-heading">
				<h2 class="title">Image Parser</h2>
				<div class="description">Image Analyzing Parser</div>
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