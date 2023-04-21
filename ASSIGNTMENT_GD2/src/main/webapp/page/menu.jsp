<%@ page pageEncoding="utf-8"%>
<!DOCTYPE jsp>
<jsp lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Document</title>
</head>

<body>
	<div class="container-fluid">

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			aria-label="Eighth navbar example">
			<div class="container">
				<a href="#" class="navbar-brand"><img
					src="/ASSIGNTMENT/images/1.png" width="30"
					class="rounded-circle mr-3" alt=""></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarsExample07"
					aria-controls="navbarsExample07" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsExample07">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/ASSIGNTMENT_GD2/admin">Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/ASSIGNTMENT_GD2/VideoServlet">Video</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/ASSIGNTMENT_GD2/UserServlet">User</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/ASSIGNTMENT_GD2/ReportServlet">Report</a>
						</li>

					</ul>
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link dropdown"
							role="button" href="/ASSIGNTMENT_GD2/editPro"> Welcome,
								${sessionScope.currentUser.fullname} </a></li>
					</ul>
					<form role="search">
						<input class="form-control mr-2" type="search"
							placeholder="Search" aria-label="Search">

					</form>
					<button type="button"
						class="btn btn-outline-light me-2 ml-2 btn-primary">Search</button>


					<div class="flex-shrink-0 dropdown bg-dark">
						<a href="#"
							class="d-block link-light text-decoration-none dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false"> <img
							src="https://github.com/mdo.png" alt="mdo" width="32" height="32"
							class="rounded-circle">
						</a>
						<ul class="dropdown-menu text-small shadow mt-2">
							<li><a class="dropdown-item" href="/ASSIGNTMENT_GD2/login">
									Login</a></li>
							<li><a class="dropdown-item"
								href="http://localhost:8080/ASSIGNTMENT_GD2/forgotPass">ForgotPassWord</a></li>
							<li><a class="dropdown-item"
								href="http://localhost:8080/ASSIGNTMENT_GD2/regis">Registration</a></li>
							<li><a class="dropdown-item"
								href="http://localhost:8080/ASSIGNTMENT_GD2/logout">sign-out</a></li>
							<li><a class="dropdown-item"
								href="http://localhost:8080/ASSIGNTMENT_GD2/change">ChangePassWord</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item"
								href="http://localhost:8080/ASSIGNTMENT_GD2/editPro">EditProfile</a></li>
						</ul>
					</div>


				</div>
			</div>
		</nav>
	</div>




</body>

</jsp>