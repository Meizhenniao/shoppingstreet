<%--
  Created by IntelliJ IDEA.
  User: MeiZhen
  Date: 2019/4/28
  Time: 14:36
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
    <script type="text/javascript" src="js/menu.js"></script>

    <%--<script type="text/javascript" src="js/n_nav.js"></script>--%>

    <script type="text/javascript" src="js/num.js">
        var jq = jQuery.noConflict();
    </script>

    <script type="text/javascript" src="js/shade.js"></script>
    <%--没有这一行$(function)就执行不了，这个是jquery的库--%>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>

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
            <img src="images/img1.jpg" />
        </div>

        <!--Begin 第一步：查看购物车 Begin -->
        <div class="content mar_20">
            <table id="cartitem_lists2" border="0" class="car_tab" style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="car_th" width="490">商品名称</td>
                    <td class="car_th" width="140">属性</td>
                    <td class="car_th" width="150">购买数量</td>
                    <td class="car_th" width="130">小计</td>
                    <td class="car_th" width="140">返还积分</td>
                    <td class="car_th" width="150">操作</td>
                </tr>
            </table>
        </div>
        <!--End 第一步：查看购物车 End-->

        <!--Begin 弹出层-删除商品 Begin-->
        <div id="fade" class="black_overlay"></div>
        <div id="MyDiv" class="white_content">
            <div class="white_d">
                <div class="notice_t">
                    <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="images/close.gif" /></span>
                </div>
                <div class="notice_c">

                    <table border="0" align="center" style="font-size:16px;" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                            <td>您确定要把该商品移除购物车吗？</td>
                        </tr>
                        <tr height="50" valign="bottom">
                            <td><a href="#" class="b_sure">确定</a><a href="#" class="b_buy">取消</a></td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
        <!--End 弹出层-删除商品 End-->


        <!--Begin Footer Begin -->
        <div class="b_btm_bg bg_color">
            <div class="b_btm">
                <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="72"><img src="images/b1.png" width="62" height="62" /></td>
                        <td><h2>正品保障</h2>正品行货  放心购买</td>
                    </tr>
                </table>
                <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="72"><img src="images/b2.png" width="62" height="62" /></td>
                        <td><h2>满38包邮</h2>满38包邮 免运费</td>
                    </tr>
                </table>
                <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="72"><img src="images/b3.png" width="62" height="62" /></td>
                        <td><h2>天天低价</h2>天天低价 畅选无忧</td>
                    </tr>
                </table>
                <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="72"><img src="images/b4.png" width="62" height="62" /></td>
                        <td><h2>准时送达</h2>收货时间由你做主</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="b_nav">
            <dl>
                <dt><a href="#">新手上路</a></dt>
                <dd><a href="#">售后流程</a></dd>
                <dd><a href="#">购物流程</a></dd>
                <dd><a href="#">订购方式</a></dd>
                <dd><a href="#">隐私声明</a></dd>
                <dd><a href="#">推荐分享说明</a></dd>
            </dl>
            <dl>
                <dt><a href="#">配送与支付</a></dt>
                <dd><a href="#">货到付款区域</a></dd>
                <dd><a href="#">配送支付查询</a></dd>
                <dd><a href="#">支付方式说明</a></dd>
            </dl>
            <dl>
                <dt><a href="#">会员中心</a></dt>
                <dd><a href="#">资金管理</a></dd>
                <dd><a href="#">我的收藏</a></dd>
                <dd><a href="#">我的订单</a></dd>
            </dl>
            <dl>
                <dt><a href="#">服务保证</a></dt>
                <dd><a href="#">退换货原则</a></dd>
                <dd><a href="#">售后服务保证</a></dd>
                <dd><a href="#">产品质量保证</a></dd>
            </dl>
            <dl>
                <dt><a href="#">联系我们</a></dt>
                <dd><a href="#">网站故障报告</a></dd>
                <dd><a href="#">购物咨询</a></dd>
                <dd><a href="#">投诉与建议</a></dd>
            </dl>
            <div class="b_tel_bg">
                <a href="#" class="b_sh1">新浪微博</a>
                <a href="#" class="b_sh2">腾讯微博</a>
                <p>
                    服务热线：<br />
                    <span>400-123-4567</span>
                </p>
            </div>
            <div class="b_er">
                <div class="b_er_c"><img src="images/er.gif" width="118" height="118" /></div>
                <img src="images/ss.png" />
            </div>
        </div>
        <div class="btmbg">
            <div class="btm">
                备案/许可证编号：京ICP备070360号   Copyright © 2016-2019 购物街 All Rights Reserved. 复制必究 , Technical Support: ICT Group <br />
                <img src="images/b_1.gif" width="98" height="33" /><img src="images/b_2.gif" width="98" height="33" /><img src="images/b_3.gif" width="98" height="33" /><img src="images/b_4.gif" width="98" height="33" /><img src="images/b_5.gif" width="98" height="33" /><img src="images/b_6.gif" width="98" height="33" />
            </div>
        </div>
        <!--End Footer End -->
    </div>

</body>


<script type="text/javascript">

    $(function () {
        alert("开始找");
        showBigCartList();
    })

    function showBigCartList() {
        $.ajax({
            url: "${pageContext.request.contextPath}/get_cartitems",
            type: "GET",
            success: function (result) {
                if(result.code == 1){
                    var carts = result.extend.cartitems;//遍历msg中存的数据
                    if (carts.length == 0) {//购物车个数为0
                        alert("您的购物车没有任何商品")
                    } else {
                        var price_sum = 0;
                        $.each(carts, function (index, item) {
                            price_sum += item.goodsamount * item.goods.price;
//                            alert("开始遍历")
                            var imageAndName = $("" +
                                "<td  class=\"car_th\" width=\"490\"align=\"center\"> " +
                                "   <div class=\"c_s_img\"><img src=\"/images/"+item.goods.indexphotourl+"\" width=\"73\" height=\"73\" /></div>" +item.goods.goodsname+
                                "</td> " )

                            var color=$("<td class=\"car_th\" width=\"140\" align=\"center\">颜色：灰色</td> ")
                            var addAndSub=$("" +
                                "<td class=\"car_th\" width=\"150\"align=\"center\"> " +
                                "   <div class=\"c_num\">" +
                                "       <input type=\"button\" onclick=\"subToCart(jq(this)," +item.goodsid +
                                ");\" class=\"car_btn_1\" />" +
                                "       <input type=\"text\" value=\"" + item.goodsamount +"\" class=\"car_ipt\" /> " +
                                "       <input type=\"button\"  onclick=\"addToCart(jq(this)," + +item.goodsid +
                                ");\" class=\"car_btn_2\" />" +
                                "   </div> " +
                                "</td> ")
//                            var price= $("￥" + item.goods.price)
                            var price= $("" +
                                "<td  class=\"car_th\" width=\"130\" align=\"center\" style=\"color:#ff4e00;\">￥" + item.goods.price + "</td> ")
//                            var jifen=$("26R")
                            var jifen=$("<td class=\"car_th\" width=\"140\" align=\"center\">26R</td> ")
//                            var delOrBuy=$("<a href=\"#\">删除</a>&nbsp; &nbsp;<a href=\"#\">购买</a>")
                            var delOrBuy=$("" +
                                "<td class=\"car_th\" width=\"150\" align=\"center\">" +
                                "   <a href=\"#\" onclick=\"delToCart(" + item.goodsid +
                                ")\">删除</a>&nbsp; &nbsp;<a href=\"#\">购买</a>" +
                                "</td>")

                            $("<tr></tr>").append(imageAndName)
                                .append(color)
                                .append(addAndSub)
                                .append(price)
                                .append(jifen)
                                .append(delOrBuy)
                                .appendTo("#cartitem_lists2")
                        })
                        var total = $("" +
                            "<td colspan=\"6\" style=\"font-family:'Microsoft YaHei'; border-bottom:0;\"> " +
                            "   <label onclick=\"delAllCarts()\" class=\"r_txt\">清空购物车</label> " +
                            "   <span class=\"fr\">商品总价：<b style=\"font-size:22px; color:#ff4e00;\">￥"+price_sum+"</b></span>" +
                            "   <div id=\"cartitem_totalprice2\" class=\"price_sum\"> </div> " +
                            "</td>")
                        $("<tr></tr>").append(total)
                            .appendTo("#cartitem_lists2")
                        var buytotal = $("" +
                            "<td colspan=\"6\" align=\"right\">" +
                            "   <a href=\"#\"><img src=\"images/buy1.gif\" /></a>&nbsp; &nbsp; " +
                            "   <a href=\"#\"><img src=\"images/buy2.gif\" /></a> " +
                            "</td>")
                        $("<tr></tr>").append(buytotal)
                            .appendTo("#cartitem_lists2")
                    }
                }else{

                }
            }
        })

    }


</script>

</html>
