<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/mystyle.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>ABC Job Portal</title>
</head>
<body class="m-0 border-0 overflow-hidden" style="background: #b3b3ff;">
<%@ include  file="header.jsp"%>
    
    <div class="container" style="height: 65vh" role="user">
        <div class="row" style="margin-top: 100px;">
            <div class="col-sm-6">
                <div class="" role="user">
                    <div class="card-body">
                        <h2 class="car-subtitle" style="color: #F59A23;">Looking For A Job ></h2>
                        <h1 class="card-title" style="color: #8400FF;left: 20px; position: relative;">Come On</h1>
                        <p class="card-text" style="color: #8400FF;left: 20px; position: relative;font-size: 20px;">Register with us and explore the world of jobs that suits you the BEST.</p>
                        <div class="mt-5">
                            <a href="<%=request.getContextPath()%>/register" class="btn btn-warning" style="color: white; font-weight: bold;">Register Now</a>
                        	<a href="<%=request.getContextPath()%>/login" class="btn btn-warning" style="color: white; font-weight: bold;">Log In</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <img src="image/home_bg.png" style="position: absolute; right: 50px;top: 100px;z-index: -2" width="500px" height="auto" alt="decoration">


<%@ include  file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
