<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<title>ABC Job Portal</title>
<script src="js/validation.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
    .fa {
	  padding: 10px 10px;
	  font-size: 20px;
	  width: 40px;
	  text-align: center;
	  text-decoration: none;
	  margin: 5px 2px;
	  border-radius: 50%;
	}
	.fa:hover {
	    opacity: 0.7;
	}
	
	.fa-facebook {
	  background: #3B5998;
	  color: white;
	}
	
	.fa-google {
	  background: #dd4b39;
	  color: white;
	}
	
	.fa-yahoo {
	  background: #430297;
	  color: white;
	}
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container-fluid d-flex justify-content-center align-items-center" style="height: 110vh;">
    <img alt="" src="image/background.jpg" style="z-index: -1;position: absolute;border-radius:0; width: 100%; margin:0;">
        <div class="card mb-3 shadow-lg rounded" style="max-width: 1440px; position: relative; ">
            <div class="row g-0">
            	
                <div class="col-md-12">

                    <div class="card-body text-center d-flex justify-content-center align-items-center flex-column" style="background-color: rgb(153, 187, 255);">
                    <main class="form-signin w-100 m-auto p-5 border" style="max-width: 350px;">
				        <form:form method="post" id="loginForm" modelAttribute="loginDto" action="check">
				           		<h1>Sign In</h1>
							    <p>Please enter your Email and password to access the community portal</p>
							
							    <div class="mb-3 text-start">
							        <form:label  class="form-label" for="inputEmail" path="emailId">Email address</form:label>
							
							        <form:input type="email" class="form-control"   path="emailId" name="email" id="email" placeholder="name@example.com"/>
							    <div class="valid-feedback">
							        Looks good!
							    </div>
							    <div id="validationServer03Feedback" class="invalid-feedback">
							        Your input not using email format!.
							    </div>
							    </div>
							    
							    <div class="mb-3 text-start">
							        <form:label  class="form-label" for="inputPassword" path="password">Password</form:label>
							        <form:input type="password" class="form-control"   path="password" name="pass" id="pass"/>
							    <div class="valid-feedback">
							        Looks good!
							    </div>
							    <div id="validationServer03Feedback" class="invalid-feedback">
							        Please Type Atleast 2 Character.
							    </div>
							    </div>
							
							    <form:button type="submit" class="btn btn-warning" style="color: white; font-weight: bold;--bs-btn-bg:#f6a53c;" id="login" name="login">LOGIN</form:button>
						</form:form>
						<a href="<%=request.getContextPath()%>/register" class="text-decoration-none">Don't have account?</a><br>
						<a href="<%=request.getContextPath()%>/forgot-password" class="text-decoration-none">Forget Password</a>
				      </main>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>
    <script type="text/javascript" src="resources/js/validation.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>