<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--除了page,还有别的操作--%>


<%--1.  比如每个网站都有公共头，公共底部（你打开b站的不同页面，头部不变）--%>
<%--1.1我们可以用<%@ include file=""%>制作公共页面。        --%>
<%--page建议写最上面，而include等不必非得写上面--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/common/header.jsp"%>
<h1>网页主体1</h1>
<%@ include file="/common/footer.jsp"%>
<%--@include会将两个页面合二为一--%>

<hr>




<%-- 1.2   我们可以通过   jsp标签   制作公共页面       --%>
<%--这里的page代表当前项目，故前面加个"/"   --%>
<jsp:include page="/common/header.jsp"/>
<h1>网页主体2</h1>
<jsp:include page="/common/footer.jsp"/>
<%--jSP标签
jsp:include：拼接页面，本质还是三个
--%>















</body>
</html>
