<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        EvPNG.fix('div, ul, img, li, input, a');
    </script>
    <![endif]-->
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>

    <script type="text/javascript" src="js/menu.js"></script>

    <script type="text/javascript" src="js/select.js"></script>

    <script type="text/javascript" src="js/lrscroll.js"></script>

    <script type="text/javascript" src="js/iban.js"></script>
    <script type="text/javascript" src="js/fban.js"></script>
    <script type="text/javascript" src="js/f_ban.js"></script>
    <script type="text/javascript" src="js/mban.js"></script>
    <script type="text/javascript" src="js/bban.js"></script>
    <script type="text/javascript" src="js/hban.js"></script>
    <script type="text/javascript" src="js/tban.js"></script>

    <script type="text/javascript" src="js/lrscroll_1.js"></script>


    <title>购物街</title>
</head>
<body>
    <!--Begin Header Begin-->
    <%@ include file="/WEB-INF/views/include/header2.jsp" %>
    <!--End Header End-->

    <!--Begin Login Begin-->
    <div class="log_bg">
        <div class="top">
            <div class="logo"><a href="index.jsp"><img src="images/logo.png" /></a></div>
        </div>
        <div class="login">
            <div class="log_img"><img src="images/l_img.png" width="611" height="425" /></div>
                <div class="log_c">
                    <form>
                        <table border="0" style="width:370px; font-size:14px; margin-top:30px;" cellspacing="0" cellpadding="0">
                            <tr height="50" valign="top">
                                <td width="55">&nbsp;</td>
                                <td>
                                    <span class="fl" style="font-size:24px;">登录</span>
                                    <span class="fr">还没有商城账号，<a href="/regist" style="color:#ff4e00;">立即注册</a></span>
                                </td>
                            </tr>
                            <tr height="70">
                                <td>用户名</td>
                                <td><input id="username" type="text" value="" class="l_user" /></td>
                            </tr>
                            <tr height="70">
                                <td>密&nbsp; &nbsp; 码</td>
                                <td><input id="password" type="password" value="" class="l_pwd" /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="font-size:12px; padding-top:20px;">
                                <span style="font-family:'宋体';" class="fl">
                                    <label class="r_rad"><input type="checkbox" /></label><label class="r_txt">请保存我这次的登录信息</label>
                                </span>
                                    <span class="fr"><a href="#" style="color:#ff4e00;">忘记密码</a></span>
                                </td>
                            </tr>
                            <tr height="60">
                                <td>&nbsp;</td>
                                <td><input id="login" value="登录" class="log_btn" /></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--End Login End-->

    <!--begin footer2 -->
    <%@ include file="/WEB-INF/views/include/footer2.jsp" %>
    <!--end footer2  -->

</body>



<script type="text/javascript">

    $("#login").click(function () {
        var in_username = $("#username").val();
        var in_password = $("#password").val();
        if(in_username == null){//???会不会有问题
            alert("请输入用户名");
        }else if(in_password ==  null){
            alert("请输入密码");
        }else{
            $.ajax({
                url:"${pageContext.request.contextPath}/login",
                type:"POST",
                dataType:"json",
                data:{
                    username:in_username,
                    password:in_password
                },
                success:function (result) {
                    if(result.code == 1){
                        alert(result.msg);
                        window.location.href = "${pageContext.request.contextPath}/index";//依然是用controller控制页面跳转不是直接到指定页面
                    }else{
                        alert("登录失败")
                    }
                }
            })
        }
    })

</script>

</html>

