<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%--测试内置对象：--%>
<%--1.  存东西--%>
<%
    pageContext.setAttribute("name1","秦疆1号");//保存的数据只在一个页面中有效
    request.setAttribute("name2","秦疆2号");//保存的数据只在一次请求中有效，请求转发会携带这个数据
    session.setAttribute("name3","秦疆3号");//保存的数据只在一次会话中有效，从打开浏览器到关闭浏览器
    application.setAttribute("name4","秦疆4号");//保存的数据只在服务器中有效，从打开服务器到关闭服务器

//    除了这些：pageContext、application等还可以用include（）包含页面
//    pageContext.include();
%>

<%--2. 存之后，可以取东西   --%>
<%
    /*这里我们通过pageContext来取东西： 我们通过寻找的方式来取  */
//    为什么能找出来？：寻找机制是从底层到高层（作用域:由page-->request-->session-->application）：如pageContext保存的数据只在一个页面中有效，跳出这个页面你取不到的
//   这个机制与java中的机制：JVM的双亲委派机制  是一样的。
//    pageContext.getAttribute("name1");
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

<hr>
<%--3.2   传统方法输出（与上面对比下效果）--%>
<h3><%=name1%></h3>
<h3><%=name2%></h3>
<h3><%=name3%></h3>
<h3><%=name4%></h3>
<h3><%=name5%></h3>   <%--用传统方法输出：这里的name5输出为null .我们不希望这样，故一般用EL表达式     --%>
















</body>
</html>
