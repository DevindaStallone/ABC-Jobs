<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bulk Email</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
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
   	margin-top: 120px
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

<div>
     
        
          <h1 style="color: purple;margin-top: 30px">Administration System</h1>
        
      
      </div>

    <div>
          <a href="adminDashboard"><button class="btn btn-warning" style="color: white;margin-top: 20px">Back to Dashboard</button></a>
      
    </div>

    <!-- Page content -->
    

      <div class="content-edit">
        <form:form action="sendBulkEmail" method="post" modelAttribute="bulkEmail" id="form">
          <div class="row justify-content-center">
            <div class="col-xxl-5 col-xl-6 col-lg-8 col-md-12">
              <div class="d-flex flex-column regis-wrapper">
                <div class="heading">
                  <h2 style="color: orange;">Send Bulk Email</h2>
                </div>

                <!-- hidden -->
                <div class="form-group">
                  <form:hidden path="id_bulk_email" class="form-control" />
                </div>

                <!-- Subject -->
                <div class="form-group">
                  <label for="subject">Subject</label>
                  <form:input path="subject" type="text"  class="form-control" />
                </div>

                <!-- Body -->
                <div class="form-group">
                  <label for="content">Content</label>
                  <form:textarea path="content" class="form-control" />
                </div>

                <button type="submit" class="btn btn-warning mt-4 " style="color: white;">Send Email</button>
              </div>
            </div>
          </div>
        </form:form>
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