<%@ page import="com.kaung.pojo.People" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--1.jsp标签 的usebean,即使用一个对象。                          --%>
<%--1.1  他的原型：以前的java代码是这样写的：以前是new，现在直接用bean即可--%>
   <%
//       People people = new People();
//       people.setAddress("西安");
   %>

<jsp:useBean id="people" class="com.kaung.pojo.People" scope="page"/><%--等价于： People people = new People();     --%>
<%--1.2  给这个对象赋值，相当于 people.setXXX--%>
<jsp:setProperty name="people" property="address" value="西安"/>  <%--name指代你要设置的对象， 比如people对象：等价于 people.setAddress("西安");--%>
<jsp:setProperty name="people" property="id" value="1"/>
<jsp:setProperty name="people" property="age" value="3"/>
<jsp:setProperty name="people" property="name" value="小狂神"/>
<%--1.3  得到属性，相当于people.getXXX          --%>
地址：<jsp:getProperty name="people" property="address"/>
ID：<jsp:getProperty name="people" property="id"/>
年龄：<jsp:getProperty name="people" property="age"/>
姓名：<jsp:getProperty name="people" property="name"/>














</body>
</html>
