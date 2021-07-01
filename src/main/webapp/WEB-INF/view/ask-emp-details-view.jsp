<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>ask-emp-details-view</title>
</head>
<body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors cssStyle="color: red" path="name"/>
    <br><br>
    Surname <form:input path="surName"/>
    <form:errors cssStyle="color: red" path="surName"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors cssStyle="color: red" path="salary"/>
    <br><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
</form:select>
    <%--   <form:option value="Information Technology" label="IT"/>
    <form:option value="Human Resources" label="HR"/>
    <form:option value="Sales" label="Sales"/>--%>
    <br><br>
    Which car do you want?
    <br><br>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>

    <%-- BMW <form:radiobutton path="carBrand" value="BMW"/>
     Audi <form:radiobutton path="carBrand" value="Audi"/>
     MB <form:radiobutton path="carBrand" value="Mercedes-benz"/>--%>
    <br><br>
    Foreign Language (s)

    <form:checkboxes path="languages" items="${employee.languageList}"/>

  <%--  EN <form:checkbox path="languages" value="English"/>
    DE <form:checkbox path="languages" value="Deutch"/>
    FR <form:checkbox path="languages" value="French"/>--%>
    <br><br>
    Phone number: <form:input path="phoneNumber"/>
    <form:errors cssStyle="color: red" path="phoneNumber"/>
    <br><br>
    Email <form:input path="email"/>
    <form:errors cssStyle="color: red" path="email"/>
    <br><br>


    <input type="submit" value="OK">

</form:form>

</body>
</html>
