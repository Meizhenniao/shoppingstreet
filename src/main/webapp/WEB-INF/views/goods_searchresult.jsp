<%--
  Created by IntelliJ IDEA.
  User: MeiZhen
  Date: 2019/4/25
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        EvPNG.fix('div, ul, img, li, input, a');
    </script>
    <![endif]-->

    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>

    <script type="text/javascript" src="js/lrscroll_1.js"></script>


    <%--<script type="text/javascript" src="js/n_nav.js"></script>--%>

    <title>购物街</title>
</head>
<body>

<!--Begin Header Begin-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--End Header End-->

    <%--Start Menu Start--%>
    <%@ include file="/WEB-INF/views/include/menu_hide.jsp" %>
    <!--End Menu End-->

<div class="i_bg">

    <div class="postion">
        <span class="fl">全部 > 美妆个护 > 香水 > </span>
        <span class="n_ch">
                <span class="fl">品牌：<font>香奈儿</font></span>
                <a href="#"><img src="images/s_close.gif"/></a>
            </span>
    </div>


    <!--Begin 筛选条件 Begin-->
    <div class="content mar_10">
        <table border="0" class="choice" style="width:100%; font-family:'宋体'; margin:0 auto;" cellspacing="0"
               cellpadding="0">
            <tr valign="top">
                <td width="70">&nbsp; 品牌：</td>
                <td class="td_a"><a href="#" class="now">香奈儿（Chanel）</a><a href="#">迪奥（Dior）</a><a
                        href="#">范思哲（VERSACE）</a><a href="#">菲拉格慕（Ferragamo）</a><a href="#">兰蔻（LANCOME）</a><a href="#">爱马仕（HERMES）</a><a
                        href="#">卡文克莱（Calvin Klein）</a><a href="#">古驰（GUCCI）</a><a href="#">宝格丽（BVLGARI）</a><a href="#">阿迪达斯（Adidas）</a><a
                        href="#">卡尔文·克莱恩（CK）</a><a href="#">凌仕（LYNX）</a><a href="#">大卫杜夫（Davidoff）</a><a href="#">安娜苏（Anna
                    sui）</a><a href="#">阿玛尼（ARMANI）</a><a href="#">娇兰（Guerlain）</a></td>
            </tr>
            <tr valign="top">
                <td>&nbsp; 价格：</td>
                <td class="td_a"><a href="#">0-199</a><a href="#" class="now">200-399</a><a href="#">400-599</a><a
                        href="#">600-899</a><a href="#">900-1299</a><a href="#">1300-1399</a><a href="#">1400以上</a></td>
            </tr>
            <tr>
                <td>&nbsp; 类型：</td>
                <td class="td_a"><a href="#">女士香水</a><a href="#">男士香水</a><a href="#">Q版香水</a><a href="#">组合套装</a><a
                        href="#">香体走珠</a><a href="#">其它</a></td>
            </tr>
            <tr>
                <td>&nbsp; 香型：</td>
                <td class="td_a"><a href="#">浓香水</a><a href="#">香精Parfum香水</a><a href="#">淡香精EDP淡香水</a><a
                        href="#">香露EDT</a><a href="#">古龙水</a><a href="#">其它</a></td>
            </tr>
        </table>
    </div>
    <!--End 筛选条件 End-->

    <div class="content mar_20">
        <div class="l_history">
            <div class="his_t">
                <span class="fl">浏览历史</span>
                <span class="fr"><a href="#">清空</a></span>
            </div>
            <ul>
                <li>
                    <div class="img"><a href="#"><img src="images/his_1.jpg" width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="images/his_2.jpg" width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>768.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="images/his_3.jpg" width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>680.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="images/his_4.jpg" width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="images/his_5.jpg" width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
            </ul>
        </div>
        <div class="l_list">
            <div class="list_t">
                    <span class="fl list_or">
                        <a href="#" class="now">默认</a>
                        <a href="#">
                            <span class="fl">销量</span>
                            <span class="i_up">销量从低到高显示</span>
                            <span class="i_down">销量从高到低显示</span>
                        </a>
                        <a href="#">
                            <span class="fl">价格</span>
                            <span class="i_up">价格从低到高显示</span>
                            <span class="i_down">价格从高到低显示</span>
                        </a>
                        <a href="#">新品</a>
                    </span>
                <span class="fr">共发现120件</span>
            </div>
            <div class="list_c">

                <ul id="goods" class="cate_list">

                </ul>

                <div class="pages">
                    <a href="#" class="p_pre">上一页</a><a href="#" class="cur">1</a><a href="#">2</a><a
                        href="#">3</a>...<a href="#">20</a><a href="#" class="p_pre">下一页</a>
                </div>


            </div>
        </div>
    </div>

    <!--begin footer -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!--end footer  -->
</div>

</body>


<script type="text/javascript">

    $(function () {
        search_res(queryString("keyword"), 1)//???
    })

    function queryString(key) {//解出keyword的值
        key = key.replace(/[*+?^$.\[\]{}()|\\\/]/g, "\\$&"); // escape RegEx meta chars
        var match = location.search.match(new RegExp("[?&]" + key + "=([^&]+)(&|$)"));
        return match && decodeURIComponent(match[1].replace(/\+/g, " "));
    }

    function search_res(keyword, page) {//keyword 和page
        $.ajax({
            url: "${pageContext.request.contextPath}/query_goodslist_namelike",
            type: "POST",
            data: "keyword=" + keyword,
            success: function (result) {
                // 显示商品列表数据
                showGoodItem(result);
                //显示导航条数据
                showPageInfo(result);
            }
        })
    }

    function showGoodItem(result) {
        $("#goods").empty();
        var goods = result.extend.pageInfo.list;
        $.each(goods, function (index, item) {//???如何把item传到goodsdeatil.jsp中
            var goodImage = $(" <div class=\"img\"><a href=\"goods_detail?goodsid=" + item.id +
                "\"><img src=\"images/" + item.indexphotourl +
                "\" width=\"210\" height=\"185\" /></a></div>")
            var goodPrice = $("<div class=\"price\"><font color=\"#ff4e00\">￥" + item.price + "</font></div>")
            var goodName = $("<div class=\"name\"><a href=\"goods_detail?goodsid=" + item.id +
                "\">" + item.goodsname + "</a></div>")
            var goodCart = $("<div class=\"carbg\">\n" +
                "<a href=\"#\" class=\"ss\">收藏</a>\n" +
                "<a onclick=\"isLogin(" + item.id +
                ")\" class=\"j_car\">加入购物车</a>\n" +
                "</div>")
            $("<li></li>").append(goodImage)
                .append(goodPrice)
                .append(goodName)
                .append(goodCart)
                .appendTo("#goods")
        })
    }

    //???哪里的导航条
    function showPageInfo(result) {

    }

    //判断是否已经登录，没有登录则提示没有登录
    function isLogin(id) {
        $.ajax({
            url: "${pageContext.request.contextPath}/islogin",
            type: "GET",
            success: function (result) {
                if (result.code == 1) {
                    alert("已登录")
                    addToCart(id)
                } else {
                    alert("没登录")//???这里应该要问用户要不要登录，登陆后还要返回这个页面
                }
            }
        })
    }

    function addToCart(id) {
        alert("id=" + id);
        $.ajax({
            url: "${pageContext.request.contextPath}/add_cart",
            type: "POST",
            data: "goodsid=" + id,
            success: function (result) {
                alert("msg=" + result.msg)//???这里要是出错了都不会提示吗，直接停止执行?
                if (result.code == 1) {
                    alert("加入购物车成功")
                    window.location.reload();
                } else {
                    alert(result.msg);
                }
            }
        })
    }
</script>
</html>
