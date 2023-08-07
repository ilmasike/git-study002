<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--1.在这里尝试下转发的用法：foreward--%>
<%
    pageContext.forward("/index.jsp");//前端写成这样
//    这行代码的原型为：
//    request.getRequestDispatcher("/index.jsp").forward(request,response);//后台写成这样。





%>

</body>
</html>
