<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AddressBook</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.css">
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
 
<script>

//alert("test");
	function test(){
		alert("test");
	}
	
 jQuery("#deleteBtn").click(function(){
		alert( "Handler for .click() called." );
 	}); 
	 
	jQuery("#container").on("click", "#deleteBtn", function(event){
		 alert("test");
         return true; //return true;
	});
	 
	 $('#buttonSearch').on('click', function(event){
		 alert("test");
	        $.ajax({
				 type: "POST",
				 url: '/search',
				 data: $('form.form-horizontal').serialize(),
				         success: function(msg){
				            alert(msg);
				         },
				 error: function(){
				 alert("failure");
				 }
	      });
	});
	 
	 




/*$(document).ready(function(){
	 $("#buttonSearch").click(function(){
		 $.get("/searchByName", { nameToSearch:$("#textbox2").val() });
	 });
   
});*/



</script>	
</head>
<body>

<div class="container">
	<div id="test"><h2>Address Book</h2></div>
	
 	<spring:url value="/search" var="contactsActionUrl" />
	<form:form class="form-horizontal" role="form" type="post" method="post" action="${contactsActionUrl}" modelAttribute="contactForm">
	<div class="row">
			<div class="col-md-4 form-group">
			    <label class="control-label col-sm-4" for="textbox2">First Name:</label>
			    <div class="col-sm-8">   
			    	<form:input class="form-control" path="contactName" id="contactName" type="text"/>
			    </div>
			</div>
			<div class="col-md-4 form-group">
			    <label class="control-label col-sm-4" for="textbox2">Date of Birth:</label>
			    <div class="col-sm-8">
				<div class="input-group date" id="pickerDateBirth">
                    <input type='text' id="dob" class="form-control" placeholder="dd/MM/yyyy" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
			</div>
			</div>
			<div class="col-md-4 form-group">
			    <label class="control-label col-sm-4" for="textbox2">Address:</label>
			    <div class="col-sm-8">   
			    	<input class="form-control" id="address" type="text"/>
			    </div>
			</div>
	</div>
	
	<div class="row">
			<div class="col-md-4 form-group">
			    <label class="control-label col-sm-4" for="textbox2">Last Name:</label>
			    <div class="col-sm-8">   
			    	<input class="form-control" id="lastName" type="text"/>
			    </div>
			</div>
			<div class="col-md-4 form-group">
			    <label class="control-label col-sm-4" for="textbox2">Email:</label>
			    <div class="col-sm-8">   
			    	<input class="form-control" id="email" type="text"/>
			    </div>
			</div>
			<div class="col-md-4 form-group">
			    <label class="control-label col-sm-4" for="textbox2">Mobile:</label>
			    <div class="col-sm-8">   
			    	<input class="form-control" id="mobilePhone" type="text"/>
			    </div>
			</div>
	</div>
	
	<!-- <div class="row">
		  <div class="col-xs-12 col-md-6">
		  		<div class="form-group">
					<label class="control-label col-sm-3" for="name">First Name:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="name" placeholder="Name">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="lastname">Last name:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="lastname" placeholder="Last Name">
					</div>
				</div>
		  </div>
		  <div class="col-xs-12 col-md-6">
		  	<div class="form-group">
			<label class="control-label col-sm-3" for="dateBirth">Date of Birth:</label>
			<div class="col-sm-5">
				<div class="input-group date" id="pickerDateBirth">
                    <input type='text' id="dateBirth" class="form-control" placeholder="dd/MM/yyyy" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-3" for="register">Email:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="email" placeholder="email">
			</div>
		</div>
		  
		  </div>
	</div> -->
		
		
		<div class="form-group">
		<!--<button type="button" id="buttonSearch" class="btn btn-info" >
			 <button type="button" id="buttonSearch" class="btn btn-info" onclick="">
				<span class="glyphicon glyphicon-search"></span> Search
			</button> -->
			<button type="button" id="buttonSearch" class="btn btn-success">
				<span class="glyphicon glyphicon-plus-sign"></span> Search
			</button>
			<button type="button" id="buttonInsert" class="btn btn-success">
				<span class="glyphicon glyphicon-plus-sign"></span> Insert
			</button>
			<input type="button" id="deleteBtn" value="Delete" class="btn btn-warning" />
			
		</div>
		
	</form:form>
	<div>
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
                        <td>${contact.mobilePhone}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
		</div>
</div>
</body>
</html>