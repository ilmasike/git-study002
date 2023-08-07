<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--1. 用c:set标签     来保存数据--%>
<c:set var="score" value="85"/><%--定义一个变量叫scope，值为85--%>
<%--1.1 判断：--%>
<c:choose>
    <c:when test="${score>=90}">
        你的成绩为优秀！！
    </c:when>
    <c:when test="${score>=80}">
        你的成绩为良好！！
    </c:when>
    <c:when test="${score>=70}">
        你的成绩为一般！！
    </c:when>
    <c:when test="${score>60}">
        你的成绩为及格！！
    </c:when>
    <c:when test="${score<=60}">
        你的成绩为有待提高！！
    </c:when>
    <%--只要满足条件就退出--%>

</c:choose>

















</body>
</html>
