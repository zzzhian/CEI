<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <style>
        *{
            margin: auto;
        }


    </style>
</head>
<body>
<%--${sessionScope.USER_SESSION.username}，你好！--%>
<a href="JavaScript:exit()">注销</a>
<h1 style="text-align: center;font-family: 微软雅黑;font-size: 30px">
    登录界面
</h1>

<form action="/adminServlet?op=Login" method="post">
    <input type="hidden" name="methodName" value="0" />
    <table border="1px" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                用户账号：
            </td>
            <td>
                <input type="text" name="username" />
            </td>
        </tr>
        <tr>
            <td>
                用户密码：
            </td>
            <td>
                <input type="password" name="password" />
            </td>
        </tr>

        <tr >

            <td colspan="2" align="center">
            <input  type="submit" value="登录"/>
            </td>
        </tr>
    </table>


</form>

</body>
</html>
<script>
    function exit() {
        var sure = confirm("您确定要退出吗?");
        if(sure){
            location="${pageContext.request.contextPath}/adminServlet?op=Logout";
        }else{
        }
    }
</script>