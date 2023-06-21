
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<title>Profile</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background: #e6eeff;">
<%@ include file="header.jsp" %>
   <div style="background-image: url(image/banner.jpg); background-position: center; background-size: cover; width: 80%;height: 300px;margin-left: 130px; border-radius: 50px;z-index:-1;position: absolute;top: 80px;">
    </div>
    <div class="container mt-5" style="position: relative; top: 180px;height: 500px; margin-bottom: 160px" >
        <div class="row d-flex align-items-center">
            <div class="col-sm-2">
                <img src="image/profile2.png" width="200px" height="200px" alt="profile-pic" style="margin-left: 480px;">
            </div>
            <div class="col " style="top: 130px;position: relative;left: 160px">
                <h3 style="font-size: large"><%= request.getAttribute("othername") %></h3>
                <h4 style="position: relative;margin-left: 80px;"><%= request.getAttribute("othername") %>@gmail.com</h4>
            </div>
            <div class="col text-end">
                <a href="profile" class="btn btn-danger" style="top: 115px;position: relative;" onclick="myFunction()" >Follow +</a>
            </div>
        </div>
         <div class="row mt-5" style="position: relative;top: 30px;">
         <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">About</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">Software Developer</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Gender</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">Male</h5>
                    </div>
                </div>
            </div>
            
        </div>

        <div class="row mt-2"  style="position: relative;top: 30px;margin-bottom: 50px">
            <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Mobile Number</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">077-7777777</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Country</div>
                    <div class="card-body text-secondary">
                      <h5 class="card-title">Japan</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br><br>
<%@ include file="footer.jsp" %>
<script>
function myFunction() {
  alert("User Followed Successfully");
}
</script>
</body>
</html>