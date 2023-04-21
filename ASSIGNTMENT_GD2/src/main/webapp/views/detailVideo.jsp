
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
<title>FavoriteVideo</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
</head>

<body>
	<div class="container-fluid col-sm-12">

		<div class="menu mb-4">
			<jsp:include page="menu.jsp"></jsp:include>
		</div>
		<div class="container-fluid col-sm-12">
			<div class="row">
				<div class="col-md-9">
					<div class="row">
						<div class="col-sm-12 col-md-12 col-12">
							<div class="card border-dark"
								style="background-color: #111; margin-left: 20px">
								<div style="text-align: center;">
									<iframe width="1350" height="700" src="${video.link}"
										title="YouTube video player" frameborder="0"
										allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
										allowfullscreen></iframe>

								</div>
							
								<!-- class="card-img-top img-fluid rounded mx-auto d-block" alt="..."> -->
								<div class="card-body bg-dark">
									<h5 class="card-title" style="color: white;">${video.title}</h5>
									<p class="card-text" style="color: white;">${video.description }</p>
								</div>
								<div class="col-sm-12 "
									style="background-color: #111; text-align: right;">
									<button type="button"
										class="btn mr-20 btn btn-primary btn-outline-light">
										Like</button>
									<button type="button" class="btn btn-primary btn-outline-light">
										Share</button>
								</div>
								<div class="fb-comments"
									data-href="http://127.0.0.1:5500/demo2.html" data-width=""
									data-numposts="10"></div>
							</div>
						</div>
					</div>


				</div>
				<div class="col-md-3">
					<c:forEach var="video" items="${videos}">
						<div class="row">
							<h5 style="color: white">Video Đã Xem</h5>
							<div class="list-group ">

								<div class="row">
									<div class="col-md-6" style="background-color: #111;">
										<a href="#" class="list-group-item list-group-item-action"
											aria-current="true"> <img
											src="/ASSIGNTMENT_GD2/image/${video.poster}" width="100%"
											style="background-color: #111;" alt="..." />
										</a>
									</div>
									<div class="col-md-6">
										<h6 style="color: white">${video.title}</h6>

									</div>
								</div>
							</div>


						</div>
					</c:forEach>
				</div>
			</div>
		</div>

	</div>
</body>

</html>