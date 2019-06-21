<%--
  Created by IntelliJ IDEA.
  User: 16289
  Date: 2019/6/11
  Time: 8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style type="text/css">
        div{
            width: 600px;
            height: 400px;
            border: 1px solid black;
            margin:100px auto;
            background-image: url("img/la.jpg") ;

        }
        .span3{
            text-align: center;

            font-family: 微软雅黑;
            font-size: 35px;
            position: absolute;
            top: 200px;
            left: 570px;

        .span1{
        }
            position: absolute;
            top:400px;
            left: 590px;
        }
        .span2{
            position: absolute;
            top:400px;
            left: 700px;
        }
    </style>
</head>
<body>
<div>
<span class="span1"><a href="register.jsp" >用户注册</a></span>
<span class="span2"><a href="${pageContext.request.contextPath}/toPageServlet?op=goToLoginPage" >用户登录</a></span>
    <%--<span class="span3">后台管理系统</span>--%>
</div>
</body>
</html>
