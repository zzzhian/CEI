<%--
  Created by IntelliJ IDEA.
  User: 16289
  Date: 2019/6/11
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/adminServlet?op=register" method="post">
    <table border="1px" width="500px" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td>用户账户:</td>
            <td colspan="2"><input type="text" name="username" /></td>
        </tr>
        <tr>
            <td>用户密码:</td>
            <td colspan="2"> <input type="password" name="password" /></td>
        </tr>
        <tr>
            <td>电话号码:</td>
            <td>
                <input type="tel" name="phone"id="phone" onblur="test(0)" onfocus="test(1)"  />
            </td>
            <td><div id="msg" style="display: none;color: red" >电话格式有误</div></td>
        </tr>
        <td>用户邮箱:</td>
        <td colspan="2" > <input type="email" name="email" /></td>
        </tr>
        <tr>
            <td colspan="3"><input type="submit" value="注册"/></td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    function test(flag){
        if (flag == 0) {
            var phone = document.getElementById("phone").value;
            var valid = true;
            var number = "0123456789";
            if (phone.length == 0) {
                valid = false;
            }
            if (phone.length == 11) {
                for (var i=0;i<phone.length;i++) {
                    var chars = phone.charAt(i);
                    if (number.indexOf(chars) == -1) {
                        valid = false;
                        break;
                    }
                }
            }else{
                document.getElementById("msg").style.display='block';
            }
            if (valid == false) {
                document.getElementById("msg").style.display='block';
            }
        } else{
            document.getElementById("msg").style.display='none';
        }
    }
</script>

