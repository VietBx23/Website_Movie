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

		<div class="menu">
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
									<iframe width="1350" height="700"
										src="https://www.youtube.com/embed/Ytl_G_an5Fk"
										title="YouTube video player" frameborder="0"
										allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
										allowfullscreen></iframe>

								</div>

								<!-- class="card-img-top img-fluid rounded mx-auto d-block" alt="..."> -->
								<div class="card-body bg-dark">
									<h5 class="card-title" style="color: white;">Xạ Thủ - Phim
										Hong Kong Thuyết Minh Mới Nhất</h5>
									<p class="card-text" style="color: white;">Phim hành động
										chiếu rạp thuyết minh mới nhất năm 2021_Xạ thủ. sean là lính
										mới kiêu căng tại Stealth Riders... PHIM HÀI THVL - Nơi tập
										hợp những tiểu phẩm hài, phim hài, chương trình hài kịch hay
										nhất, mới nhất 2022 đã và đang được phát sóng trên Truyền hình
										Vĩnh Long. Không chỉ được thưởng thức các vở kịch, phim hài đủ
										các thể loại qua phần trình diễn của các diễn viên hài nổi
										tiếng hiện nay như: Hoài Linh, Việt Hương, Trấn Thành, Trường
										Giang, Lê Dương Bảo Lâm,cố NS Chí Tài, Tuấn dũng, Thu Trang,
										Tiến Luật Đến với PHIM HÀI THVL khán giả còn có cơ hội được
										cười bể bụng với các cây hài "mới nhú", các tiết mục độc đáo
										có một không hai.</p>
								</div>
								<div class="col-sm-12 " style="background-color: #111;">
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
					<div class="row">
						<h5 style="color: white">Video Đã Xem</h5>
						<div class="list-group ">
							<div class="row">
								<div class="col-md-6" style="background-color: #111;">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p2.webp" width="100%"
										style="background-color: #111;" alt="..." />
									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Tốc Độ Sát Thủ-Võ Thuật Kịch Tính
										Năm 2022</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p3.webp" class="img-fluid" alt="..." />

									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Ăn Mày Đặc Công-Ngô Kinh Thuyết
										Minh</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6" style="background-color: #111;">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p2.webp" width="100%"
										style="background-color: #111;" alt="..." />
									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Tốc Độ Sát Thủ-Võ Thuật Kịch Tính
										Năm 2022</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p3.webp" class="img-fluid" alt="..." />

									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Ăn Mày Đặc Công-Ngô Kinh Thuyết
										Minh</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6" style="background-color: #111;">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p2.webp" width="100%"
										style="background-color: #111;" alt="..." />
									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Tốc Độ Sát Thủ-Võ Thuật Kịch Tính
										Năm 2022</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p3.webp" class="img-fluid" alt="..." />

									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Ăn Mày Đặc Công-Ngô Kinh Thuyết
										Minh</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6" style="background-color: #111;">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p2.webp" width="100%"
										style="background-color: #111;" alt="..." />
									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Tốc Độ Sát Thủ-Võ Thuật Kịch Tính
										Năm 2022</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p3.webp" class="img-fluid" alt="..." />

									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Ăn Mày Đặc Công-Ngô Kinh Thuyết
										Minh</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6" style="background-color: #111;">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p2.webp" width="100%"
										style="background-color: #111;" alt="..." />
									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Tốc Độ Sát Thủ-Võ Thuật Kịch Tính
										Năm 2022</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p3.webp" class="img-fluid" alt="..." />

									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Ăn Mày Đặc Công-Ngô Kinh Thuyết
										Minh</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6" style="background-color: #111;">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p2.webp" width="100%"
										style="background-color: #111;" alt="..." />
									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Tốc Độ Sát Thủ-Võ Thuật Kịch Tính
										Năm 2022</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<a href="#" class="list-group-item list-group-item-action"
										aria-current="true"> <img
										src="/ASSIGNTMENT/images/p3.webp" class="img-fluid" alt="..." />

									</a>
								</div>
								<div class="col-md-6">
									<h6 style="color: white">Ăn Mày Đặc Công-Ngô Kinh Thuyết
										Minh</h6>
								</div>
							</div>
						</div>
						<div class="col-md-9" style="background-color: white;"></div>
					</div>

				</div>
			</div>
		</div>

	</div>
</body>

</html>