<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>Search Result</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background: #b3b3ff;">
<%@ include file="header.jsp" %>
<div class="container" style="height: 90vh">
        <h2 class="my-3" style="position: relative; top:40px">Searched Results For : <form method="get" action="search-result">
			<input type="text" name="keyword"  style="height: 35px;margin-top: 5px;"/> &nbsp; <input type="submit"  class="btn btn-warning" style="color: white;height: 35px;"
				value="Search" />
		</form>
</h2>
        <div class="row" style="position: relative; top:40px">
            <div class="col-sm-8">
                <a href="other-profile?othername=<%=request.getAttribute("search")%>" class="text-decoration-none text-dark">
                <c:forEach items="${allStore}" var="user">
                <div class="card my-3 ">
                    <div class="row g-0">
                        <div class="col-md-4 d-flex justify-content-center align-items-center">
                            <img src="image/profile.jpeg" width="150px" height="150px"
                                class="rounded-circle" alt="profile picture">
                        </div>
                        
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title ">${user.firstName}</h5>
                                <p class="card-text">${user.about}</p>
                                <button class="btn btn-warning" style="color: white; font-weight: bold;position: relative; float: right;">See Profile</button>
                            </div>
                            
                        </div>
                    </div>
                </div>
                </c:forEach>
               <!--   <div class="card my-3 ">
                    <div class="row g-0">
                        <div class="col-md-4 d-flex justify-content-center align-items-center">
                            <img src="image/profile2.png" width="150px" height="150px"
                                class="rounded-circle" alt="profile picture">
                        </div>
                        
                        
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title "><%= request.getAttribute("search") %></h5>
                                <p class="card-text">I am the CEO of JavaProducts company</p>
                                <button class="btn btn-warning" style="color: white; font-weight: bold;position: relative; float: right;">See Profile</button>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="card my-3 ">
                    <div class="row g-0">
                        <div class="col-md-4 d-flex justify-content-center align-items-center">
                            <img src="image/profile3.webp" width="150px" height="150px"
                                class="rounded-circle" alt="profile picture">
                        </div>
                        
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title "><%= request.getAttribute("search") %></h5>
                                <p class="card-text">Founder of Apple</p>
                                <button class="btn btn-warning" style="color: white; font-weight: bold;position: relative; float: right;">See Profile</button>
                            </div>
                            
                        </div>
                    </div>
                </div>-->
                </a>
                <div align="center" style="margin-top: 15px;">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>User ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>E-mail</th>
						<th>About</th>
						<th>Gender</th>
						<th>Country</th>
						<th>Mobile Number</th>
						
						<th>Action</th>
					</tr>
				</thead>
				<c:forEach items="${allStore}" var="user">
					<tbody>
						<tr>
							<td>${user.userID}</td>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td>${user.about}</td>
							<td>${user.gender}</td>
							<td>${user.country}</td>
							<th>${user.mobilenumber}</th>
							<td><a href="adminupdateprofile/${user.userID}" style="color: green;text-decoration: none;font-weight: bold;">Edit</a>
								&nbsp;&nbsp;&nbsp; <a href="delete?id=${user.userID}" style="color: red;text-decoration: none;font-weight: bold;">Delete</a>
							</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
            </div>
        </div>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html>