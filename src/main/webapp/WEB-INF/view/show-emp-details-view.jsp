<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show-emp-details-view</title>
</head>
<body>


<h2>Dear Employee, you are WELCOME!!!</h2>

<br>
<br>
<br>

<%--
Your name: ${param.employeeName}
--%>

Your name: ${employee.name}
<br><br>
Your surname: ${employee.surName}
<br><br>
Your salary: ${employee.salary} $
<br><br>
Your department: ${employee.department}
<br><br>
Your car: ${employee.carBrand}
<br><br>
Languages (s):
<%--неотсортированный лист <ul>  --%>
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <%--элемент списка--%>
        <li> ${lang} </li>
    </c:forEach>
</ul>
<br><br>
Phone number: ${employee.phoneNumber}
<br><br>
Email: ${employee.email}
<br><br>
<a href="./">Select to home</a>

</body>
</html>
