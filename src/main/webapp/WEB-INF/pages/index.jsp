<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SpringMVC</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/main.css">
    <script src="../resources/js/jquery-3.1.1.min.js"></script>
</head>
<body>
<div >
    <form action="http://123.57.143.76:8010/api/qq/reg" method="post">
        姓名：&nbsp;&nbsp;&nbsp;<input type="text" name="realname" required oninput="out(this)" placeholder="请输入姓名"><br>
        手机号：<input type="text" name="telephone" pattern="^1[34578]\d{9}$"
                   required="required" maxlength="11" oninput="out(this)" placeholder="请输入手机号"><br>
        <input id="openid" type="text" name="openid" value=${openid}>
        <input id="birthday" type="text" name="birthday" value=${birthday}>
        <input id="password" type="text" name="password" value="123456">
        <input id="submit"  type="submit" value="绑定">
    </form>
</div>
<script type="text/javascript">
    function out(i) {
        var v = i.validity;
        if (true === v.valueMissing) {
            i.setCustomValidity("该项不能为空");
        } else {
            if (true === v.patternMismatch) {
                i.setCustomValidity("手机号码格式不正确");
            } else {
                i.setCustomValidity("");
            }
        }
    }
</script>
</body>
</html>