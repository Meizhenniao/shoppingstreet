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
    <script type="text/javascript" src="js/menu.js"></script>

    <%--没有这一行$(function)就执行不了，这个是jquery的库--%>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>

    <%--<script type="text/javascript" src="js/n_nav.js"></script>--%>

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
                <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="car_th" width="550">商品名称</td>
                        <td class="car_th" width="140">属性</td>
                        <td class="car_th" width="150">购买数量</td>
                        <td class="car_th" width="130">小计</td>
                        <td class="car_th" width="140">返还积分</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="c_s_img"><img src="images/c_1.jpg" width="73" height="73" /></div>
                            Rio 锐澳 水蜜桃味白兰地鸡尾酒（预调酒） 275ml
                        </td>
                        <td align="center">颜色：灰色</td>
                        <td align="center">1</td>
                        <td align="center" style="color:#ff4e00;">￥620.00</td>
                        <td align="center">26R</td>
                    </tr>
                    <tr class="car_tr">
                        <td>
                            <div class="c_s_img"><img src="images/c_2.jpg" width="73" height="73" /></div>
                            Rio 锐澳 水蜜桃味白兰地鸡尾酒（预调酒） 275ml
                        </td>
                        <td align="center">颜色：灰色</td>
                        <td align="center">1</td>
                        <td align="center" style="color:#ff4e00;">￥620.00</td>
                        <td align="center">26R</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="c_s_img"><img src="images/c_3.jpg" width="73" height="73" /></div>
                            Rio 锐澳 水蜜桃味白兰地鸡尾酒（预调酒） 275ml
                        </td>
                        <td align="center">颜色：灰色</td>
                        <td align="center">1</td>
                        <td align="center" style="color:#ff4e00;">￥620.00</td>
                        <td align="center">26R</td>
                    </tr>
                    <tr>
                        <td colspan="5" align="right" style="font-family:'Microsoft YaHei';">
                            商品总价：￥1899.00 ； 返还积分 56R
                        </td>
                    </tr>
                </table>

                <div class="two_t">
                    <span class="fr"><a href="#">修改</a></span>收货人信息
                </div>
                <table border="0" class="peo_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="p_td" width="160">商品名称</td>
                        <td width="395">海贼王</td>
                        <td class="p_td" width="160">电子邮件</td>
                        <td width="395">12345678@qq.com</td>
                    </tr>
                    <tr>
                        <td class="p_td">详细信息</td>
                        <td>四川省成都市武侯区</td>
                        <td class="p_td">邮政编码</td>
                        <td>6011111</td>
                    </tr>
                    <tr>
                        <td class="p_td">电话</td>
                        <td></td>
                        <td class="p_td">手机</td>
                        <td>18600002222</td>
                    </tr>
                    <tr>
                        <td class="p_td">标志建筑</td>
                        <td></td>
                        <td class="p_td">最佳送货时间</td>
                        <td></td>
                    </tr>
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

                <div class="two_t">
                    商品包装
                </div>
                <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="car_th" width="80"></td>
                        <td class="car_th" width="490">名称</td>
                        <td class="car_th" width="180">费用</td>
                        <td class="car_th" width="180">免费额度</td>
                        <td class="car_th" width="180">图片</td>
                    </tr>
                    <tr>
                        <td align="center"><input type="checkbox" name="pack" checked="checked" /></td>
                        <td><b style="font-size:14px;">不要包装</b></td>
                        <td align="center">￥15.00</td>
                        <td align="center">￥0.00</td>
                        <td align="center"></td>
                    </tr>
                    <tr>
                        <td align="center"><input type="checkbox" name="pack" /></td>
                        <td><b style="font-size:14px;">精品包装</b></td>
                        <td align="center">￥15.00</td>
                        <td align="center">￥0.00</td>
                        <td align="center"><a href="#" style="color:#ff4e00;">查看</a></td>
                    </tr>
                </table>

                <div class="two_t">
                    祝福贺卡
                </div>
                <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="car_th" width="80"></td>
                        <td class="car_th" width="490">名称</td>
                        <td class="car_th" width="180">费用</td>
                        <td class="car_th" width="180">免费额度</td>
                        <td class="car_th" width="180">图片</td>
                    </tr>
                    <tr>
                        <td align="center"><input type="checkbox" name="wish" checked="checked" /></td>
                        <td><b style="font-size:14px;">不要贺卡</b></td>
                        <td align="center">￥15.00</td>
                        <td align="center">￥0.00</td>
                        <td align="center"></td>
                    </tr>
                    <tr>
                        <td align="center" style="border-bottom:0; padding-bottom:0;"><input type="checkbox" name="wish" /></td>
                        <td style="border-bottom:0; padding-bottom:0;"><b style="font-size:14px;">祝福贺卡</b></td>
                        <td align="center" style="border-bottom:0; padding-bottom:0;">￥15.00</td>
                        <td align="center" style="border-bottom:0; padding-bottom:0;">￥0.00</td>
                        <td align="center" style="border-bottom:0; padding-bottom:0;"><a href="#" style="color:#ff4e00;">查看</a></td>
                    </tr>
                    <tr valign="top">
                        <td align="center"></td>
                        <td colspan="4">
                            <span class="fl"><b style="font-size:14px;">祝福语：</b></span>
                            <span class="fl"><textarea class="add_txt" style="width:860px; height:50px;"></textarea></span>
                        </td>
                    </tr>
                </table>

                <div class="two_t">
                    其他信息
                </div>
                <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="145" align="right" style="padding-right:0;"><b style="font-size:14px;">使用红包：</b></td>
                        <td>
                            <span class="fl" style="margin-left:50px; margin-right:10px;">选择已有红包</span>
                            <select class="jj" name="city">
                                <option value="0" selected="selected">请选择</option>
                                <option value="1">50元</option>
                                <option value="2">30元</option>
                                <option value="3">20元</option>
                                <option value="4">10元</option>
                            </select>
                            <span class="fl" style="margin-left:50px; margin-right:10px;">或者输入红包序列号</span>
                            <span class="fl"><input type="text" value="" class="c_ipt" style="width:220px;" />
                        <span class="fr" style="margin-left:10px;"><input type="submit" value="验证红包" class="btn_tj" /></span>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td align="right" style="padding-right:0;"><b style="font-size:14px;">订单附言：</b></td>
                        <td style="padding-left:0;"><textarea class="add_txt" style="width:860px; height:50px;"></textarea></td>
                    </tr>
                    <tr>
                        <td align="right" style="padding-right:0;"><b style="font-size:14px;">缺货处理：</b></td>
                        <td>
                            <label class="r_rad"><input type="checkbox" name="none" checked="checked" /></label><label class="r_txt" style="margin-right:50px;">等待所有商品备齐后再发</label>
                            <label class="r_rad"><input type="checkbox" name="none" /></label><label class="r_txt" style="margin-right:50px;">取下订单</label>
                            <label class="r_rad"><input type="checkbox" name="none" /></label><label class="r_txt" style="margin-right:50px;">与店主协商</label>
                        </td>
                    </tr>
                </table>

                <table border="0" style="width:900px; margin-top:20px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="right">
                            该订单完成后，您将获得 <font color="#ff4e00">1815</font> 积分 ，以及价值 <font color="#ff4e00">￥0.00</font> 的红包 <br />
                            商品总价: <font color="#ff4e00">￥1815.00</font>  + 配送费用: <font color="#ff4e00">￥15.00</font>
                        </td>
                    </tr>
                    <tr height="70">
                        <td align="right">
                            <b style="font-size:14px;">应付款金额：<span style="font-size:22px; color:#ff4e00;">￥2899</span></b>
                        </td>
                    </tr>
                    <tr height="70">
                        <td align="right"><a href="#"><img src="images/btn_sure.gif" /></a></td>
                    </tr>
                </table>



            </div>
        </div>
        <!--End 第二步：确认订单信息 End-->


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
    <%--$(function () {--%>
        <%--showCartOrderConfirmList(queryString("goodsid"));--%>
    <%--})--%>

    <%--function queryString(key) {//解出keyword的值--%>
        <%--key = key.replace(/[*+?^$.\[\]{}()|\\\/]/g, "\\$&"); // escape RegEx meta chars--%>
        <%--var match = location.search.match(new RegExp("[?&]" + key + "=([^&]+)(&|$)"));--%>
        <%--return match && decodeURIComponent(match[1].replace(/\+/g, " "));--%>
    <%--}--%>
    <%--function showCartOrderConfirmList(goodsid) {--%>
        <%--$.ajax({--%>
            <%--url: "${pageContext.request.contextPath}/query_cartitems_goodsid",--%>
            <%--type: "GET",--%>
            <%--data:"goodsid="+goodsid,--%>
            <%--success: function (result) {--%>
                <%--if(result.code == 1){--%>
                    <%--var carts = result.extend.cartitems;//遍历msg中存的数据--%>
                    <%--if (carts.length == 0) {//购物车个数为0--%>
                        <%--alert("???")--%>
                    <%--} else {--%>
                        <%--var price_sum = 0;--%>
                        <%--$.each(carts, function (index, item) {--%>
                            <%--price_sum += item.goodsamount * item.goods.price;--%>
<%--//                            alert("开始遍历")--%>
                            <%--var imageAndName = $("" +--%>
                                <%--"<td  class=\"car_th\" width=\"490\"align=\"center\"> " +--%>
                                <%--"   <div class=\"c_s_img\"><img src=\"/images/"+item.goods.indexphotourl+"\" width=\"73\" height=\"73\" /></div>" +item.goods.goodsname+--%>
                                <%--"</td> " )--%>

                            <%--var color=$("<td class=\"car_th\" width=\"140\" align=\"center\">颜色：灰色</td> ")--%>
                            <%--var addAndSub=$("" +--%>
                                <%--"<td class=\"car_th\" width=\"150\"align=\"center\"> " +--%>
                                <%--"   <div class=\"c_num\">" +--%>
                                <%--"       <input type=\"button\" onclick=\"subToCart(jq(this)," +item.goodsid +--%>
                                <%--");\" class=\"car_btn_1\" />" +--%>
                                <%--"       <input type=\"text\" value=\"" + item.goodsamount +"\" class=\"car_ipt\" /> " +--%>
                                <%--"       <input type=\"button\"  onclick=\"addToCart(jq(this)," + +item.goodsid +--%>
                                <%--");\" class=\"car_btn_2\" />" +--%>
                                <%--"   </div> " +--%>
                                <%--"</td> ")--%>
<%--//                            var price= $("￥" + item.goods.price)--%>
                            <%--var price= $("" +--%>
                                <%--"<td  class=\"car_th\" width=\"130\" align=\"center\" style=\"color:#ff4e00;\">￥" + item.goods.price + "</td> ")--%>
<%--//                            var jifen=$("26R")--%>
                            <%--var jifen=$("<td class=\"car_th\" width=\"140\" align=\"center\">26R</td> ")--%>
<%--//                            var delOrBuy=$("<a href=\"#\">删除</a>&nbsp; &nbsp;<a href=\"#\">购买</a>")--%>
                            <%--var delOrBuy=$("" +--%>
                                <%--"<td class=\"car_th\" width=\"150\" align=\"center\">" +--%>
                                <%--"   <a href=\"#\" onclick=\"delToCart(" + item.goodsid +--%>
                                <%--")\">删除</a>&nbsp; &nbsp;<a href=\"/carts_order_confirm?goodsid=" + item.goodsid +--%>
                                <%--"\">购买</a>" +--%>
                                <%--"</td>")--%>
<%--//???在jq里面的jq里面不用再加$  {pageContext.request.contextPath}--%>
                            <%--$("<tr></tr>").append(imageAndName)--%>
                                <%--.append(color)--%>
                                <%--.append(addAndSub)--%>
                                <%--.append(price)--%>
                                <%--.append(jifen)--%>
                                <%--.append(delOrBuy)--%>
                                <%--.appendTo("#cartitem_lists2")--%>
                        <%--})--%>
                        <%--var total = $("" +--%>
                            <%--"<td colspan=\"6\" style=\"font-family:'Microsoft YaHei'; border-bottom:0;\"> " +--%>
                            <%--"   <label onclick=\"delAllCarts()\" class=\"r_txt\">清空购物车</label> " +--%>
                            <%--"   <span class=\"fr\">商品总价：<b style=\"font-size:22px; color:#ff4e00;\">￥"+price_sum+"</b></span>" +--%>
                            <%--"   <div id=\"cartitem_totalprice2\" class=\"price_sum\"> </div> " +--%>
                            <%--"</td>")--%>
                        <%--$("<tr></tr>").append(total)--%>
                            <%--.appendTo("#cartitem_lists2")--%>
                        <%--var buytotal = $("" +--%>
                            <%--"<td colspan=\"6\" align=\"right\">" +--%>
                            <%--"   <a href=\"#\"><img src=\"images/buy1.gif\" /></a>&nbsp; &nbsp; " +--%>
                            <%--"   <a href=\"#\"><img src=\"images/buy2.gif\" /></a> " +--%>
                            <%--"</td>")--%>
                        <%--$("<tr></tr>").append(buytotal)--%>
                            <%--.appendTo("#cartitem_lists2")--%>
                    <%--}--%>
                <%--}else{--%>

                <%--}--%>
            <%--}--%>
        <%--})--%>

    <%--}--%>
</script>
</html>
