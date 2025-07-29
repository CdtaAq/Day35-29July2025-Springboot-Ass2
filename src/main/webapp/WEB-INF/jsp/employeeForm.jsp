<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Employee Form</title>
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css'/>"/>
</head>
<body>
<div class="container">
    <h2>${employee.id == null ? 'Add New' : 'Edit'} Employee</h2>

    <form:form modelAttribute="employee" method="POST" action="${pageContext.request.contextPath}/employee">
        <form:hidden path="id"/>

        <div class="form-group">
            <label>Name:</label>
            <form:input path="name" cssClass="form-control"/>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <form:input path="email" cssClass="form-control"/>
        </div>

        <!-- Add other fields if required -->

        <div class="form-group">
            <button type="submit" class="btn btn-success">Save</button>
            <a href="${pageContext.request.contextPath}/employees" class="btn btn-secondary">Back</a>
        </div>
    </form:form>
</div>
</body>
</html>
