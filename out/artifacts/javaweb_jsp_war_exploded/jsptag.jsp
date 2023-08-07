<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--1.  演示JSP标签的使用  --%>
<%--<jsp:include page=""></jsp:include>--%>

<h2>我是： jsptag1!!!!</h2>

<%--1.1 forward转发标签：   --%>
<%--转发的时候可以携带一些参数，就用jsp：param--%>
<%--注意：不要再forward中写注释，否则报500错   --%>
<jsp:forward page="/jsptag2.jsp">
    <jsp:param name="name" value="mako1"/>
    <jsp:param name="age" value="12"/>
    <jsp:param name="value3" value="mako3"/>
    <jsp:param name="value4" value="mako4"/>
</jsp:forward>
<%--这个跟刚才配置pageContext 的转发是一样的--%>









</body>
</html>
