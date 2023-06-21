<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>email verification</title>
    <script src="js/validation.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
 
  </head>

  <body>
      <%@ include file="header.jsp" %>

    <div class="container-fluid d-flex justify-content-center align-items-center" style="height: 110vh;">
    <img alt="" src="image/background.jpg" style="z-index: -1;position: absolute;border-radius:0; width: 100%; margin:0;">
        <div class="card mb-3 shadow-lg rounded" style="max-width: 1440px; position: relative; ">
            <div class="row g-0">
            	
                <div class="col-md-12">

                    <div class="card-body text-center d-flex justify-content-center align-items-center flex-column" style="background-color: rgb(153, 187, 255);">
                    	<div class="container">
						    
						    <form:form action="change_password" class="text-center" style="padding: 0 100px">
						        
						    	<img alt="" src="image/email_verify.jpg" width="150px" height="150px">
						        <h1 style="color: orange;">Email Verification</h1>
						        <p>Please click on the verification link sent to your email</p>
						
						        <div class="mb-3 text-start">
						            <label for="inputEmail" path="emailId" class="form-label">Email address</label>
						            <input type="email" class="form-control" onkeyup="emailValidation(this)" required  path="emailId" name="email" id="email"
						                placeholder="name@example.com">
						            <div class="valid-feedback">
						                Looks good!
						            </div>
						            <div id="validationServer03Feedback" class="invalid-feedback">
						                Your input not using email format!.
						            </div>
						        </div>
						
						        <button type="submit" class="btn btn-warning" style="color: white; font-weight: bold;--bs-btn-bg:#f6a53c;" onclick="myFunction()">Verify</button>
						    </form:form>
						    <a href="<%=request.getContextPath()%>/backtologin"  class="text-decoration-none">Back to Sign In</a>
						    
						</div>

                    </div>
                </div>
            </div>
        </div>
    </div>
      <%@ include file="footer.jsp" %>
  </body>
</html>

