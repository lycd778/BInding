<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <title>绑定</title>
    <link href="../statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="../statics/css/font-awesome.min.css" rel="stylesheet">
    <link href="../statics/css/build.css" rel="stylesheet">
    <script src="../statics/js/jquery-3.1.1.min.js"></script>
    <script src="../statics/js/myJs.js"></script>
    <link href="../statics/css/signin.css" rel="stylesheet">
</head>
<body>
<div class="bindingTitle">
    <h4 class="title">绑定手机</h4>
</div>
<div class="signin">
    <div class="signin-head"><img src="../statics/images/logo_03.png" alt="" width="100%" height="100%"></div>
    <div class="signin-text1"><h1>心脏卫士</h1></div>
    <div class="signin-text2"><h3>HeartGuard</h3></div>
    <form class="form-signin" role="form">
        <%--action="http://123.57.143.76:8010/api/qq/reg" method="post"--%>
            <p id="telText">&nbsp;&nbsp;</p>
            <input id="telephone" type="text" class="form-control" name="telephone" placeholder="手机号"
                             pattern="^1[34578]\d{9}$"
                             required="required" maxlength="11" autofocus/>
        <input id="realname" type="text" class="form-control" placeholder="姓名" name="realname" required
               />
        <input id="openid" type="text" name="openid" value=${openid}/>
        <input id="birthday" type="text" name="birthday" value=${birthday}/>
        <input id="password" type="text" name="password" value="123456"/>
        性别：
        <div class="radio radio-info radio-inline">
            <input type="radio" id="inlineRadio1" value=true name="gender" checked>
            <label for="inlineRadio1"> 男 </label>
        </div>
        <div class="radio radio-info radio-inline">
            <input type="radio" id="inlineRadio2" value=false name="gender">
            <label for="inlineRadio2"> 女</label>
        </div>
            <button id="sub" class="btn btn-lg  btn-primary btn-block" type="button">绑定</button>
        <%--class="btn btn-lg  btn-primary btn-block"--%>
    </form>

</div>

</body>
</html>
