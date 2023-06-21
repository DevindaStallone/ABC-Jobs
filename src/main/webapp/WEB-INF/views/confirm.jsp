<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<title>ABC Job Portal</title>
</head>
<body style="background: #e6eeff;">
<%@ include file="header.jsp" %>
    <div class="container d-flex justify-content-center align-items-center" style="height: 90vh;">
    <div class="card shadow-lg w-50 d-flex justify-content-center align-items-center" style="background-color: #ccdcff">
        <img src="image/ok.png" width="150px" height="150px" style="transform: translateY(-50%); position: absolute;" alt="happy people">
        <div class="card-body text-center" style="margin-top: 170px;">
          <h5 class="card-title" style="color: orange; font-weight: bold;">Successful Registered </h5>
          <p class="card-text" style="color: #b92be0;">Thank you ${firstName} ${lastName} for registering with our community portal we are committed to suggest you with the best jobs that suits you</p>
          <a href="${pageContext.request.contextPath}/login" class="btn btn-warning" style="color: white; font-weight: bold;--bs-btn-bg:#f6a53c;">Sign In</a>
        </div>
      </div>
   </div>
<%@ include file="footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>