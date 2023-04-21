<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>ManagerVideo</title>
<meta charset="utf-8">
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

.edit {
	margin-top: 40px;
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

	<div class="container">
		<div class="card edit">
			<div class="card-header">
				<ul class="nav nav-pills" style="margin-left: 30px;" role="tablist">
					<li class="nav-item"><a class="nav-link active text-dark"
						data-bs-toggle="pill" href="#home">FAVORITE</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						data-bs-toggle="pill" href="#menu1">FAVORITE USER</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						data-bs-toggle="pill" href="#menu2">SHARED FRIEND</a></li>

				</ul>
			</div>
			<div class="card-body">
				<div class="tab-content">
					<div id="home" class="container tab-pane active"
						style="background-color: bisque; border-radius: 10px;">
						<br>
						<div class="container mb-3">
							<table class="table table-bordered table-success mt-3">
								<thead>
									<tr>
										<th>Video Title</th>
										<th>Favorite Count</th>
										<th>LaTest Date</th>
										<th>OlDest Date</th>
									</tr>
								</thead>

								<c:forEach var="item" items="${reports}">
									<tr>
										<td>${item.getGroup()}</td>
										<td>${item.getLikes()}</td>
										<td>${item.getNewest()}</td>
										<td>${item.getOldest()}</td>
									</tr>
								</c:forEach>

							</table>

						</div>
					</div>
					<div id="menu1" class="container tab-pane fade"
						style="background-color: bisque; border-radius: 10px;">
						<br>
						<form method="mt-3">
							<div class="container mb-3">
								<div class="row">
									<div class="col-sm-1">
										<p>Title</p>
									</div>

									<div class="col-sm-8">

										<c:set var="count" value="${count+1}" scope="request"></c:set>
										<select class="form-select" name="title"
											aria-label="Default select example">
											<p>Title</p>
											<c:forEach var="item" items="${title}">
												<option name="title" value="${item.title}">${item.title}</option>
											</c:forEach>
										</select>

									</div>
									<div class="col-sm-3">
										<button
											formaction="http://localhost:8080/ASSIGNTMENT_GD2/ReportServlet/select">Search</button>
									</div>
								</div>
							</div>


							<table class="table table-bordered table-success mt-3">
								<thead>
									<tr>
										<th>UserName</th>
										<th>FullName</th>
										<th>Email</th>
										<th>Favorite Date</th>
									</tr>
								</thead>
								<c:set var="count" value="${0}" scope="request"></c:set>
								<c:forEach var="item" items="${list}">
									<tr>
										<td>${item[0]}</td>
										<td>${item[1]}</td>
										<td>${item[2]}</td>
										<td>${item[3]}</td>
									</tr>
								</c:forEach>

							</table>
				

					</div>
					<div id="menu2" class="container tab-pane fade"
						style="background-color: bisque; border-radius: 10px;">
						<br>
						<div class="container mb-3">
							<div class="row">
								<div class="col-sm-2">
									<p>Title</p>
								</div>
								<div class="col-sm-7">
									<c:set var="count" value="${count+1}" scope="request"></c:set>
									<select class="form-select" aria-label="Default select example">
										<p>Title</p>
										<c:forEach var="item" items="${title}">

											<option name="titleVideo" value="${item.title}">${item.title}</option>
										</c:forEach>
									</select>
								</div>
									<div class="col-sm-3">
										<button
											formaction="http://localhost:8080/ASSIGNTMENT_GD2/ReportServlet/selectTitle">Search</button>
									</div>
							</div>
						</div>
						<table class="table ">
							<thead class="table-dark">
								<tr>
									<th>Sender Name</th>
									<th>Sender Mail</th>
									<th>Receiver Email</th>
									<th>Send Date</th>
								</tr>
							</thead>
							<c:forEach var="item" items="${listVideo}">
								<tr>
									<td>${item[0]}</td>
									<td>${item[1]}</td>
									<td>${item[2]}</td>
									<td>${item[3]}</td>
								</tr>
							</c:forEach>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
		</form>
</body>

</html>