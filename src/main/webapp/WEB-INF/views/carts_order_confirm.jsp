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
    <%--没有这一行$(function)就执行不了，这个是jquery的库--%>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>

    <script type="text/javascript" src="js/menu.js"></script>

    <script type="text/javascript" src="js/n_nav.js"></script>

    <script type="text/javascript" src="js/select.js"></script>

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
            <img src="images/img2.jpg" />
        </div>

        <!--Begin 第二步：确认订单信息 Begin -->
        <div class="content mar_20">
            <div class="two_bg">
                <div class="two_t">
                    <span class="fr"><a href="#">修改</a></span>商品列表
                </div>
                <table  id="cartitem_lists3"  border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="car_th" width="550">商品名称</td>
                        <td class="car_th" width="140">属性</td>
                        <td class="car_th" width="150">购买数量</td>
                        <td class="car_th" width="130">小计</td>
                        <td class="car_th" width="140">返还积分</td>
                    </tr>
                </table>

                <div class="two_t">
                    <span class="fr"><a href="#">修改</a></span>收货人信息
                </div>
                <table id="userimfo" border="0" class="peo_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                </table>


                <div class="two_t">
                    配送方式
                </div>
                <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="car_th" width="80"></td>
                        <td class="car_th" width="200">名称</td>
                        <td class="car_th" width="370">订购描述</td>
                        <td class="car_th" width="150">费用</td>
                        <td class="car_th" width="135">免费额度</td>
                        <td class="car_th" width="175">保价费用</td>
                    </tr>
                    <tr>
                        <td align="center"><input type="checkbox" name="ch" checked="checked" /></td>
                        <td align="center" style="font-size:14px;"><b>申通快递</b></td>
                        <td>江、浙、沪地区首重为15元/KG，其他地区18元/KG，续重均为5-6元/KG， 云南地区为8元</td>
                        <td align="center">￥15.00</td>
                        <td align="center">￥0.00</td>
                        <td align="center">不支持保价</td>
                    </tr>
                    <tr>
                        <td align="center"><input type="checkbox" name="ch" /></td>
                        <td align="center" style="font-size:14px;"><b>城际快递</b></td>
                        <td>运费固定</td>
                        <td align="center">￥15.00</td>
                        <td align="center">￥0.00</td>
                        <td align="center">不支持保价</td>
                    </tr>
                    <tr>
                        <td align="center"><input type="checkbox" name="ch" /></td>
                        <td align="center" style="font-size:14px;"><b>邮局平邮</b></td>
                        <td>运费固定</td>
                        <td align="center">￥15.00</td>
                        <td align="center">￥0.00</td>
                        <td align="center">不支持保价</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <span class="fr"><label class="r_rad"><input type="checkbox" name="baojia" /></label><label class="r_txt">配送是否需要保价</label></span>
                        </td>
                    </tr>
                </table>

                <div class="two_t">
                    支付方式
                </div>
                <ul class="pay">
                    <li class="checked">余额支付<div class="ch_img"></div></li>
                    <li>银行亏款/转账<div class="ch_img"></div></li>
                    <li>货到付款<div class="ch_img"></div></li>
                    <li>支付宝<div class="ch_img"></div></li>
                </ul>

                <table id="sumToPay" border="0" style="width:900px; margin-top:20px;" cellspacing="0" cellpadding="0">
                </table>

            </div>
        </div>
        <!--End 第二步：确认订单信息 End-->

        <!--Begin Footer Begin -->
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
        <!--End Footer End -->
    </div>

</body>

<script type="text/javascript">

    $(function () {
        alert("开始carts_order_confirm页面的操作")
        showCartOrderConfirmList(queryString("goodsid"));
        showUserImformation();
    })

    function queryString(key) {//解出keyword的值
        alert("可以进入queryString(key)");
        key = key.replace(/[*+?^$.\[\]{}()|\\\/]/g, "\\$&"); // escape RegEx meta chars
        var match = location.search.match(new RegExp("[?&]" + key + "=([^&]+)(&|$)"));
        alert("match="+match);
        return match && decodeURIComponent(match[1].replace(/\+/g, " "));
    }

    function showCartOrderConfirmList(goodsid) {
        alert("goodsid="+goodsid);
        if(goodsid == 0){
            showCartOrderConfirmListAll();
        }else{
            showCartOrderConfirmListSingle(goodsid);
        }
    }

    function showCartOrderConfirmListAll() {
        $.ajax({
            url: "${pageContext.request.contextPath}/query_cartitems",
            type: "GET",
            success: function (result) {
                if(result.code == 1){
                    var carts = result.extend.cartitems;//遍历msg中存的数据
                    if (carts.length == 0) {//购物车个数为0
                        alert("您的购物车没有任何商品")
                    } else {
                        var price_sum = 0;
                        //                              alert("开始遍历")
                        $.each(carts, function (index, item) {
                            price_sum += item.goodsamount * item.goods.price;
                            var imageAndName = $("" +
                                "<td  class=\"car_th\" width=\"490\"  align=\"center\"> " +
                                "   <div class=\"c_s_img\"><img src=\"/images/"+item.goods.indexphotourl+"\" width=\"73\" height=\"73\" /></div>" +item.goods.goodsname+
                                "</td> " );
                            var color = $("<td  class=\"car_th\" align=\"center\">颜色：灰色</td> ");
                            var amount = $("<td  class=\"car_th\" align=\"center\"> " +  item.goodsamount + "</td> ");
                            var price = $("<td  class=\"car_th\" align=\"center\" style=\"color:#ff4e00;\">￥" + item.goods.price + "</td> ");
                            var jifen=$("<td class=\"car_th\" align=\"center\">26R</td> ");

                            $("<tr></tr>").append(imageAndName)
                                .append(color)
                                .append(amount)
                                .append(price)
                                .append(jifen)
                                .appendTo("#cartitem_lists3");
                        })

                        var sumToPaysum = $("<td align=\"right\"> <b style=\"font-size:14px;\">应付款金额：<span style=\"font-size:22px; color:#ff4e00;\">￥" + price_sum+"</span></b></td>");

                        var sumToPayphoto = $(" <td align=\"right\"><a href=\"#\"><img onclick=\"confirmToOrderOneByOne(" + carts+")\" src=\"images/btn_sure.gif\" /></a></td>");

                        $("<tr></tr>").append(sumToPaysum)
                            .appendTo("#sumToPay")
                        $("<tr></tr>").append(sumToPayphoto)
                            .appendTo("#sumToPay")
                    }
                }else{
                    alert(result.msg)
                }
            }
        })
    }

    function showCartOrderConfirmListSingle(goodsid) {
        $.ajax({
            url: "${pageContext.request.contextPath}/query_cartitem_goodsid",
            type: "GET",
            data:"goodsid="+goodsid,
            success: function (result) {
                if(result.code == 1){
                    alert("result.code=1");
                    var cartitem = result.extend.cartitem;//遍历msg中存的数据
                    if (cartitem == null) {//没有
                        alert("没有了")
                    } else {
//                            alert("cartitem != null")
                        var imageAndName = $("" +
                            "<td  class=\"car_th\" width=\"490\"  align=\"center\"> " +
                            "   <div class=\"c_s_img\"><img src=\"/images/" + cartitem.goods.indexphotourl + "\" width=\"73\" height=\"73\" /></div>" + cartitem.goods.goodsname +
                            "</td> ");

                        var color = $("<td  class=\"car_th\" align=\"center\">颜色：灰色</td> ");
                        var amount = $("" +
                            "<td  class=\"car_th\" align=\"center\"> " + cartitem.goodsamount +
                            "</td> ");
                        var price = $("" +
                            "<td  class=\"car_th\" align=\"center\" style=\"color:#ff4e00;\">￥" + cartitem.goods.price + "</td> ");

                        var jifen = $("<td  class=\"car_th\" align=\"center\">26R</td> ");

                        $("<tr></tr>").append(imageAndName)
                            .append(color)
                            .append(amount)
                            .append(price)
                            .append(jifen)
                            .appendTo("#cartitem_lists3");

                        var sumToPaysum = $("<td align=\"right\"> <b style=\"font-size:14px;\">应付款金额：<span style=\"font-size:22px; color:#ff4e00;\">￥" + cartitem.goodsamount*cartitem.goods.price+"</span></b></td>");

                        var sumToPayphoto = $(" <td align=\"right\"><img onclick=\"confirmToOrder(" +cartitem+
                            ")\" src=\"images/btn_sure.gif\" /></td>");
                        $("<tr></tr>").append(sumToPaysum)
                            .appendTo("#sumToPay");
                        $("<tr></tr>").append(sumToPayphoto)
                            .appendTo("#sumToPay");
                    }
                }else{
                    alert(result.msg);
                }
            }
        })
    }

    function showUserImformation(){
        alert("yes,showUserImformation");
        $.ajax({
            url:"${pageContext.request.contextPath}/get_userimformation",
            type:"GET",
            success:function (result) {
                if(result.code == 1){
                    alert("code =1");
                    var user = result.extend.user;
                    alert("showUserImformation userid="+user.id);
                    var first = ""+
                        "<td class=\"p_td\" width=\"160\" align=\"left\">用户名</td> <td width=\"395\">"+user.username+"</td> " +
                        "<td class=\"p_td\" width=\"160\" align=\"left\">电子邮件</td> <td width=\"395\">"+user.email+"</td>";
                    var second = "" +
                        "<td class=\"p_td\" align=\"left\">地址</td> <td>四川省成都市武侯区</td> " +
                        "<td class=\"p_td\" align=\"left\">电话</td> <td>" + user.tel +"</td>";
                    $("<tr></tr>").append(first)
                        .appendTo("#userimfo");
                    $("<tr></tr>").append(second)
                        .appendTo("#userimfo");
                }
            }
        })
    }

    function confirmToOrderOneByOne(carts) {
//        $.each(carts, function (index, item) {
//            confirmToOrder(item)
//        }
    }

    function confirmToOrder(cartitem) {
        alert("you are going to confirmOrder create an order");
        $.ajax({
            url:"${pageContext.request.contextPath}/add_order",
            type:"POST",
            dataType:"json",
            data:{
                goodsid:cartitem.goodsid,
                goodsamount:cartitem.goodsamount,
            },
            success:function (result) {
                if(result.code == 1){
                    alert("result.code = "+result.code);
                    windows.location.href="${pageContext.request.contextPath}/carts_order_submit";
                }
            }
        })
    }

</script>
</html>
