<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
<title>Keyword Search Successful</title>
</head>
<body>
	<!-- NAVIGATION -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="home.do">GardenBox App</a>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="home.do">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">GardenBox
						Tool</a></li>
			</ul>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	<!-- MAIN BODY -->
	<div class="container">
		<div class="row justify-content-sm-center">
			<div class="col-12 d-flex justify-content-center py-2">
				<h2>See below for search results with your keyword</h2>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row-sm-10 justify-content-md-center">
			<c:forEach var="x" items="${plant}">
				<div class="row">
					<div class="col-sm-12">
						<h3>${x.name}</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-2">
						<p>This is an image</p>
					</div>
					<div class="col-sm-10">
						<p>${x.description}</p>
					</div>
				</div>
				<div class="row">
					<div class="d-flex justify-content-center p1">
						<div class="form-group pl-1">
							<form action="getPlant.do" method="GET" class="form">
								<input type="hidden" name="pid" class="form-control"
									value="${x.id}" /> <input type="submit" value="View Details"
									class="form-control" />
							</form>
						</div>
					</div>
				</div>
				<br>
			</c:forEach>
		</div>
	</div>
	<br>

	<!-- BOOTSTRAP JS FILES -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>