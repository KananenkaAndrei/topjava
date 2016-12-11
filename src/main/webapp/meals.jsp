<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Meals</title>

    <style>
        .normal {color: green}
        .exceeded {color: red}

        h1 {
            padding: 1px;
            text-align: center;
        }
    </style>

</head>
<body>
<a href="index.html"><button>Back to Homepahge</button></a>
<br/>
<br/>
<h1>Meals List</h1>

<table border="1" cellpadding="8" cellspacing="0">
    <thead>
    <tr>
        <th>Time</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    </thead>
    <c:forEach var="meals" items="${list}" >
        <jsp:useBean id="meals" type="ru.javawebinar.topjava.model.MealWithExceed"/>
        <tr class="${meals.exceed ? 'exceeded' : 'normal'}">
            <td><%=TimeUtil.toString(meals.getDateTime())%></td>
            <td>${meals.description}</td>
            <td>${meals.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
