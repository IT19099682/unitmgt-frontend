<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Unit Management </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style><%@include file="/Style.css"%></style>
	
</head>
<body>

<ul class="nav-bar">
<li id="login"><a href="#">ElectroGrid</a></li>

<li><a href="#">User Management</a></li>
<li><a class="active" href="#">Unit Management</a></li>
<li><a href="#">Bill Management</a></li>
<li><a href="#">Payment Management</a></li>
</ul>

	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Update User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="userid" value="<c:out value='${user.userid}' />" />
				</c:if>
				
						

				<fieldset class="form-group">
					<label>User ID</label> <input type="text"
						value="<c:out value='${user.userid}' />" class="form-control"
						name="userid" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${user.username}' />" class="form-control"
						name="username" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Email</label> <input type ="email" name="email" value="<c:out value='${user.email}' />" class="form-control" pattern="(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))" title="Must be in email format" required>
					
				</fieldset>

				<fieldset class="form-group">
					<label>Month</label> <input type="text"
						value="<c:out value='${user.month}' />" class="form-control"
						name="month">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Units</label> <input type="text"
						value="<c:out value='${user.units}' />" class="form-control"
						name="units">
				</fieldset>
				
				<button type="add-units" class="btn btn-success">Add Units</button>
								
				<button type="submit" class="btn btn-success">Save</button>
				
				<button type="delete" class="btn btn-success">Delete</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
