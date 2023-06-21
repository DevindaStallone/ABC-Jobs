<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>change password</title>
    <script src="js/validation.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
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
                     <form:form action="reset"  style="padding: 0 40px;width: 500px">
				        <img alt="" src="image/password.png" width="150px" height="150px">
				        <h2 style="color: orange;">Change Password</h2>
				
				        <div class="mb-3 text-start">
				            <label for="password" class="form-label" style="font-weight: bold">New Password</label>
				            <input type="password" class="form-control" onkeyup="textValidation(this)" required id="password"
				                name="password">
				            <div class="valid-feedback">
				                Looks good!
				            </div>
				            <div id="validationServer03Feedback" class="invalid-feedback">
				                Please Type Atleast 2 Character.
				            </div>
				        </div>
				        <div class="mb-3 text-start">
				            <label for="confirmpassword" class="form-label" style="font-weight: bold">Confirm Password</label>
				            <input type="password" class="form-control" onkeyup="passwordValidation(this)" required id="confirmpassword"
				                name="confirmpassword">
				            <div class="valid-feedback">
				                Looks good!
				            </div>
				            <div id="validationServer03Feedback" class="invalid-feedback">
				                Your Password doesn't Match.
				            </div>
				        </div>
				
				        <button type="submit" class="btn btn-warning" style="color: white; font-weight: bold;">CHANGE</button>
				    </form:form>
				
				    <a href="<%=request.getContextPath()%>/backtologin" class="text-decoration-none">Back to Sign in</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <%@ include file="footer.jsp" %>
  </body>
</html>


    
   