<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Employee List</title>
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css'/>">
</head>
<body>
<div class="container mt-4">

    <h2 class="mb-4">Employee List</h2>

    <a href="${pageContext.request.contextPath}/employee" class="btn btn-primary mb-3">Add New Employee</a>

    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th><a href="?page=${currentPage}&sortField=id&sortDir=${sortField eq 'id' ? reverseSortDir : 'asc'}">ID</a></th>
            <th><a href="?page=${currentPage}&sortField=name&sortDir=${sortField eq 'name' ? reverseSortDir : 'asc'}">Name</a></th>
            <th><a href="?page=${currentPage}&sortField=email&sortDir=${sortField eq 'email' ? reverseSortDir : 'asc'}">Email</a></th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="emp" items="${employeePage.content}">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.email}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/employee/edit/${emp.id}" class="btn btn-sm btn-warning">Edit</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <!-- Pagination controls -->
    <nav>
        <ul class="pagination">
            <c:if test="${!employeePage.first}">
                <li class="page-item">
                    <a class="page-link" href="?page=${currentPage - 1}&sortField=${sortField}&sortDir=${sortDir}">Previous</a>
                </li>
            </c:if>

            <c:forEach begin="0" end="${employeePage.totalPages - 1}" var="i">
                <li class="page-item ${i == currentPage ? 'active' : ''}">
                    <a class="page-link" href="?page=${i}&sortField=${sortField}&sortDir=${sortDir}">${i + 1}</a>
                </li>
            </c:forEach>

            <c:if test="${!employeePage.last}">
                <li class="page-item">
                    <a class="page-link" href="?page=${currentPage + 1}&sortField=${sortField}&sortDir=${sortDir}">Next</a>
                </li>
            </c:if>
        </ul>
    </nav>

</div>
</body>
</html>
