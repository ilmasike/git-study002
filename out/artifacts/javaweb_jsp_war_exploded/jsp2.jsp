<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--1、定制错误页面，我们不希望出现500   有两种办法：1.是下面直接指定路径  2. 是在web.xml中配置错误代码时的执行路径--%>
<%--<%@ page errorPage="error/500.jsp" %>&lt;%&ndash;这个页面一旦出现错误，就去走500.jsp&ndash;%&gt;--%>


<%--2.除了定制错误页面，还有很多别的功能：--%>
<%@page isErrorPage="true" %><%--显示的声明这是一个错误页面（比如显示404,500等，而不显示自己的代码。）--%>

<%--&lt;%&ndash;3.设置编码等&ndash;%&gt;--%>
<%@page pageEncoding="utf-8" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    int x=1/0;
%>

</body>
</html>
