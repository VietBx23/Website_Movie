<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Favorite or Not Favorite Video</title>
</head>
<body>
	<div class="container">
		<form action="/LAP_6/favoritevideo" method="post">
			<input type="radio" name="favorite-video" value="true" id="favorite"><label
				for="favorite">Favorite</label> <input type="radio"
				name="favorite-video" value="false" id="favorite1"><label
				for="favorite1">Not Favorite</label>
			<button>Search</button>
		</form>
		<br>
		<table border="1" width="98%">
			<tr>
				<th>Id</th>
				<th>Title</th>
				<th>Views</th>
				<th>Active</th>
			</tr>
			<c:forEach var="item" items="${videos}">
				<tr>
					<td>${item.getId()}</td>
					<td>${item.getTitle()}</td>
					<td>${item.getViews()}</td>
					<td>${item.getActive()}</td>
				</tr>
			</c:forEach>
		</table>
		<div
			style="text-align: center; margin-right: 20px; margin-bottom: 20px;">
			<button>
				<a href="http://localhost:8080/LAP_6/"> Come back home</a>
			</button>
		</div>
	</div>

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
ul>li {
	list-style: none;
	font-family: Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif;
}

table {
	width: 98%;
}

table, td, th {
	border: 1px solid black;
}

form>input {
	width: 250px;
	height: 23px;
}

a {
	text-decoration: none;
	color: black;
}

.container {
	background-color: whitesmoke;
	margin-top: 50px;
	border: 2px solid #008000;
	border-radius: 10px;
	box-shadow: 10px 10px 10px 5px #C0C0C0;
}

form {
	margin-top: 30px;
	margin-left: 15px;
}

table {
	margin-left: 15px;
	margin-bottom: 15px;
	border: 1px solid black;
	font-family: Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif;
	text-align: center;
}

button {
	background-color: #C0C0C0;
	border: 1px solid #C0C0C0;
	border-radius: 3px;
	font-size: 15px;
}

button:hover {
	background-color: #FFA500;
	border: 1px solid #FFA500;
	border-radius: 3px;
}
</style>
</body>
</html>