<%--
  Created by IntelliJ IDEA.
  User: MeiZhen
  Date: 2019/4/26
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
<script type="text/javascript" src="js/a_cartslist_pre.js"></script><%--负责购物车的js--%>
<script type="text/javascript" src="js/a_logout.js"></script><%--负责退出登录--%>
<script type="text/javascript" src="js/n_nav.js"></script> <%--负责全部商品列表--%>
<div class="soubg">
    <div class="sou">
        <!--Begin 所在收货地区 Begin-->
        <span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span>四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
            <span class="fl">你好，
	            <c:if test="${sessionScope.user != null}">
                    <a href="${pageContext.request.contextPath}/menber_center">${sessionScope.user.username}</a>
                    &nbsp;
                    <a href="${pageContext.request.contextPath}/logout" style="color:#ff4e00;">退出</a>
                    &nbsp;
                    |&nbsp;
                    <a href="${pageContext.request.contextPath}/menber_order">我的订单</a>
                    &nbsp;|
                </c:if>
                <c:if test="${sessionScope.user == null}">
                    <a href="/login">请登录</a>
                    &nbsp;
                    <a href="/regist" style="color:#ff4e00;">免费注册</a>
                    &nbsp;
                </c:if>
            </span>
        	<span class="ss">
            	<div class="ss_list">
                	<a href="#">收藏夹</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">我的收藏夹</a></li>
                                <li><a href="#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">客户服务</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="/"><img src="images/logo.png" /></a></div>
    <div class="search">
        <form>
            <input id="keyword" type="text" value="" class="s_ipt" />
            <input id="start_search" value="搜索" class="s_btn" />
            <%--???为什么要去掉type="submit"--%>
        </form>
        <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
    </div>

    <%--start 购物车小列表 --%>
    <div class="i_car">
        <div id="cartitem_amount" onclick="toCartsBrowse()" class="car_t">购物车 [ <span>0</span> ]</div>
        <div class="car_bg">
            <%--首先判断是否已经登录--%>
            <%--start 未登录--%>
            <c:if test="${sessionScope.user==null}">
                <div class="un_login">还未登录！
                    <a href="${pageContext.request.contextPath}/login" style="color:#ff4e00;">马上登录</a>
                </div>
            </c:if>
            <%--end 未登录--%>
            <%--start 已经登录   --%>
            <ul id="cartitem_lists" class="cars">

            </ul>
            <div id="cartitem_totalprice" class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>0</span>
            </div>
            <div id="paytobuy" class="price_a"><a href="${pageContext.request.contextPath}/carts_browse">去购物车结算</a></div>
        </div>
    </div>
    <%--end  购物车小列表--%>
</div>

<script type="text/javascript">

    //mz  在goods_searchresult页面继续搜索
    $("#start_search").click(function () {
        //获取参数
        if($("#keyword").val() == ""){
            alert("搜索内容不能为空");
            return false;//???return false是什么意思，重新返回这一页面吗
        }
        window.location.href = "${pageContext.request.contextPath}/goods_searchresult?keyword=" + $("#keyword").val();//???这是什么方式的传参啊   RequestParam的传参
    })




</script>

