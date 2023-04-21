<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <title>Trang web của tôi</title>
    <style>
        body {
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
            height: 100vh;
        }

        @keyframes gradient {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }
        .container{
            margin-top: 50px;
        }
        .card{
        
            border-radius: 50px;
        }
        input{
            border-radius: 5px;
        }
        .form-control{
            border-radius: 10px;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="card mt-5">
            <div class="card-body mt-3">
                <label>${message}</label>
                <form method="mt-3">
                    Username:
                    <input value="${user.id}" name="id" class="form-control"><br>
                    Password:
                    <input value="${user.password}" name="password" class="form-control"><br>
                    Fullname:
                    <input value="${user.fullname}" name="fullname" class="form-control"><br>
                    Email:
                    <input value="${user.email}" name="email" class="form-control"><br>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="admin" value="true" ${user.admin?'checked':''
                            }>
                        <label class="form-check-label" for="admin1">
                            Admin
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="admin" required value="false"
                            ${!user.admin?'checked':''}>
                        <label class="form-check-label" for="admin2">
                            User
                        </label>
                    </div>
                    <br>
                    <button class="btn btn-info" formaction="/ASSIGNTMENT_GD2/UserServlet/Create">Create</button>
                    <button class="btn btn-info" formaction="/ASSIGNTMENT_GD2/UserServlet/Update">Update</button>
                    <button class="btn btn-info" formaction="/ASSIGNTMENT_GD2/UserServlet/Delete">Delete</button>
                    <button class="btn btn-link" formaction="/ASSIGNTMENT_GD2/UserServlet/Reset">Reset</button>

                    <hr>
                    <hr>
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Username</th>
                                <th scope="col">Password</th>
                                <th scope="col">Fullname</th>
                                <th scope="col">Email</th>
                                <th scope="col">Role</th>
                                <th scope="col">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="count" value="${0}" scope="request"></c:set>
                            <c:forEach var="item" items="${users}">
                                <c:set var="count" value="${count+1}" scope="request"></c:set>
                                <tr>

                                    <td>${item.id }</td>
                                    <td>${item.password }</td>
                                    <td>${item.fullname }</td>
                                    <td>${item.email }</td>
                                    <td>${item.admin?'Admin':'User' }</td>
                                    <td>
                                        <a href="/ASSIGNTMENT_GD2/UserServlet/Edit?id=${item.id}">Edit</a>
                                        <a href="/ASSIGNTMENT_GD2/UserServlet/Delete?id=${item.id}">Remove</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>

    </div>
</body>

</html>