<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp" />

<jsp:include page="sidebar.jsp" />

<nav class="navbar navbar-light bg-faded">
	<h1 class="navbar-brand mb-0 home-text">Customer Form</h1>
</nav>

<section id="customer_form_section">

	<div class="container customer-form">

	<form:form action="saveCustomer" modelAttribute="customer" metod="POST">
	
	<form:hidden path="id" />
		
		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label-sm">First
				Name</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="text" path="firstName" />
			</div>
		</div>
		<div class="form-group row">
			<label for="example-search-input" class="col-2 col-form-label-sm">Last
				Name</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="text" path="lastName" />
			</div>
		</div>

		<div class="form-group row">
			<label for="example-search-input" class="col-2 col-form-label-sm">Gender</label>
			<div class="col-5">
				<div class="form-check form-check-inline">
					
					<label class="form-check-label"> 
					<form:radiobutton class="form-check-input" path="gender" value="M"/> 
					Male
					</label>

				</div>
				<div class="form-check form-check-inline">
					<label class="form-check-label"> 
					<form:radiobutton class="form-check-input" path="gender" value="F"/> 
					Female
					</label>

				</div>
			</div>
		</div>

		<div class="form-group row">
			<label for="example-number-input" class="col-2 col-form-label-sm">Age</label>
			<div class="col-5">
				<form:input class="form-control  form-control-sm" type="number" path="age" />
			</div>
		</div>

		<div class="form-group row">
			<label for="example-email-input" class="col-2 col-form-label-sm">Email</label>
			<div class="col-5">
				<form:input class="form-control  form-control-sm" type="email" path="email" />
			</div>
		</div>

		<div class="form-group row">
			<label for="example-tel-input" class="col-2 col-form-label-sm">Telephone No.</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="tel" path="tel" />
			</div>
		</div>
		
		<div class="separate-line"></div>
		
		<div class="form-group row">
			<label for="example-number-input" class="col-2 col-form-label-sm">Postal code</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="number" path="postalCode" />
			</div>
		</div>

		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label-sm">Province</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="text" path="province" />
			</div>
		</div>

		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label-sm">District</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="text" path="district" />
			</div>
		</div>

		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label-sm">Sub
				District</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="text" path="subDistrict" />
			</div>
		</div>

		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label-sm">Address</label>
			<div class="col-5">
				<form:input class="form-control form-control-sm" type="text" path="address" />
			</div>
		</div>

		<div class="form-group row button-end">
				<input type="submit" value="save" class="btn btn-primary btn-sm col-3 offset-2" />
		</div>
		
	</form:form>
		
	</div>

</section>

<jsp:include page="footer.jsp" />