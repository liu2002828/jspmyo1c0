<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/5/16
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册界面</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="container">
    <div class="from-box">
        <!-- 注册 -->
        <div class="register-box hidden">
            <h1>register</h1>
            <input type="text" placeholder="用户名">
            <input type="email" placeholder="邮箱">
            <input type="password" placeholder="密码">
            <input type="password" placeholder="确认密码">
            <button>注册</button>
        </div>
        <!-- 登录 -->
        <div class="login-box">
            <h1>login</h1>
            <input type="text" placeholder="用户名">
            <input type="password" placeholder="密码">
            <button>登录</button>
        </div>
    </div>
    <div class="con-box left">
        <h2>欢迎来到<span>宠物之家</span></h2>
        <p>快来领取你的专属<span>宠物</span>吧</p>
        <img src="../images/1.png" alt="">
        <p>已有账号</p>
        <button id="login">去登录</button>
    </div>
    <div class="con-box right">
        <h2>欢迎来到<span>宠物之家</span></h2>
        <p>快来领取你的可爱<span>宠物</span>吧</p>
        <img src="../images/2.png" alt="">
        <p>没有账号?</p>
        <button id="register">去注册</button>
    </div>
</div>
<script>
    //要操作到的元素
    let login = document.getElementById("login");
    let register = document.getElementById("register");
    let form_box = document.getElementsByClassName("from-box")[0];
    let register_box = document.getElementsByClassName("register-box")[0];
    let login_box = document.getElementsByClassName("login-box")[0];
    //点击去注册按钮点击事件
    register.addEventListener('click',()=>{
        form_box.style.transform='translateX(80%)';
        login_box.classList.add('hidden');
        register_box.classList.remove('hidden');
    })
    //点击去登录按钮点击事件
    login.addEventListener('click',()=>{
        form_box.style.transform='translateX(0%)';
        register_box.classList.add('hidden');
        login_box.classList.remove('hidden');
    })
</script>
</body>
</html>