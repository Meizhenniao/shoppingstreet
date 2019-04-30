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
        <div class="regist">
            <div class="log_img"><img src="images/l_img.png" width="611" height="425" /></div>
            <div class="reg_c">
                <form>
                    <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
                        <tr height="50" valign="top">
                            <td width="95">&nbsp;</td>
                            <td>
                                <span class="fl" style="font-size:24px;">注册</span>
                                <span class="fr">已有商城账号，<a href="/login" style="color:#ff4e00;">我要登录</a></span>
                            </td>
                        </tr>
                        <tr height="50">
                            <td align="right"><font color="#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                            <td><input id="username" type="text" value="" class="l_user" /></td>
                        </tr>
                        <tr height="50">
                            <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                            <td><input id="password" type="password" value="" class="l_pwd" /></td>
                        </tr>
                        <tr height="50">
                            <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                            <td><input id="password1" type="password" value="" class="l_pwd" /></td>
                        </tr>
                        <tr height="50">
                            <td align="right"><font color="#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                            <td><input id="email" type="text" value="" class="l_email" /></td>
                        </tr>
                        <tr height="50">
                            <td align="right"><font color="#ff4e00">*</font>&nbsp;手机 &nbsp;</td>
                            <td><input id="tel" type="text" value="" class="l_tel" /></td>
                        </tr>
                        <%--<tr height="50">--%>
                        <%--<td align="right">邀请人会员名 &nbsp;</td>--%>
                        <%--<td><input type="text" value="" class="l_mem" /></td>--%>
                        <%--</tr>--%>
                        <%--<tr height="50">--%>
                        <%--<td align="right">邀请人ID号 &nbsp;</td>--%>
                        <%--<td><input type="text" value="" class="l_num" /></td>--%>
                        <%--</tr>--%>
                        <%--<tr height="50">--%>
                        <%--<td align="right"> <font color="#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>--%>
                        <%--<td>--%>
                        <%--<input type="text" value="" class="l_ipt" />--%>
                        <%--<a href="#" style="font-size:12px; font-family:'宋体';">换一张</a>--%>
                        <%--</td>--%>
                        <%--</tr>--%>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="font-size:12px; padding-top:20px;">
                            <span style="font-family:'宋体';" class="fl">
                                <label class="r_rad"><input type="checkbox" /></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                            </span>
                            </td>
                        </tr>
                        <tr height="60">
                            <td>&nbsp;</td>
                            <td>
                                <input id="regist_info_submit"  value="立即注册" class="log_btn" />
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <!--End Login End-->

    <!--begin footer2 -->
    <%@ include file="/WEB-INF/views/include/footer2.jsp" %>
    <!--end footer2  -->

</body>


<script  type="text/javascript">
    $("#regist_info_submit").click(function() { //此处使用了jquery的id selector
        var in_username = $("#username").val();
        var in_password = $("#password").val();
        var in_password1= $("#password1").val();
        var in_email = $("#email").val();
        var in_tel = $("#tel").val();
        //没有输入用户名和密码不允许注册
        if(in_username.length == 0){
            alert("请输入用户名");
        }else if(in_password == null){
            alert("请输入密码");
        } else if(in_password1 == null){
            alert("请输入确认密码");
        }
        //密码两次输入不一样不允许注册
        if(in_password1 != in_password){
            alert("两次输入的密码不同");
        }else{
            //通过ajax
            $.ajax({
                url:"${pageContext.request.contextPath}/regist",
                type:"POST",
                contentType: "application/json;charset=utf8",
                dataType: 'json',
                data:JSON.stringify({
                    username : in_username,
                    password : in_password,
                    email : in_email,
                    tel : in_tel
                }),
                success:function(result){//只有操作成功才会到这一步吗
                    if (result.code == 1) {
                        var yesorno = confirm("注册"+result.msg+"是否登录");
                        if(yesorno == true){
                            window.location.href = "${pageContext.request.contextPath}/login";//依然是用controller控制页面跳转不是直接到指定页面
                        }else{
                            window.location.reload();
                        }
                    }else{
                        alert(result.msg+"请重试");
                    }
                }
                //???为用户增加跳转到登录的提示
            })
        }
    })
</script>

</html>
