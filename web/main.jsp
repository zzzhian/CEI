<%--
  Created by IntelliJ IDEA.
  User: guo
  Date: 2019/6/6
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="js/jquery-1.7.2.min.js"></script>

      <style type="text/css">
        .bigbox{
          width: 600px;
          height: 350px;
          background: url("img/bg.png")no-repeat;
          margin: auto;
        }


                            .box {

                              width: 400px;
                              height: 300px;
                              margin: 100px auto;
                              display: block;
                              position: relative;
                            }
                            #form{
                              position: absolute;
                              top: 90px;
                              left: 90px;
                            }
      .btn_style1{
        width: 100px;
        height: 30px;
        display: block;
        position:absolute;
        top: 200px;
        left: 45px;

        text-decoration:none;
        text-align:center;
        line-height:30px;

        color: #fff;
        background-color: #058;

      }
      .btn_style2{
        width: 100px;
        height: 30px;
        display: block;
        position:absolute;
        top: 200px;
        left: 221px;

        text-decoration:none;
        text-align:center;
        line-height:30px;

        color: #fff;
        background-color: #058;
      }
      #btn_reset:HOVER {
        background-color: #047;
      }
      #btn_login:hover{
        background-color: #047;
      }
      #btn_reset{
        right:50px;
      }
      #btn_login{
        margin-left: 50px;
      }

    </style>
  </head>

  <body  >
  <div class="bigbox">
  <div align="center" class="box">
    <form id="form"method="post" action="servlet/adminServlet">
      username:<input type="text" value="${username }" name="username" id="username"/><p/>
      password:<input type="password" value="${password }" name="password" id="password"/><br/>
      <p/>
    </form>
    <a class="btn_style1" id="btn_login"href="javascript:login()" >登陆</a>
    <a class="btn_style2" id="btn_reset"href="javascript:reset()">重置</a>
    <br/>
    <font id="error"color="red">${error }</font>
  </div>
  </div>
  </body>
</html>

    <script type="text/javascript">
        function reset(){
            document.getElementById("username").value = "";
            document.getElementById("password").value = "";
            document.getElementById("error").innerHTML = "";
        }
    function login(){
        document.getElementById('form').submit();
    }
</script>
