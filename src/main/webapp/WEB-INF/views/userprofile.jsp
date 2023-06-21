<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>ABC Job Portal</title>
</head>

<body style="background: #e6eeff; height: 850px">
<%@ include file="header.jsp" %>

   <div style="background-image: url(image/banner.jpg); background-position: center; background-size: cover; width: 80%;height: 300px;margin-left: 130px; border-radius: 50px;z-index:-1;position: absolute;top: 80px;">
    </div>
    <%--<c:forEach var="user" items="${user}"> --%>
    <div class="container mt-5" style="position: relative; top: 180px;height: 500px; margin-bottom: 160px" >
        <div class="row d-flex align-items-center">
            <div class="col-sm-2">
                <img src="image/profile.jpeg" width="200px" height="200px" alt="profile-pic" style="margin-left: 480px;">
            </div>
            <div class="col " style="top: 130px;position: relative;left: 160px">
                <h3 style="font-size: large">${user.firstName} ${user.lastName}</h3>
                <h4 style="position: relative;margin-left: 80px;">${user.email}</h4>
            </div>
            <div class="col text-end">
            <a href="updateprofile/${user.userID}" class="btn btn-danger" style="top: 115px;position: relative;left: 20px">Edit Profile</a>
           	 	<a href="${pageContext.request.contextPath}/logout" class="btn btn-danger"  style="top: 115px; position: relative;">Logout</a>
                
            </div>
        </div>
		
        <div class="row mt-5" style="position: relative;top: 30px;">
        <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">About</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user.about}</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Gender</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user.gender}</h5>
                    </div>
                </div>
            </div>
            
        </div>

        <div class="row mt-2"  style="position: relative;top: 30px;margin-bottom: 50px">
        <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Country</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user.country}</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Mobile Number</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">${user.mobilenumber}</h5>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <%--</c:forEach> --%>
    <br><br><br>
    
<%@ include file="footer.jsp" %>


 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
 

</body>
</html>