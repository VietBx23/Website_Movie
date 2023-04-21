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
<title>List Video</title>
</head>
<body>
	<div class="container">
		<table border="1" width="98%">
			<tr>
				<th>ID</th>
				<th>Favorite Count</th>
				<th>Newest Date</th>
				<th>Oldest Date</th>
			</tr>
			<c:forEach var="item" items="${reports}">
				<tr>
					<td>${item.getGroup()}</td>
					<td>${item.getLikes()}</td>
					<td>${item.getNewest()}</td>
					<td>${item.getOldest()}</td>
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