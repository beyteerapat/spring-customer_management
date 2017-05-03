<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />

<jsp:include page="sidebar.jsp" />

<nav class="navbar navbar-light bg-faded">
	<h1 class="navbar-brand mb-0 home-text">Customer List</h1>
</nav>

<section id="section-header">

	<div class="container-fluid">

		<h1 class="header-topic">Customer Management</h1>

	</div>

	<div class="add-button">
		<a href="${pageContext.request.contextPath}/new"><button
				type="button" class="btn btn-primary">
				<i class="fa fa-plus icon-add" aria-hidden="true"></i> new customer
			</button></a>
	</div>

</section>


<section id="section-customerList">

	<div class="container-fluid">



		<table class="table table-sm table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
					<th>Age</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="tempCustomer" items="${customers}">

					<c:url var="deleteLink" value="/deleteCustomer">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					
					<c:url var="updateLink" value="/updateCustomer">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<tr>
						<th>${tempCustomer.id}</th>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.gender}</td>
						<td>${tempCustomer.age}</td>
						<td>${tempCustomer.email}</td>
						<td><a href="${updateLink}" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil icon-action"
								aria-hidden="true"></i></a> | <a href="${deleteLink}" data-toggle="tooltip" data-placement="top" title="Delete"><i
								class="fa fa-trash icon-action" aria-hidden="true"></i></a></td>
					</tr>

				</c:forEach>


			</tbody>
		</table>

	</div>

</section>

<jsp:include page="footer.jsp"></jsp:include>