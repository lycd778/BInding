<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/10/10
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <script src="../resources/js/jquery-3.1.1.min.js">
    </script>
    <script>
        $.extend({
            StandardPost:function(url,args){
                var body = $(document.body),
                        form = $("<form method='post'></form>"),
                        input;
                form.attr({"action":url});
                $.each(args,function(key,value){
                    input = $("<input type='hidden'>");
                    input.attr({"name":key});
                    input.val(value);
                    form.append(input);
                });

                form.appendTo(document.body);
                form.submit();
                document.body.removeChild(form[0]);
            }
        });
        $(document).ready(function(){
            $("button").click(function(){
                $.StandardPost("/index",{
                           "openid":"oPPfSww-UoP3AKLQ43-d07CmyrVU"
                        });

            });
        });
    </script>
</head>
<body>
<button>发送Openid</button>
<%--<form method="post" action="/result">--%>
<%--<input type="text" name="openid"  value="oPPfSww-UoP3AKLQ43-d07CmyrVU">--%>
    <%--<input type="submit" value="发送openid">--%>
<%--</form>--%>

</body>
</html>
