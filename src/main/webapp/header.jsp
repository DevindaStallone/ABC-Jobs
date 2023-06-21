
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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


</style>
</head>
<body>
	<div class="navigation">
		<table>
			<tr>
				<th><img alt="logo" src="image/Job.jpg" width="40" height="40"></th>
				<th><h2>ABC Jobs</h2></th>
				
				<th><form class="d-flex ms-auto" action="search-result" method="get"  role="search" style="position: relative; left: 800px">
                    <input class="form-control me-2" type="text" name="keyword"  placeholder="Search" aria-label="Search" style="height: 35px; margin-top: 5px;">
                    <a href="<%= request.getContextPath() %>/search"><button class="btn btn-warning" type="submit" ><i class="fa fa-search" style="color: white;"></i></button></a>
                </form></th>
			</tr>
		</table>
		
	</div>
</body>
</html>