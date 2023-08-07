<%@ page import="com.kaung.pojo.People" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--1.jsp标签 的usebean,即使用一个对象。                          --%>
<%--1.1  他的原型：以前的java代码是这样写的：以前是new，如果你不想使用new来创建对象，现在直接用bean即可--%>
   <%
//       People p1 = new People();
//       p1.setAddress("西安");
   %>

<jsp:useBean id="p1" class="com.kaung.pojo.People" scope="page"/><%--等价于： People p1 = new People();     --%>
<%--1.2  给这个对象赋值，相当于 people.setXXX--%>
<jsp:setProperty name="p1" property="address" value="西安"/>  <%--name指代你要设置的对象， 比如people对象：等价于 people.setAddress("西安");--%>
<jsp:setProperty name="p1" property="id" value="1"/>
<jsp:setProperty name="p1" property="age" value="3"/>
<jsp:setProperty name="p1" property="name" value="小狂神"/>
<%--1.3  得到属性，相当于people.getXXX          --%>
地址：<jsp:getProperty name="p1" property="address"/>
ID：<jsp:getProperty name="p1" property="id"/>
年龄：<jsp:getProperty name="p1" property="age"/>
姓名：<jsp:getProperty name="p1" property="name"/>














</body>
</html>
