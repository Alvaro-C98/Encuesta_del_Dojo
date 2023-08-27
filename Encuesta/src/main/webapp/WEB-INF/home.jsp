<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/styleIndex.css">
<meta charset="ISO-8859-1">
<title>Encuesta</title>
</head>
<body>
	<form method="post" action="/form" class="container p-4 m-4 border border-dark" style="width:500px">
		<p class="text-danger"> <c:out value="${error}" /> </p>
				
		<div class="row">
			<div class="col-sm-5">
				<p>Your Name: </p>
			</div>
			<label class="col">
				<input type="text" name="name" class="w-100">
			</label>
		</div>
		
		<div class="row">
			<div class="col-sm-5">
				<p>Dojo Location:</p>
			</div>
			<label class="col">
				<select name="dojo" class="w-100">
					<option value="null"></option>
					<option value="Argentina">Argentina</option>
					<option value="Uruguay">Uruguay</option>
				</select>
			</label>
		</div>
		
		<div class="row">
			<div class="col-sm-5">
				<p>Favorite Language:</p>
			</div>
			<label class="col"> 
				<select name="language" class="w-100">
					<option value="null"></option>
					<option value="Python">Python</option>
					<option value="Java">Java</option>
					<option value="C">C</option>
				</select>
			</label>
		</div>		
				
		<p>Comment (optional)</p>
		
		<div class="row">
			<div class="col">
				<textarea name="comment" class="w-100"></textarea>
			</div>
		</div>
		
		<div class="row mt-2">
			<div class="col text-right">
				<button>Button</button>
			</div>
		</div>
	</form>
	
</body>
</html>