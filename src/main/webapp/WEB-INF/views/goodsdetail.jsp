<%--
  Created by IntelliJ IDEA.
  User: MeiZhen
  Date: 2019/4/26
  Time: 1:08
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

    <%--没有这一行$(function)就执行不了，这个是jquery的库--%>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>

    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>

    <script type="text/javascript" src="js/lrscroll_1.js"></script>
    <script type="text/javascript" src="js/n_nav.js"></script>

    <link rel="stylesheet" type="text/css" href="css/ShopShow.css" />
    <link rel="stylesheet" type="text/css" href="css/MagicZoom.css" />
    <script type="text/javascript" src="js/MagicZoom.js"></script>

    <script type="text/javascript" src="js/num.js">
        var jq = jQuery.noConflict();
    </script>

    <script type="text/javascript" src="js/p_tab.js"></script>

    <script type="text/javascript" src="js/shade.js"></script>
    <%--关于商品详情的js  原先是ShopShow.js--%>
    <script type="text/javascript" src="js/a_goodsimfo_detail.js"></script>
    <title>购物街</title>
</head>

<body>
    <!--Begin Header Begin-->
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!--End Header End-->

    <!--Begin Menu Begin-->
    <%@ include file="/WEB-INF/views/include/menu.jsp" %>
    <!--End Menu End-->


    <div class="i_bg">

        <%-->类别>类别>类别--%>
        <div class="postion">
            <span class="fl">全部 > 美妆个护 > 香水 > 迪奥 > 迪奥真我香水</span>
        </div>

        <%--图片+参数等文字--%>
        <div class="content">
            <div id="tsShopContainer">
                <%--主页图片--%>
                <div id="tsImgS">
                    <%--<a title="Images" class="MagicZoom" id="dtIndexPhoto">--%>
                        <%--1 dtIndexPhoto---append img--%>
                        <%--<img src="images/p_big.jpg" width="390" height="390" />--%>
                    <%--</a>--%>
                </div>
                <%--其他图片--%>
                <div id="tsPicContainer">
                    <div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
                    <div id="tsImgSCon">
                        <%--2 dtMorePhoto---append li--%>
                        <ul id="dtMorePhoto">
                            <li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img src="images/ps1.jpg" tsImgS="images/ps1.jpg" width="79" height="79" /></li>
                            <li onclick="showPic(1)" rel="MagicZoom"><img src="images/ps2.jpg" tsImgS="images/ps2.jpg" width="79" height="79" /></li>
                            <li onclick="showPic(2)" rel="MagicZoom"><img src="images/ps3.jpg" tsImgS="images/ps3.jpg" width="79" height="79" /></li>
                            <li onclick="showPic(3)" rel="MagicZoom"><img src="images/ps4.jpg" tsImgS="images/ps4.jpg" width="79" height="79" /></li>
                            <li onclick="showPic(4)" rel="MagicZoom"><img src="images/ps1.jpg" tsImgS="images/ps1.jpg" width="79" height="79" /></li>
                            <li onclick="showPic(5)" rel="MagicZoom"><img src="images/ps2.jpg" tsImgS="images/ps2.jpg" width="79" height="79" /></li>
                            <li onclick="showPic(6)" rel="MagicZoom"><img src="images/ps3.jpg" tsImgS="images/ps3.jpg" width="79" height="79" /></li>
                            <li onclick="showPic(7)" rel="MagicZoom"><img src="images/ps4.jpg" tsImgS="images/ps4.jpg" width="79" height="79" /></li>
                        </ul>
                    </div>
                    <div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
                </div>
                <img class="MagicZoomLoading" width="16" height="16" src="images/loading.gif" alt="Loading..." />
            </div>
            <%--文字--%>
            <div class="pro_des" >
                <%--3  dtGoodsName---append p--%>
                <div class="des_name" id="dtGoodsName">
                    <%--<p>Dior/迪奥 真我香水EDP 克丽丝汀迪奥 全新 30ml</p>--%>
                    <%--“开业巨惠，北京专柜直供”，不光低价，“真”才靠谱！--%>
                </div>
                <%--dtGoodsPrice--- append b--%>
                <div class="des_price" id="dtGoodsPrice">
                </div>
                <div class="des_choice">
                    <span class="fl">型号选择：</span>
                    <ul>
                        <li class="checked">30ml<div class="ch_img"></div></li>
                        <li>50ml<div class="ch_img"></div></li>
                        <li>100ml<div class="ch_img"></div></li>
                    </ul>
                </div>
                <div class="des_choice">
                    <span class="fl">颜色选择：</span>
                    <ul>
                        <li>红色<div class="ch_img"></div></li>
                        <li class="checked">白色<div class="ch_img"></div></li>
                        <li>黑色<div class="ch_img"></div></li>
                    </ul>
                </div>
                <div class="des_share">
                    <div class="d_sh">
                        分享
                        <div class="d_sh_bg">
                            <a href="#"><img src="images/sh_1.gif" /></a>
                            <a href="#"><img src="images/sh_2.gif" /></a>
                            <a href="#"><img src="images/sh_3.gif" /></a>
                            <a href="#"><img src="images/sh_4.gif" /></a>
                            <a href="#"><img src="images/sh_5.gif" /></a>
                        </div>
                    </div>
                    <div class="d_care"><a onclick="ShowDiv('MyDiv','fade')">关注商品</a></div>
                </div>
                <%--监听按钮点击加入购物车--%>
                <div class="des_join">
                    <div class="j_nums">
                        <input type="text" value="0" name="" class="n_ipt" />
                        <%--<input type="button" value="" onclick="addUpdate(jq(this));" class="n_btn_1" />--%>
                        <input type="button" value="" onclick="addUpdate(jq(this));" class="n_btn_1" />
                        <input type="button" value="" onclick="jianUpdate(jq(this));" class="n_btn_2" />
                    </div>
                    <span class="fl">
                        <c:if test="${sessionScope.user==null}">
                            <img onclick="unloginAdd()" src="images/j_car.png" />
                        </c:if>
                        <c:if test="${sessionScope.user!=null}">
                            <img onclick="loginedAdd()" src="images/j_car.png" />
                        </c:if>
                    </span>

                </div>
            </div>

            <div class="s_brand">
                <div class="s_brand_img"><img src="images/sbrand.jpg" width="188" height="132" /></div>
                <div class="s_brand_c"><a href="#">进入品牌专区</a></div>
            </div>


        </div>

        <%--用户还喜欢--%>
        <div class="content mar_20">
            <%--用户还喜欢--%>
            <div class="l_history">
                <div class="fav_t">用户还喜欢</div>
                <ul>
                    <li>
                        <div class="img"><a href="#"><img src="images/his_1.jpg" width="185" height="162" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <font>￥<span>368.00</span></font> &nbsp; 18R
                        </div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="images/his_1.jpg" width="185" height="162" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <font>￥<span>368.00</span></font> &nbsp; 18R
                        </div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="images/his_1.jpg" width="185" height="162" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <font>￥<span>368.00</span></font> &nbsp; 18R
                        </div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="images/his_1.jpg" width="185" height="162" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <font>￥<span>368.00</span></font> &nbsp; 18R
                        </div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="images/his_1.jpg" width="185" height="162" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <font>￥<span>368.00</span></font> &nbsp; 18R
                        </div>
                    </li>
                </ul>
            </div>
            <%--商品详情、介绍、评论--%>
            <div class="l_list">
                <%--推荐搭配--%>
                <div class="des_border">
                    <div class="des_tit">
                        <ul>
                            <li class="current">推荐搭配</li>
                        </ul>
                    </div>
                    <div class="team_list">
                        <div class="img"><a href="#"><img src="images/mat_1.jpg" width="160" height="140" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <div class="checkbox"><input type="checkbox" name="zuhe" checked="checked" /></div>
                            <font>￥<span>768.00</span></font> &nbsp; 18R
                        </div>
                    </div>
                    <div class="team_icon"><img src="images/jia_b.gif" /></div>
                    <div class="team_list">
                        <div class="img"><a href="#"><img src="images/mat_1.jpg" width="160" height="140" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <div class="checkbox"><input type="checkbox" name="zuhe" checked="checked" /></div>
                            <font>￥<span>768.00</span></font> &nbsp; 18R
                        </div>
                    </div>
                    <div class="team_icon"><img src="images/jia_b.gif" /></div>
                    <div class="team_list">
                        <div class="img"><a href="#"><img src="images/mat_1.jpg" width="160" height="140" /></a></div>
                        <div class="name"><a href="#">不管</a></div>
                        <div class="price">
                            <div class="checkbox"><input type="checkbox" name="zuhe" checked="checked" /></div>
                            <font>￥<span>768.00</span></font> &nbsp; 18R
                        </div>
                    </div>
                    <div class="team_icon"><img src="images/equl.gif" /></div>
                    <div class="team_sum">
                        套餐价：￥<span>1517</span><br />
                        <input type="text" value="1" class="sum_ipt" /><br />
                        <a href="#"><img src="images/z_buy.gif" /></a>
                    </div>
                </div>
                <%--商品详情 品牌属性介绍--%>
                <div class="des_border">
                    <div class="des_tit">
                        <ul>
                            <li class="current"><a href="#p_attribute">商品属性</a></li>
                            <li><a href="#p_details">商品详情</a></li>
                            <li><a href="#p_comment">商品评论</a></li>
                        </ul>
                    </div>
                    <div class="des_con" id="p_attribute">

                        <table border="0" align="center" style="width:100%; font-family:'宋体'; margin:10px auto;" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>商品名称：迪奥香水</td>
                                <td>商品编号：1546211</td>
                                <td>品牌： 迪奥（Dior）</td>
                                <td>上架时间：2015-09-06 09:19:09 </td>
                            </tr>
                            <tr>
                                <td>商品毛重：160.00g</td>
                                <td>商品产地：法国</td>
                                <td>香调：果香调香型：淡香水/香露EDT</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>容量：1ml-15ml </td>
                                <td>类型：女士香水，Q版香水，组合套装</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>


                    </div>
                </div>
                <%--商品详情规格图片等--%>
                <div class="des_border" id="p_details">
                    <div class="des_t">商品详情</div>
                    <div class="des_con">
                        <table border="0" align="center" style="width:745px; font-size:14px; font-family:'宋体';" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="265"><img src="images/de1.jpg" width="206" height="412" /></td>
                                <td>
                                    <b>迪奥真我香水(Q版)</b><br />
                                    【商品规格】：5ml<br />
                                    【商品质地】：液体<br />
                                    【商品日期】：与专柜同步更新<br />
                                    【商品产地】：法国<br />
                                    【商品包装】：无外盒 无塑封<br />
                                    【商品香调】：花束花香调<br />
                                    【适用人群】：适合女性（都市白领，性感，有女人味的成熟女性）<br />
                                </td>
                            </tr>
                        </table>

                        <p align="center">
                            <img src="images/de2.jpg" width="746" height="425" /><br /><br />
                            <img src="images/de3.jpg" width="750" height="417" /><br /><br />
                            <img src="images/de4.jpg" width="750" height="409" /><br /><br />
                            <img src="images/de5.jpg" width="750" height="409" />
                        </p>

                    </div>
                </div>
                <%--商品评论--%>
                <div class="des_border" id="p_comment">
                    <div class="des_t">商品评论</div>

                    <table border="0" class="jud_tab" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="175" class="jud_per">
                                <p>80.0%</p>好评度
                            </td>
                            <td width="300">
                                <table border="0" style="width:100%;" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="90">好评<font color="#999999">（80%）</font></td>
                                        <td><img src="images/pl.gif" align="absmiddle" /></td>
                                    </tr>
                                    <tr>
                                        <td>中评<font color="#999999">（20%）</font></td>
                                        <td><img src="images/pl.gif" align="absmiddle" /></td>
                                    </tr>
                                    <tr>
                                        <td>差评<font color="#999999">（0%）</font></td>
                                        <td><img src="images/pl.gif" align="absmiddle" /></td>
                                    </tr>
                                </table>
                            </td>
                            <td width="185" class="jud_bg">
                                购买过雅诗兰黛第六代特润精华露50ml的顾客，在收到商品才可以对该商品发表评论
                            </td>
                            <td class="jud_bg">您可对已购买商品进行评价<br /><a href="#"><img src="images/btn_jud.gif" /></a></td>
                        </tr>
                    </table>



                    <table border="0" class="jud_list" style="width:100%; margin-top:30px;" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                            <td width="160"><img src="images/peo1.jpg" width="20" height="20" align="absmiddle" />&nbsp;向死而生</td>
                            <td width="180">
                                颜色分类：<font color="#999999">粉色</font> <br />
                                型号：<font color="#999999">50ml</font>
                            </td>
                            <td>
                                产品很好，香味很喜欢，必须给赞。 <br />
                                <font color="#999999">2015-09-24</font>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td width="160"><img src="images/peo2.jpg" width="20" height="20" align="absmiddle" />&nbsp;就是这么想的</td>
                            <td width="180">
                                颜色分类：<font color="#999999">粉色</font> <br />
                                型号：<font color="#999999">50ml</font>
                            </td>
                            <td>
                                送朋友，她很喜欢，大爱。 <br />
                                <font color="#999999">2015-09-24</font>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td width="160"><img src="images/peo3.jpg" width="20" height="20" align="absmiddle" />&nbsp;墨镜墨镜</td>
                            <td width="180">
                                颜色分类：<font color="#999999">粉色</font> <br />
                                型号：<font color="#999999">50ml</font>
                            </td>
                            <td>
                                大家都说不错<br />
                                <font color="#999999">2015-09-24</font>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td width="160"><img src="images/peo4.jpg" width="20" height="20" align="absmiddle" />&nbsp;那*****洋 <br /><font color="#999999">（匿名用户）</font></td>
                            <td width="180">
                                颜色分类：<font color="#999999">粉色</font> <br />
                                型号：<font color="#999999">50ml</font>
                            </td>
                            <td>
                                下次还会来买，推荐。<br />
                                <font color="#999999">2015-09-24</font>
                            </td>
                        </tr>
                    </table>



                    <div class="pages">
                        <a href="#" class="p_pre">上一页</a><a href="#" class="cur">1</a><a href="#">2</a><a href="#">3</a>...<a href="#">20</a><a href="#" class="p_pre">下一页</a>
                    </div>

                </div>
            </div>
        </div>

        <!--Begin 弹出层-收藏成功 Begin-->
        <div id="fade" class="black_overlay"></div>
        <div id="MyDiv" class="white_content">
            <div class="white_d">
                <div class="notice_t">
                    <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="images/close.gif" /></span>
                </div>
                <div class="notice_c">

                    <table border="0" align="center" style="margin-top:;" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                            <td width="40"><img src="images/suc.png" /></td>
                            <td>
                                <span style="color:#3e3e3e; font-size:18px; font-weight:bold;">您已成功收藏该商品</span><br />
                                <a href="#">查看我的关注 >></a>
                            </td>
                        </tr>
                        <tr height="50" valign="bottom">
                            <td>&nbsp;</td>
                            <td><a href="#" class="b_sure">确定</a></td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
        <!--End 弹出层-收藏成功 End-->

        <!--Begin 弹出层-加入购物车 Begin-->
        <div id="fade1" class="black_overlay"></div>
        <div id="MyDiv1" class="white_content">
            <div class="white_d">
                <div class="notice_t">
                    <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="images/close.gif" /></span>
                </div>
                <div class="notice_c">

                    <table border="0" align="center" style="margin-top:;" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                            <td width="40"><img src="images/suc.png" /></td>
                            <td>
                                <span style="color:#3e3e3e; font-size:18px; font-weight:bold;">宝贝已成功添加到购物车</span><br />
                                <%--购物车共有1种宝贝（3件） &nbsp; &nbsp; 合计：1120元 ???暂时不写--%>
                            </td>
                        </tr>
                        <tr height="50" valign="bottom">
                            <td>&nbsp;</td>
                            <td><a href="#" class="b_sure">去购物车结算</a><a href="#" class="b_buy">继续购物</a></td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
        <!--End 弹出层-加入购物车 End-->

        <!--begin footer -->
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
        <!--end footer  -->
    </div>

</body>

<script type="text/javascript">
    $(function () {
        showGoodsDetail(queryString("goodsitemid"))
    })
    function queryString(key) {//解出keyword的值
        key = key.replace(/[*+?^$.\[\]{}()|\\\/]/g, "\\$&"); // escape RegEx meta chars
        var match = location.search.match(new RegExp("[?&]" + key + "=([^&]+)(&|$)"));
        return match && decodeURIComponent(match[1].replace(/\+/g, " "));
    }
    function showGoodsDetail(keyword) {//keyword 和page
        $.ajax({//???什么情况下要用ajax
            url: "${pageContext.request.contextPath}/getgoodsitemdetail",
            type: "POST",
            data: "goodsitemid=" + keyword,//这个传参方式在controller用@RequestParam接收
            success: function (result) {
                if (result.code == 1) {//如果获取到商品信息
                    var goodsitem = result.extend.goodsitem;//遍历  msg 中存的数据
//                    var goodsotherimg = result.extend.otherimg;
                    var goodsItemIndexPhoto = $("<a title=\"Images\" class=\"MagicZoom\"><img src=\"images/"  + goodsitem.indexphotourl+"\" width=\"390\" height=\"390\"></a>")

                    var goodsItemName = $("<p href=\"javascript:void(0)\">" + goodsitem.goodsname + "</p>")

                    var goodsItemPrice = $("<p>商品价格：<b color=\"#ff4e00\">￥" + goodsitem.price + "</b><br />消费积分：<span>28R</span><p>")

                    $("<a></a>").append(goodsItemIndexPhoto).appendTo("#tsImgS")

//                   循环
                    // $("<li></li>").append().appendTo("#dtMorePhoto")

                    alert("图片"+goodsitem.indexphotourl)
                    $("<p></p>").append(goodsItemName).appendTo("#dtGoodsName")

                    $("<p></p>").append(goodsItemPrice).appendTo("#dtGoodsPrice")

                }
            }
        })
    }

    function unloginAdd() {
        var yesorno = confirm("您还没有登录是否登录后加入购物车");
        if(yesorno == true){
            window.location.href = "${pageContext.request.contextPath}/to_login";
        }else{
            //存在session里面暂时先不做
        }
    }

    function loginedAdd() {
        $.ajax({
            url: "${pageContext.request.contextPath}/addToCart",
            type: "POST",
            dataType:"json",
            data:"goodsitemid="+ queryString("goodsitemid"),
            success: function (result) {
                alert("msg="+result.msg)//???这里要是出错了都不会提示吗，直接停止执行?
                if(result.code == 1){
                    ShowDiv_1('MyDiv1','fade1')
                }else{
                    alert(result.msg);
                }
            }
        })
    }
</script>
</html>
