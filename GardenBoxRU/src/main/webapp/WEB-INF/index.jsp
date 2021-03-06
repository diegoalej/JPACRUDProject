<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Garden home page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">

</head>
<body>
	<!-- NAVIGATION -->
	<nav class="navbar navbar-expand-lg">
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
		<div class="container">
			<div class="row justify-content-sm-center">
				<div class="col-12 d-flex justify-content-center py-5">
					<h1>GardenBox</h1>
				</div>
			</div>
			<div class="row justify-content-sm-center">
				<div class="col-sm-12 justify-content-center pb-2">
					<p class="text-center">The GardenBox app is here to help you as a reference and
						planner for your current or next home garden project. To get started search for a
						particular item below or browse through our database to find out
						more about many common home gardening plants.</p>
				</div>
			</div>
			<div class="row justify-content-sm-center">
				<div class="col-sm-12 justify-content-center">
					<p class="text-center">Also, feel free to add new plants to improve our growing database.</p>
				</div>
				<div class="container">
					<div class="row pt-3">
						<div class="col-sm-6 d-flex justify-content-center pb-3">
							<button class="btn btn-primary" type="button"
								data-toggle="collapse" data-target="#collapsePlant"
								aria-expanded="false" aria-controls="collapsePlant">Find
								a Plant</button>
						</div>
						<div class="col-sm-6 d-flex justify-content-center pb-3">
							<button class="btn btn-primary" type="button"
								data-toggle="collapse" data-target="#collapsePlantAdd"
								aria-expanded="false" aria-controls="collapsePlantAdd">Add
								New Plant</button>
						</div>
					</div>
					<div class="collapse" id="collapsePlant">
						<div class="row justify-content-sm-center">
							<div class="col-sm-6">
								<div class="d-flex justify-content-center p1">
									<div class="form-group pl-1">
										<form action="getPlant.do" method="GET" class="form">
											Search by Id: <input type="text" name="pid"
												class="form-control" /> <input type="submit"
												value="Find Plant" class="btn btn-primary" />
										</form>
									</div>
								</div>
							</div>
							<br>
							<div class="col-sm-6">
								<div class="d-flex justify-content-center p1">
									<div class="form-group pl-1">
										<form action="keywordSearch.do" method="GET" class="form">
											Search by Keyword: <input type="text" name="keyword"
												class="form-control" /> <input type="submit"
												value="Find Plant" class="btn btn-primary" />
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="collapse col-sm-12" id="collapsePlantAdd">
						<div class="row ">
							<div class="col-sm-12">
								<form:form class="form-horizontal" action="addPlant.do"
									modelAttribute="plant">
									<div class="form-group">
										<label> Plant name </label> <input class="form-control"
											type="text" name="name" /> <br> <label> Plant
											description </label> <input class="form-control" type="text"
											name="description" /> <br> <label> Optimal sun
										</label> <input class="form-control" type="text" name="optimalSun" />
										<br> <label> Optimal soil </label> <input
											class="form-control" type="text" name="optimalSoil" /> <br>
										<label> Planting Considerations </label> <input
											class="form-control" type="text"
											name="plantingConsiderations" /> <br> <label>
											When to plant </label> <input class="form-control" type="text"
											name="whenToPlant" /> <br> <label> Growing from
											seed </label> <input class="form-control" type="text"
											name="growingFromSeed" /> <br> <label>
											Transplanting </label> <input class="form-control" type="text"
											name="transplanting" /> <br> <label> Spacing </label> <input
											class="form-control" type="text" name="spacing" /> <br>
										<label> Watering </label> <input class="form-control"
											type="text" name="watering" /> <br> <label>
											Feeding </label> <input class="form-control" type="text"
											name="feeding" /> <br> <label> Other care </label> <input
											class="form-control" type="text" name="otherCare" /> <br>
										<label> Diseases </label> <input class="form-control"
											type="text" name="diseases" /> <br> <label>
											Pests </label> <input class="form-control" type="text" name="pests" />
										<br> <label> Harvesting </label> <input
											class="form-control" type="text" name="harvesting" /> <br>
										<label> Storage/use </label> <input class="form-control"
											type="text" name="storageUse" /> <br> <input
											class="form-control" type="hidden" name="id" value="0" /> <input
											type="submit" value="Add New Plant" class="btn btn-primary"/>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container pt-2">
				<c:forEach var="x" items="${plants}">
					<div class="row">
						<div class="col-sm-12">
							<h3>${x.name}</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-2">
							<p><img src="images/tomatoes.jpg" alt="tomatoes picture" class="img-thumbnail"></p>
						</div>
						<div class="col-sm-10">
							<p>${x.description}</p>
						</div>
					</div>
					<div class="row">
						<div class="d-flex justify-content-center p1">
							<div class="form-group pl-1">
								<form action="getPlant.do" method="GET" class="form">
									<input type="hidden" name="pid" class="btn btn-primary"
										value="${x.id}" /> <input type="submit" value="View Details"
										class="btn btn-primary" />
								</form>
							</div>
						</div>
					</div>
					<br>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="footer font-small">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Copyright -->
					<div class="footer-copyright text-center py-3">© 2020
						Copyright: GardenBox App</div>
					<!-- Copyright -->
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer -->
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