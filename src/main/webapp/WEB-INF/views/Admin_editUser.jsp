<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/mystyle.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
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
				<th><img alt="logo" src="../image/Job.jpg" width="40" height="40"></th>
				<th><h2>ABC Jobs</h2></th>
				
			</tr>
		</table>
		
	</div>



<div class="container">
    <div class="text-center" >
        <h2 style="color: purple;font-size: 30px">Update Profile</h2>
      
        
    </div>
    <form:form method="post" class="border p-5 my-3" id="editProfile" action="../adminDashboard" modelAttribute="user">
    <%-- <c:forEach var="user" items="${allStore}"> --%>
    	<div class="mb-3">
			<input class="form-control" value="${user.userID}" name="userID" id="userID" hidden="hidden"/>
		</div>
        <div class=" mb-3">
            <label for="exampleFormControlInput1" class="form-label" style="font-size: 20px">Name</label><br>
            <div class="d-flex">
               <input type="text" class="form-control" value="${user.firstName}" name="firstName" id="firstName" placeholder="First name" />&nbsp; &nbsp; 
                <input type="text" class="form-control" name="lastName" id="lastName" value="${user.lastName}" placeholder="Last name"/>
            </div>
        </div>
       
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label" style="font-size: 20px">About</label><br>
            <input type="text" class="form-control" name="address" id="address" value="${user.about}" placeholder="City, Country"/>
        </div>
    
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label" style="font-size: 20px">Gender</label><br>
             <input type="text" class="form-control" name="workexp" id="workexp" value="${user.gender}" />
        </div>
        
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label" style="font-size: 20px">Country</label><br>
             <input type="text" class="form-control" name="education" id="education" value="${user.country}" />
        </div>
      
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label" style="font-size: 20px">Mobile Number</label><br>
             <input type="text" class="form-control" name="cerificate" id="cerificate" value="${user.mobilenumber}" />
        </div>
       
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <button type="submit" class="btn btn-warning" style="color: white;" id="update" name="update">Update</button>
          </div>
    <%-- </c:forEach> --%>
    </form:form>
</div>
<div class="navigation2">
		<table>
			<tr>
				<th><img alt="logo" src="../image/Job.jpg" width="40" height="40"></th>
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