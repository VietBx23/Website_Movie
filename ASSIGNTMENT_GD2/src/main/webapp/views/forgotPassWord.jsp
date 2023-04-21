<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />

<title>Document</title>

</head>

<body>
<!-- Header section -->
	<header class="header py-1 bg-success">
		<div class="text-center";=>
			<a href="#" style="color: white;">
				<h4>MEDIA - XEM PHIM TRỰC TUYẾN</h4>
			</a>
		</div>
	</header>
	<div class="menu">
		<jsp:include page="menu.jsp"></jsp:include>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-9 mx-auto">
				<div
					class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
					<div class="forgot card-img-left d-none d-md-flex">
						<img alt="" src="/ASSIGNTMENT_GD2/image/forgotPassWord.png">
					</div>
					<div class="card-body p-4 p-sm-5">
						<h2
							class="card-title text-center mb-5 fw-light fs-20 text-danger-emphasis border-danger-subtle">
							FORGOT PASSWORD</h2>
							${message}
						<form  method="post" action="/ASSIGNTMENT_GD2/forgotPass">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="floatingPassword"
									placeholder="UserName" name="username"> <label for="floatingInput" style="color:  rgba(5, 0, 0, 0.416)"> User</label>
							</div>
							<div class="form-floating mb-3">
								<input type="email" class="form-control" id="floatingInput"
									placeholder="name@example.com" name="email"> <label
									for="floatingInput" style="color:  rgba(5, 0, 0, 0.416)">Email address</label>
							</div>
							<hr class="my-4">
							<div class="d-grid">
								<button class="btn btn-primary btn-login text-uppercase fw-bold"
									type="submit">Retrieve</button>
							</div>
							<hr class="my-4">
							<div class="d-grid " style="text-align: center;">
								<a href="/ASSIGNTMENT_GD2/index"
									class="text-uppercase fw-bold text-decoration-none"> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-arrow-90deg-left"
										viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
											d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z" />
                                  </svg> Back To Home
								</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid col-sm-12 bg-dark">
		<footer class="py-5 ">
			<div class="row">
				<div class="col-6 col-md-2 mb-3">
					<h5 class="text-light">Section</h5>
					<ul class="nav flex-column">
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Home</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Features</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Pricing</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">FAQs</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">About</a></li>
					</ul>
				</div>

				<div class="col-6 col-md-2 mb-3">
					<h5 class="text-light">Section</h5>
					<ul class="nav flex-column">
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Home</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Features</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Pricing</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">FAQs</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">About</a></li>
					</ul>
				</div>

				<div class="col-6 col-md-2 mb-3">
					<h5 class="text-light">Section</h5>
					<ul class="nav flex-column">
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Home</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Features</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">Pricing</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">FAQs</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-light">About</a></li>
					</ul>
				</div>

				<div class="col-md-5 offset-md-1 mb-3">
					<form>
						<h5 class="text-light">Subscribe to our newsletter</h5>
						<p>Monthly digest of what's new and exciting from us.</p>
						<div class="d-flex flex-column flex-sm-row w-100 gap-2">
							<label for="newsletter1" class="visually-hidden">Email
								address</label> <input id="newsletter1" type="text" class="form-control"
								placeholder="Email address">
							<button class="btn btn-primary" type="button">Subscribe</button>
						</div>
					</form>
				</div>
			</div>

		</footer>


	</div>
</body>

</html>