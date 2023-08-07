<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--引入jstl核心库(网上复制的库)，我们 才能使用jstl标签--%>
<%--这里的taglib就是标签库的意思，“c”是core--%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h4>if测试</h4>
<hr>


<%--  1.EL表达式获取表单中的数据:   ${param.参数名}
--%>
<form action="coreif.jsp" method="get" ><%--自己给自己提交，再通过自己的页面来获取数据--%>
    <input type="text" name="username" value="${param.username}">    <%--EL表达式：获取web开发的常用对象 ，直接value="${username}" 是
取不到值的。但是我门可以value="${param.username}"      --%>
    <input type="submit" value="登录">



    <%-- 2.判断 ：如果提交的用户名是管理员，则登陆成功--%>
    <%--    <%--%>
    <%--        if(request.getParameter("username").equals("admin")){--%>
    <%--            out.print("登录成功！！");--%>
    <%--        }--%>
    <%--    %>--%>


    <%--   3 .java是上面这样的逻辑，但是我门显然不会用后端代码去写判断，这里用JSTL标签--%>
    <c:if test="${param.username=='admin'}" var="isAdmin">  <%--这里的var是用来接收param.username的值的--%>
        <c:out value="登录成功！！"/>
    </c:if>
    <c:out value="${isAdmin}"/>




</form>






</body>
</html>
