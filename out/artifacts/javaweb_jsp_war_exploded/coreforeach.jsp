<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%--foreach遍历--%>
<body>
<%
    ArrayList<String> people = new ArrayList<>();
    people.add(0,"mako");

    people.add(1,"张三");
    people.add(2,"李四");
    people.add(3,"王五");
    people.add(4,"赵六");
    people.add(5,"田七");

    request.setAttribute("list",people);//把新建的集合people放到  request中。这里也可以方到session中，不再赘述
%>

<%--1.对request中的list   进行遍历  --%>
<%--
var , 每一次遍历出来的变量
items, 要遍历的对象
begin, 哪里开始
end, 到哪里
step, 步长
--%>

<c:forEach var="people" items="${list}">   <%--item是指从哪里遍历--%>
    <c:out value="${people}"/> <br>
</c:forEach>

<hr>
<c:forEach var="people" items="${list}" begin="1" end="3" step="1" >
    <c:out value="${people}"/> <br>
</c:forEach>











</body>
</html>
