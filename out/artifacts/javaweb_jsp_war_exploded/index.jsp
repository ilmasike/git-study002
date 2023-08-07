<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%--  1.jsp表达式： <%=  变量或者表达式  %>
  作用：一般用来将程序的结果，输出到客户端--%>
   <%= new Date()%>  <%--  可以看到<%=    %>中的java代码会原封不动的输出            --%>

  <hr>

  <%--  2.jsp 脚本片段(少了个等号)--%>
  <%
    int sum=0;
    for (int i = 0; i <100 ; i++) {
      sum+=i;

    }
    out.println("<h1>最终的sum结果："+sum+"</h1>");
  %>



  <%--3.脚本片段的再实现                 --%>
  <%
    int x=10;
    out.println(x);
  %>
  <p>这是一个jsp文档</p>
  <%
    int y=20;
    out.println(y);
  %>

  <hr>

  <%--能否更高级的输出？
   在我们的代码中，嵌入html元素--%>
  <%
    for (int i = 0; i <20 ; i++) {
      System.out.println("你好");
  %>
  <%--把他拆分，分段--%>

  <h1>爱你，mako！！<%= i%></h1>

  <%
    }
  %>


<%--  嫌弃上面这里写的太乱：可以用EL表达式处理：即${}    }--%>
  <%  for (int i = 0; i <20 ; i++) {%>
     <h1>爱你,mako！！   ${i}  </h1>
  System.out.println("你好");
  <%}%>




  <hr>
  <%-- 4.  JSP声明:   <%!   %>。这里的作用于在c盘的源码里能看到：不是写在_jspService方法里，而是作用域更高的类里
  代码输出后台可以看到：会先执行(静态变量)：正在加载servlet。。。。。。。。。。。
            --%>
  <%!
    static {
      System.out.println("正在加载servlet。。。。。。。。。。。。");
    }
    //定义了全局变量：
    private int globalVar=0;
    public void kuang(){
      System.out.println("进入方法了kuang！");
    }
  %>

































  </body>
</html>
