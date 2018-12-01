<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
	
	<link rel="icon" href="data:;base64,iVBORw0KGgo=">
	<meta charset="utf-8">
	<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">


	<style>

		body {
			/* background-color: #328893; */
			background-color: #333;
		}

		.login-form {
			margin: auto;
			height: 98vh;
			max-width: 1000px;
			font-size: 1.5rem;
			color: white;
		}

		.login-info {
			margin: auto;
			height: 100%;
		}

		.system-title {
			text-align: center;
		}

		.system-title .my-icon {
			font-size: 15rem;
			padding-top: 15px;
		}

		.system-title h3 {
			font-weight: 700;
			margin-bottom: 3rem;
		}

		.login-table table {
			border: 2px;
		}

		.login-table .td-i {
			padding: 15px;
			width: 1.25rem;
			height: 1.25rem;
			border-right: 0;
		}

		.login-table .td-input {
			padding: 15px;
			border-left: 0;
		}

		.login-table td input {
			color: white;
			/* background-color: #328893; */
			background-color: #333;
			border: 0;
			width: 100%;
		}

		.login-table td input::placeholder {
			color: white;
		}

		.login-table td input:focus {
			outline: none;
		}

		.login-table .btn-submit {
			color: white;
			/* background-color: #328893; */
			background-color: #333;
			border: 2px solid white;
			width: 100%;
			padding: 1rem;
			font-weight: 700;
		}

		.login-table .btn-submit:hover {
			/* background-color: #5b949b; */
			background-color: black;
		}

		.system-footer {
			padding: 30px;
			text-align: center;
			font-size: 1.5rem;
		}
		
	</style>

	<script>
		$(document).ready( function(){



			$(".login-table .td-input input").focusin( function(){
				$(this).parent().parent().css( "background-color", "black");
				$(this).parent().css( "background-color", "black");
				$(this).css( "background-color", "black");
			} );
			$(".login-table .td-input input").focusout( function(){
				$(this).parent().parent().css( "background-color", "#333");
				$(this).parent().css( "background-color", "#333");
				$(this).css( "background-color", "#333");
			} );


			


			var marginTop = ( ( $(".login-form").height() - $(".login-info").height() ) / 2 ) - 55;
			$(".login-info").css( "margin-top", marginTop + "px" );





			$(".login-form").submit( function(){
			} );
		} );
	</script>

	<title>Image Analyzer</title>
</head>
<body>
	<form id="login-form" class="login-form" name="login-form" method="post" action="/login">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4 col-md-4">
				</div>
				<div class="col-lg-4 col-md-4 login-info">

					<div class="system-title">
						<i class="fas fa-cogs my-icon"></i>
						<h3>Image Analyzer</h3>
					</div>

					<div class="login-table">
						<table class="table table-responsive table-bordered ">
							<tbody>
								<tr>
									<td class="td-i">
										<i class="fas fa-user" style="color: white;"></i>
									</td>
									<td class="td-input">
										<input type="text" id="userid" name="userid" placeholder="USERID" required />
									</td>
								</tr>
								<tr>
									<td class="td-i">
										<i class="fas fa-unlock" style="color:white;"></i>
									</td>
									<td class="td-input">
										<input type="password" id="password" name="password" placeholder="PASSWORD" required />
									</td>
								</tr>
							</tbody>
						</table>

						<input type="submit" name="btn-submit" id="btn-submit" class="btn-submit" placeholder="SUBMIT" value="LOGIN" />
					</div>

					<div class="system-footer">
						<p>
							Copyright(c) 2018 Changho Kang<br>
							Beta-Test Version - v.0.0.1
						</p>
					</div>


				</div>
				<div class="col-lg-4 col-md-4">
				</div>
			</div>
		</div>
	</form>
	
</body>
</html>