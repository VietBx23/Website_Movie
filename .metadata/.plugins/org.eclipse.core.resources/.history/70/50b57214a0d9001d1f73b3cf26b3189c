<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>ManagerVideo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- <link rel="stylesheet" href="/css/form.css"> -->
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
	margin-top: 8px;
}

.images {
	border: 1px solid black;
	border-radius: 2px;
	height: 300px;
	margin-top: 10px;
	margin-bottom: 30px;
}

.images_poster {
	height: 300px;
	width: 100%;
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
						data-bs-toggle="pill" href="#home">Video EDITION</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						data-bs-toggle="pill" href="#menu1">Video LIST</a></li>
				</ul>
			</div>
			<div class="card-body">
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
						<div class="container">
							<div class="row"
								style="background-color: bisque; border-radius: 10px;">
								<label>${message}</label> <label>
									<div class="card-body">
										<div class="row"
											style="background-color: bisque; border-radius: 10px;">
											<div class="col-sm-4">
												<form method="post">
													<div class=" card-body">
														<div class="images">
															<img src="/ASSIGNTMENT_GD2/image/${Video.poster}"
																name="poster" alt="" class="images_poster">
														</div>
														<div class="file" style="text-align: center;">
															<input type="file" name="poster">
														</div>
													</div>
											</div>
											<div class="col-sm-8">


												<span>YOUTUBE ID?</span>
								</label>
								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingInput"
										placeholder="Youtube id" value="${Video.id}" name="id">

								</div>
								<label for=""> <span>Video TITLE?</span></label>
								<div class="form-floating mb-3">
									<input type="text" class="form-control" value="${Video.title}"
										name="title" id="floatingPassword" placeholder="Title">
								</div>
								<label for=""> <span>Video COUNT?</span></label>
								<div class="form-floating mb-3">
									<input type="number" class="form-control" id="floatingPassword"
										placeholder="Views count" value="${Video.views}" name="views">
								</div>
								<label for=""> <span>Link?</span></label>
								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingPassword"
										placeholder="Views count" value="${Video.link}" name="link">
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="active"
										value="true" ${Video.active?'checked':''}> <label
										class="form-check-label" for="admin1"> Active </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="active"
										required value="false" ${!Video.active?'checked':''}>
									<label class="form-check-label" for="admin2"> In Active
									</label>
								</div>


							</div>
							<div class="col-sm-12 border-dark">
							
								<label for=""> <span>DESCRIPTION</span></label>
								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingPassword"
										placeholder="Views count" value="${Video.description}"
										name="description">
								</div>
							</div>
						</div>
						<div class="card-footer">
							<div class="fa-arrow-right-to-city" style="text-align: right">
								<button class="btn btn-dark btn-login text-uppercase fw-bold"
									formaction="http://localhost:8080/ASSIGNTMENT_GD2/VideoServlet/Create">Create</button>
								<button
									class="btn btn btn-success btn-login text-uppercase fw-bold"
									formaction="http://localhost:8080/ASSIGNTMENT_GD2/VideoServlet/Update">Update</button>
								<button class="btn  btn-danger btn-login text-uppercase fw-bold"
									formaction="http://localhost:8080/ASSIGNTMENT_GD2/VideoServlett/Delete">Delete</button>
								<button
									class="btn btn-secondary btn-login text-uppercase fw-bold"
									formaction="http://localhost:8080/ASSIGNTMENT_GD2/VideoServlet/Reset">Reset</button>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div id="menu1" class="container tab-pane fade"
			 border-radius: 10px;">
			<form action="" method="mt-3">

				<div class="row">
					<div class="col mt-3">
						
						<table class="table ">
							<thead class="table-dark">
								<tr>
									<td>ID</td>
									<td>Title</td>
									<td>Views</td>
									<td>Description</td>
									<td>Link</td>
									<td>Active</td>
								</tr>
							</thead>
							<c:forEach var="item" items="${video}">
								<tr class="table-bordered table-success">
									<td>${item.id}</td>
									<td>${item.title}</td>
									<td>${item.views}</td>
									<td>${item.description}</td>
									<td>${item.link}</td>
									<td>${item.active?'Active':'In Active' }</td>
									<td><a
										href="/ASSIGNTMENT_GD2/VideoServlet/Edit?id=${item.id}">Edit</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</form>
		</div>
		</form>
	</div>
	
	</div>


</body>

</html>