<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>我是： jsptag2!!!!</h2><%--取出参数：这里测试一下，是否能取到jsptag.jsp中  <jsp:param>携带的参数--%>
名字：<%= request.getParameter("name")%>
年龄：<%= request.getParameter("age")%>



</body>
</html>
