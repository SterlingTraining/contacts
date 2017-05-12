<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
 
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/css/book.css">
</head>
 
<body>
	<div id="header">
			<nav class="navbar navbar-default navbar-fixed-top">
				<section class="navbar-header">
					<a class="navbar-brand" href="#">Sterling IT Training</a>
				</section>
			</nav>
	</div>
	
    <div class="container">
        <div class="page-header">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">Address Book Contacts </span></div>
            <table id="docs_table" data-height="460" class="table table-bordered">
                <thead>
                    <tr>
                        <th>ContactID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Date Of Birth</th>
                        <th>Mobile</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${contacts}" var="contact">
                    <tr>
                        <td>${contact.contactId}</td>
                        <td>${contact.contactName}</td>
                        <td>${contact.email}</td>
                        <td>${contact.address}</td>
                        <td>${contact.dob}</td>
                        <td>${contact.phone1}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
       
    </div>
</body>
</html>