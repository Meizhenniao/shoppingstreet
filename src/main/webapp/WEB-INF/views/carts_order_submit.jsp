<%--
  Created by IntelliJ IDEA.
  User: MeiZhen
  Date: 2019/4/28
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
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

    <script type="text/javascript" src="js/menu.js"></script>

    <%--<script type="text/javascript" src="js/n_nav.js"></script>--%>

    <script type="text/javascript" src="js/num.js">
        var jq = jQuery.noConflict();
    </script>

    <script type="text/javascript" src="js/shade.js"></script>

    <title>购物街</title>
</head>

<body>
    <!--Begin Header Begin-->
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!--End Header End-->
    <!--Begin Menu Begin-->
    <%@ include file="/WEB-INF/views/include/menu_hide.jsp" %>
    <!--End Menu End-->
    <div class="i_bg">
        <div class="content mar_20">
            <img src="images/img3.jpg" />
        </div>

        <!--Begin 第三步：提交订单 Begin -->
        <div id="ordersList" class="content mar_20">

            <!--Begin 银行卡支付 Begin -->
            <%--<div class="warning">--%>
                <%----%>
            <%--</div>--%>
            <!--Begin 银行卡支付 Begin -->


            <!--Begin 余额不足 Begin -->
            <%--<div class="warning">--%>
                <%--<table border="0" style="width:1000px; text-align:center;" cellspacing="0" cellpadding="0">--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--<p style="font-size:22px;">提示 !</p>--%>
                            <%--<b style="color:#ff4e00; font-size:16px; font-family:'宋体';">您的余额不足以支付整个订单，请选择其他支付方式</b>--%>
                            <%--<div class="backs"><a href="#">返回上一页</a></div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
            <%--</div>--%>
            <!--Begin 余额不足 Begin -->
        </div>
        <!--End 第三步：提交订单 End-->


        <!--Begin Footer Begin -->
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
        <!--End Footer End -->
    </div>

</body>


<script type="text/javascript">
    $(function () {
        showOrders();
    })

    function showOrders() {
        $.ajax({
            url:"${pageContext.request.contextPath}/query_order_now",
            type:"GET",
            success:function (result) {
                alert(result.msg);
                var orders = result.extend.orders;
                $.each(orders, function (index, item){
                    var order = "" +
                        "<table border=\"0\" style=\"width:1000px; text-align:center;\" cellspacing=\"0\" cellpadding=\"0\">" +
                        "   <tr height=\"35\"> " +
                        "       <td style=\"font-size:18px;\"> 感谢您在本店购物！您的订单已提交成功，请记住您的订单号: <font color=\"#ff4e00\">" + item.ordernumber + "</font> </td>" +
                        "   </tr> " +
                        "   <tr> " +
                        "       <td style=\"font-size:14px; font-family:'宋体'; padding:10px 0 20px 0; border-bottom:1px solid #b6b6b6;\"> 您选定的配送方式为: <font color=\"#ff4e00\">" + item.expresscompany + "</font>； &nbsp; &nbsp;您选定的支付方式为: <font color=\"#ff4e00\">" + item.paymentpattern + "</font>； &nbsp; &nbsp;您已经付款金额为: <font color=\"#ff4e00\">￥" + item.sumprice + "</font> " +
                        "       </td> " +
                        "   </tr> " +
                        "   <tr> " +
                        "       <td style=\"padding:20px 0 30px 0; font-family:'宋体';\"> 银行名称 收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。 <br />注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。 </td> </tr> <tr> <td> <a href=\"#\">首页</a> &nbsp; &nbsp; <a href=\"#\">用户中心</a> " +
                        "       </td>" +
                        "   </tr>" +
                        " </table>";

                    $("<div class='warning'></div>").append(order)
                        .appendTo("#ordersList");
                })

            }
        })
    }
</script>
</html>