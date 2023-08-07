<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--在不同的页面pageDemo02.jsp和pageContextDemo01.jsp（即不同作用域），能否取到值？其实这里只能取到3、4的值--%>
<%
String name1 = (String) pageContext.findAttribute("name1");
String name2 = (String) pageContext.findAttribute("name2");
String name3 = (String) pageContext.findAttribute("name3");
String name4 = (String) pageContext.findAttribute("name4");
String name5 = (String) pageContext.findAttribute("name5");  //这个值不存在
%>

<%--3.1使用EL表达式输出--%>
<h1>取出来的值为：</h1>
<h3>${name1}</h3>
<h3>${name2}</h3>
<h3>${name3}</h3>
<h3>${name4}</h3>
<h3>${name5}</h3>  <%--用EL表达式：不存在的值自动过滤。这里的name5没办法输出    --%>



<%--这里说明下结果：
取出来的值为：
秦疆3号
秦疆4号
--%>



</body>
</html>
