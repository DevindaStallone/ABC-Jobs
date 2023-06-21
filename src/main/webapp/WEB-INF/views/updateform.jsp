<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/mystyle.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<title>ABC Job Portal</title>
</head>
<body style="background: #e6eeff; height: 850px">
<%@ include file="header2.jsp" %>
<div style="background-image: url(../image/banner.jpg); background-position: center; background-size: cover; width: 100%;height: 300px;">
    </div>
    <div class="container mt-5" style="height: 65vh;">
    <form method="post" class="border p-5 my-3" id="editProfile" action="../update">
    <%-- <c:forEach var="user" items="${listuser}"> --%>
    	<div class="mb-3">
			<input class="form-control" value="${user.userID}" name="userID" id="userID" hidden="hidden"/>
		</div>
            <div class="row">
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" value="${user.firstName}" name="firstName" id="firstName">
                        <label for="firstname">First Name</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="lastName" id="lastName" value="${user.lastName}" placeholder="Last name">
                        <label for="lastname">Last Name</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" name="email" value="${user.email} " id="email" placeholder="name@example.com">
                        <label for="exampleFormControlInput1">Email</label>
                    </div>
                </div>
               <div class="col">
                    <select class="form-select form-select-lg mb-3" name="country" aria-label=".form-select-lg example">
                        <option selected>Country</option>
                        <option value="Japan">Japan </option>
                        <option value="Srilanka">Srilanka</option>
                        <option value="Malaysia">Malaysia</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="mobilenumber" id="mobilenumber" value="${user.mobilenumber}">
                        <label for="exampleFormControlInput1">Mobile Number</label>
                    </div>
                </div>
                <div class="col">
                    <select class="form-select form-select-lg mb-3" name="gender" aria-label=".form-select-lg example">
                        <option selected>Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">About</label>
                        <textarea class="form-control"  id="about" name="about" rows="3" value="${user.about}"></textarea>
                    </div>
                </div>
            </div>

            <button type="reset" class="btn btn-danger px-5 my-5">Cancel</button>
            <button type="submit" class="btn btn-success px-5" id="update" name="update">Save</button>
             <%-- </c:forEach> --%>
    </form>
</div>
<br>
<br>
<br>
<br>
<%@ include file="footer2.jsp" %>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>