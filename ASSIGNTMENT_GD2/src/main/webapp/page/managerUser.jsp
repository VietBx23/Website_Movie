<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<title>ManagerUser</title>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
	height: 100vh;
}

@
keyframes gradient { 0% {
	background-position: 0% 50%;
}

50








%
{
background-position








:








100






%
50






%;
}
100








%
{
background-position








:








0






%
50






%;
}
}
.edit {
	margin-top: 40px;
}
</style>
</head>

<body>
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
	<div class="container col-sm-6">
		<div class="card edit">
			<div class="card-header">
				<ul class="nav nav-pills" style="margin-left: 30px;" role="tablist">
					<li class="nav-item"><a class="nav-link active text-dark"
						data-bs-toggle="pill" href="#home">USER EDITION</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						data-bs-toggle="pill" href="#menu1">USER LIST</a></li>

				</ul>
			</div>
			<div class="card-body">
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
						<br>
						<div class="container">
							<div class="row"
								style="background-color: bisque; border-radius: 10px;">
								<div class="card-body">
									<div class="row"
										style="background-color: bisque; border-radius: 10px;">
										<div class="col-sm-12">
											<form method="mt-3">
												<div class="row">
													<div class="col">
														<label for=""> <span>User Name</span></label>
														<div class="form-label mb-3">
															<input type="text" class="form-control"
																placeholder="UserName" value="${user.id}" name="id">
														</div>
													</div>
													<div class="col">
														<label for=""> <span>PassWord</span></label>
														<div class="form-label mb-3">
															<input type="password" class="form-control"
																placeholder="PassWord" value="${user.password}"
																name="password">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<label for=""> <span>FullName</span></label>
														<div class="form-label mb-3">
															<input type="text" class="form-control"
																placeholder="FullName" value="${user.fullname}"
																name="fullname">
														</div>
													</div>
													<div class="col">
														<label for=""> <span>Email Address</span></label>
														<div class="form-label mb-3">
															<input type="email" class="form-control"
																placeholder="Email Address" value="${user.email}"
																name="email">
														</div>
													</div>
												</div>
											
										</div>
									</div>
									<div class="card-footer" style="text-align: right">
										<div class="fa-arrow-right-to-city">
											<button
												class="btn btn-primary btn-login text-uppercase fw-bold"
												formaction="/ASSIGNTMENT_GD2/UserServlet/Update?id">Update</button>
											<button
												class="btn btn-primary btn-login text-uppercase fw-bold"
												formaction="/ASSIGNTMENT_GD2/UserServlet/Delete">Delete</button>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="menu1" class="container tab-pane fade"
						style="background-color: bisque; border-radius: 10px;">
						<br>
						<div class="container mb-3">

							<table class="table ">
								<thead  class="table-dark">
									<tr>
										<th>UserName</th>
										<th>PassWord</th>
										<th>FullName</th>
										<th>Email</th>
										<th>Role</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:set var="count" value="${0}" scope="request"></c:set>
									<c:forEach var="item" items="${users}">
										<c:set var="count" value="${count+1}" scope="request"></c:set>
										<tr class="table-bordered table-success">

											<td>${item.id }</td>
											<td>${item.password }</td>
											<td>${item.fullname }</td>
											<td>${item.email }</td>
											<td>${item.admin?'Admin':'User' }</td>
											<td><a
												href="/ASSIGNTMENT_GD2/UserServlet/Edit?id=${item.id}">Edit</a>
												<a href="/ASSIGNTMENT_GD2/UserServlet/Delete?id=${item.id}">Remove</a>
											</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
							<div class="card-footer">
								<div style="text-align: left; float: left">
									<p>85 User</p>
								</div>
								<div class="fa-arrow-right-to-city" style="text-align: right">

									<button
										class="btn btn-primary btn-login text-uppercase fw-bold"
										type="submit">|<</button>
									<button
										class="btn btn-primary btn-login text-uppercase fw-bold"
										type="submit"><<</button>
									<button
										class="btn btn-primary btn-login text-uppercase fw-bold"
										type="submit">>></button>
									<button
										class="btn btn-primary btn-login text-uppercase fw-bold"
										type="submit">></button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>

</html>