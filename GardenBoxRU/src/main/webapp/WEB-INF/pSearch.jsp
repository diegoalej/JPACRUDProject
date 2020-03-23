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
<title>Search Successful</title>
</head>
<body>
	<!-- NAVIGATION -->
	<nav class="navbar navbar-expand-lg ">
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
					<h1>Plant details</h1>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2>${plant.name}</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<p>This is an image</p>
				</div>
				<div class="col-sm-10">
					<p>${plant.description}</p>
				</div>
			</div>
			<c:choose>
				<c:when test="${empty plant.optimalSun}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Optimal Sun</h4>
							<p>${plant.optimalSun}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.optimalSoil}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Optimal Soil</h4>
							<p>${plant.optimalSoil}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.plantingConsiderations}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Planting Considerations</h4>
							<p>${plant.plantingConsiderations}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.whenToPlant}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>When to Plant</h4>
							<p>${plant.whenToPlant}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.growingFromSeed}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Growing From Seed</h4>
							<p>${plant.growingFromSeed}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.transplanting}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Transplanting</h4>
							<p>${plant.transplanting}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.spacing}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Spacing</h4>
							<p>${plant.spacing}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.watering}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Watering</h4>
							<p>${plant.watering}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.feeding}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Feeding</h4>
							<p>${plant.feeding}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.otherCare}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Other Care</h4>
							<p>${plant.otherCare}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.diseases}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Diseases</h4>
							<p>${plant.diseases}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.pests}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Pests</h4>
							<p>${plant.pests}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.harvesting}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Harvesting</h4>
							<p>${plant.harvesting}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty plant.storageUse}">
				</c:when>
				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<h4>Storage/Use</h4>
							<p>${plant.storageUse}</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-3 d-flex justify-content-center pb-3">
						<form:form action="plantDelete.do" method="POST"
				modelAttribute="plant">
				<input type="hidden" value="${plant.id}" name="Delete" />
				<input class="btn btn-primary" type="submit" value="Delete Plant"
					name="Delete" />
			</form:form>
				</div>
				<div class="col-sm-3 d-flex justify-content-center pb-3">
					<button class="btn btn-primary mr-5" type="button"
						data-toggle="collapse" data-target="#collapsePlantUpdate"
						aria-expanded="false" aria-controls="collapsePlantUpdate">Update
						Plant</button>
				</div>
				<div class="col-sm-3 d-flex justify-content-center pb-3">
					<button class="btn btn-primary" type="button"
						data-toggle="collapse" data-target="#collapsePlant"
						aria-expanded="false" aria-controls="collapsePlant">Find
						another plant</button>
				</div>
				<div class="col-sm-3 d-flex justify-content-center pb-3">
					<button class="btn btn-primary" type="button"
						data-toggle="collapse" data-target="#collapsePlantAdd"
						aria-expanded="false" aria-controls="collapsePlantAdd">Add
						New Plant</button>
				</div>
			</div>
			<div class="collapse" id="collapsePlantUpdate">
				<div class="row">
					<div class="col-lg-12">
						<form:form class="form-horizontal" action="updatePlant.do"
							method="POST">
							<div class="form-group">
								<label> Plant name </label> <input class="form-control"
									type="text" name="name" value="${plant.name}" /> <br> <label>
									Plant description </label> <input class="form-control" type="text"
									name="description" value="${plant.description}" /> <br> <label>
									Optimal sun </label> <input class="form-control" type="text"
									name="optimalSun" value="${plant.optimalSun}" /> <br> <label>
									Optimal soil </label> <input class="form-control" type="text"
									name="optimalSoil" value="${plant.optimalSoil}" /> <br> <label>
									Planting Considerations </label> <input class="form-control"
									type="text" name="plantingConsiderations"
									value="${plant.plantingConsiderations}" /> <br> <label>
									When to plant </label> <input class="form-control" type="text"
									name="whenToPlant" value="${plant.whenToPlant}" /> <br> <label>
									Growing from seed </label> <input class="form-control" type="text"
									name="growingFromSeed" value="${plant.growingFromSeed}" /> <br>
								<label> Transplanting </label> <input class="form-control"
									type="text" name="transplanting" value="${plant.transplanting}" />
								<br> <label> Spacing </label> <input class="form-control"
									type="text" name="spacing" value="${plant.spacing}" /> <br>
								<label> Watering </label> <input class="form-control"
									type="text" name="watering" value="${plant.watering}" /> <br>
								<label> Feeding </label> <input class="form-control" type="text"
									name="feeding" value="${plant.feeding}" /> <br> <label>
									Other care </label> <input class="form-control" type="text"
									name="otherCare" value="${plant.otherCare}" /> <br> <label>
									Diseases </label> <input class="form-control" type="text"
									name="diseases" value="${plant.diseases}" /> <br> <label>
									Pests </label> <input class="form-control" type="text" name="pests"
									value="${plant.pests}" /> <br> <label> Harvesting
								</label> <input class="form-control" type="text" name="harvesting"
									value="${plant.harvesting}" /> <br> <label>
									Storage/use </label> <input class="form-control" type="text"
									name="storageUse" value="${plant.storageUse}" /> <br> <input
									class="form-control" type="hidden" name="id"
									value="${plant.id}" /> <br> <input type="submit"
									value="Update Plant" />
							</div>
						</form:form>
					</div>
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
										value="Find Plant" class="form-control" />
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
										value="Find Plant" class="form-control" />
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
									name="description" /> <br> <label> Optimal sun </label> <input
									class="form-control" type="text" name="optimalSun" /> <br>
								<label> Optimal soil </label> <input class="form-control"
									type="text" name="optimalSoil" /> <br> <label>
									Planting Considerations </label> <input class="form-control"
									type="text" name="plantingConsiderations" /> <br> <label>
									When to plant </label> <input class="form-control" type="text"
									name="whenToPlant" /> <br> <label> Growing from
									seed </label> <input class="form-control" type="text"
									name="growingFromSeed" /> <br> <label>
									Transplanting </label> <input class="form-control" type="text"
									name="transplanting" /> <br> <label> Spacing </label> <input
									class="form-control" type="text" name="spacing" /> <br> <label>
									Watering </label> <input class="form-control" type="text"
									name="watering" /> <br> <label> Feeding </label> <input
									class="form-control" type="text" name="feeding" /> <br> <label>
									Other care </label> <input class="form-control" type="text"
									name="otherCare" /> <br> <label> Diseases </label> <input
									class="form-control" type="text" name="diseases" /> <br>
								<label> Pests </label> <input class="form-control" type="text"
									name="pests" /> <br> <label> Harvesting </label> <input
									class="form-control" type="text" name="harvesting" /> <br>
								<label> Storage/use </label> <input class="form-control"
									type="text" name="storageUse" /> <br> <input
									class="form-control" type="hidden" name="id" value="0" /> <input
									type="submit" value="Add New Plant" />
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
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