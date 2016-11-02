<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <title>Test</title>
    <script src="../statics/js/jquery-3.1.1.min.js"></script>
</head>
<body>

<form style='display:none;' id='form1' name='form1' method='post' action='http://123.57.143.76:9000'/>
    <input id='openid' type='text' name='openid' value='oPPfSww-UoP3AKLQ43-d07CmyrVU'/>
    <input id='birthday' type='text' name='birthday' value='2016-10-17'/>
</form>
<script type='text/javascript'>
    function load_submit() {
    document.form1.submit()
    }
    load_submit();
</script>

</body>
</html>
