<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">

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
                    <div class="container">
					    <main class="form-signin w-100 m-auto p-5 border" style="max-width: 450px;">
					       <form:form method="post" id="regForm" modelAttribute="user" action="registerProcess">
					       
					          <h2>Please Enter Your Details</h2>
					        
					
					        <div class="mb-3 text-start">
					            <label for="inputfname" path="firstName" class="form-label">First Name</label>
					            <input type="text" class="form-control" onkeyup="textValidation(this)" required path="firstName" name="firstName" id="firstname" placeholder="First Name">
					            <div class="valid-feedback">
					                Looks good!
					            </div>
					            <div id="validationServer03Feedback" class="invalid-feedback">
					                Please Type Atleast 2 Character.
					            </div>
					        </div>
					        <div class="mb-3 text-start">
					            <label for="inputlname" path="lastName" class="form-label">Last Name</label>
					            <input type="text" class="form-control" onkeyup="textValidation(this)" required path="lastName" name="lastName" id="lastName" placeholder="Last Name">
					            <div class="valid-feedback">
					                Looks good!
					            </div>
					            <div id="validationServer03Feedback" class="invalid-feedback">
					                Please Type Atleast 2 Character.
					            </div>
					        </div>
					        <div class="mb-3 text-start">
					            <label class="form-label" for="inputEmail" path="email">Email address</label>
					            <input type="email" class="form-control" onkeyup="emailValidation(this)" required path="email" name="email" id="email"
					                placeholder="name@example.com">
					            <div class="valid-feedback">
					                Looks good!
					            </div>
					            <div id="validationServer03Feedback" class="invalid-feedback">
					                Your input not using email format!.
					            </div>
					        </div>
					        <div class="mb-3 text-start">
					            <label for="inputPassword2" class="form-label">Password</label>
					            <input type="password" class="form-control" onkeyup="textValidation(this)" required path="pass" name="pass" id="password">
					            <div class="valid-feedback">
					                Looks good!
					            </div>
					            <div id="validationServer03Feedback" class="invalid-feedback">
					                Please Type Atleast 2 Character.
					            </div>
					        </div>
					        <div class="mb-3 text-start">
					            <label for="confirmpassword" class="form-label">Confirm Password*</label>
					            <input type="password" class="form-control" onkeyup="passwordValidation(this)" required path="confirmpassword" name="confirmpassword" id="confirmpassword"
					                name="confirmpassword">
					            <div class="valid-feedback">
					                Looks good!
					            </div>
					            <div id="validationServer03Feedback" class="invalid-feedback">
					                Your Password doesn't Match.
					            </div>
					        </div>
					
					        <button type="submit" id="register" name="register" class="btn btn-warning" style="color: white; font-weight: bold;--bs-btn-bg:#f6a53c;">REGISTER</button><br>
					        <a href="#" class="fa fa-google"></a>
							<a href="#" class="fa fa-facebook"></a>
							<a href="#" class="fa fa-yahoo"></a>
					    </form:form>
					
					    <a href="<%=request.getContextPath()%>/login" class="text-decoration-none">Have an account?</a>
					
					      </main>
						</div>
					</div>
                </div>
            </div>
        </div>
    </div>
      <%@ include file="footer.jsp" %>




    <script type="text/javascript" src="../js/validation.js">
    
    </script>
    
</body>
</html>