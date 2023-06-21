<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<title>Insert title here</title>
<style type="text/css">
.navigation {
    
    width: 100%;
    top: 0;
    background: white;
    margin: 0;
	height: 50px;   
}
img {
	border-radius: 50%;
	padding: 10px;
	margin-left: 5px;
}

h2 {
	display: block;
}
body {
margin: 0;
}
.navigation2 {
    width: 100%;
    background: white;
    margin: 0;
   	padding-bottom: 5px;
   	margin-top: 150px
}
img {
	border-radius: 50%;
	padding: 10px;
	margin-left: 5px;
}

h2 {

}


h3 {
	text-align: center;
	font-size: small;
}
span {
	margin-left: 750px;
	
}
a {
	padding-top: 5px;
	text-decoration: none;
	color: black;
	font-weight: lighter;
	margin: 0 10px;
}

</style>
</head>
<body>
	<div class="navigation">
		<table>
			<tr>
				<th><img alt="logo" src="image/Job.jpg" width="40" height="40"></th>
				<th><h2>ABC Jobs</h2></th>
				
			</tr>
		</table>
		
	</div>

	<div class="container">
		<h1 align="center" style="color: purple;margin-top: 25px;">Admin Dashboard</h1>

		<div align="right">
			<a href="send-bulk-email" class="text-decoration-none">
				<button class="btn btn-warning" style="color: white;font-weight: bold;">Send Bulk Email</button>
	
			</a>

		</div>

		<form method="get" action="search">
			<input type="text" name="keyword"  style="height: 35px;margin-top: 5px;"/> &nbsp; <input type="submit"  class="btn btn-warning" style="color: white;height: 35px;"
				value="Search" />
		</form>


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
	<div class="navigation2">
		<table>
			<tr>
				<th><img alt="logo" src="image/Job.jpg" width="40" height="40"></th>
				<th><h2>ABC Jobs</h2></th>
				<th><span><a href="#">About Us</a>
					<a href="#">Contact Us</a> 
					<a href="#">Sitemap</a></span></th>
			</tr>
		</table>
		<h3>ALl right reserved  |  &#169; ABC Jobs Copyright issued</h3>
	</div>

</body>
</html>