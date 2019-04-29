<%--
  Created by IntelliJ IDEA.
  User: MeiZhen
  Date: 2019/4/22
  Time: 10:31
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

    <script type="text/javascript" src="js/select.js"></script>


    <title>购物街</title>
</head>

<body>
    <%--收货地址、登录状态--%>
    <div class="soubg">
        <div class="sou">
            <!--start 所在收货地区 -->
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
            <!--end 所在收货地区 -->
            <%--start 登录状态头部显示--%>
            <span class="fr">
                <span class="fl">你好，
                    <c:if test="${sessionScope.user != null}">
                        <a href="${pageContext.request.contextPath}/menber_center">${sessionScope.user.username}</a>
                        &nbsp;
                        <a href="${pageContext.request.contextPath}/logout" style="color:#ff4e00;">退出</a>
                        &nbsp;
                        |&nbsp;
                        <a href="#">我的订单</a>
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
                    <div class="ss_list">
                        <a href="#">网站导航</a>
                        <div class="ss_list_bg">
                            <div class="s_city_t"></div>
                            <div class="ss_list_c">
                                <ul>
                                    <li><a href="#">网站导航</a></li>
                                    <li><a href="#">网站导航</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </span>
                <span class="fl">|&nbsp;关注我们：</span>
                <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
                <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
            </span>
            <%--end 登录状态头部显示--%>
        </div>
    </div>

    <%--搜索、购物车小列表--%>
    <div class="m_top_bg">
        <div class="top">
            <div class="m_logo"><a href="${pageContext.request.contextPath}/index"><img src="images/logo1.png" /></a></div>
            <%--start 搜索--%>
            <div class="m_search">
                <form>
                    <input type="text" value="" class="m_ipt" />
                    <input type="submit" value="搜索" class="m_btn" />
                </form>
                <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
            </div>
            <%--end 搜索--%>
            <%--start 购物车下拉列表 --%>
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
                    <div id="paytobuy" class="price_a"><a href="${pageContext.request.contextPath}/paytobuy">去购物车结算</a></div>
                </div>
            </div>
            <%--end  购物车下拉列表--%>
        </div>
    </div>


    <div class="i_bg bg_color">
        <!--Begin 用户管理中心  -->
        <div class="m_content">
            <div class="m_left">
                <div class="left_n">管理中心</div>
                <%--订单中心--%>
                <div class="left_m">
                    <div class="left_m_t t_bg1">订单中心</div>
                    <ul>
                        <li><a href="Member_Order.html">我的订单</a></li>
                        <li><a href="Member_Address.html">收货地址</a></li>
                        <li><a href="#">缺货登记</a></li>
                        <li><a href="#">跟踪订单</a></li>
                    </ul>
                </div>
                <%--会员中心--%>
                <div class="left_m">
                    <div class="left_m_t t_bg2">会员中心</div>
                    <ul>
                        <li><a href="Member_User.html" class="now">用户信息</a></li>
                        <li><a href="Member_Collect.html">我的收藏</a></li>
                        <li><a href="Member_Msg.html">我的留言</a></li>
                        <li><a href="Member_Links.html">推广链接</a></li>
                        <li><a href="#">我的评论</a></li>
                    </ul>
                </div>
                <%--账户中心--%>
                <div class="left_m">
                    <div class="left_m_t t_bg3">账户中心</div>
                    <ul>
                        <li><a href="Member_Safe.html">账户安全</a></li>
                        <li><a href="Member_Packet.html">我的红包</a></li>
                        <li><a href="Member_Money.html">资金管理</a></li>
                    </ul>
                </div>
                <%--分销中心--%>
                <div class="left_m">
                    <div class="left_m_t t_bg4">分销中心</div>
                    <ul>
                        <li><a href="Member_Member.html">我的会员</a></li>
                        <li><a href="Member_Results.html">我的业绩</a></li>
                        <li><a href="Member_Commission.html">我的佣金</a></li>
                        <li><a href="Member_Cash.html">申请提现</a></li>
                    </ul>
                </div>
            </div>
            <div class="m_right">
                <div class="m_des">
                    <table border="0" style="width:870px; line-height:22px;" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                            <td width="115"><img src="images/user.jpg" width="90" height="90" /></td>
                            <td>
                                <div class="m_user">TRACY</div>
                                <p>
                                    等级：注册用户 <br />
                                    <font color="#ff4e00">您还差 270 积分达到 分红100</font><br />
                                    上一次登录时间: 2015-09-28 18:19:47<br />
                                    您还没有通过邮件认证 <a href="#" style="color:#ff4e00;">点此发送认证邮件</a>
                                </p>
                                <div class="m_notice">
                                    用户中心公告！
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="mem_t">资产信息</div>
                <table border="0" class="mon_tab" style="width:870px; margin-bottom:20px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="33%">用户等级：<span style="color:#555555;">普通会员</span></td>
                        <td width="33%">消费金额：<span>￥200元</span></td>
                        <td width="33%">返还积分：<span>99R</span></td>
                    </tr>
                    <tr>
                        <td>账户余额：<span>￥200元</span></td></td>
                        <td>红包个数：<span style="color:#555555;">3个</span></td></td>
                        <td>红包价值：<span>￥50元</span></td></td>
                    </tr>
                    <tr>
                        <td colspan="3">订单提醒：
                            <font style="font-family:'宋体';">待付款(<span>0</span>) &nbsp; &nbsp; &nbsp; &nbsp; 待收货(<span>2</span>) &nbsp; &nbsp; &nbsp; &nbsp; 待评论(<span>1</span>)</font>
                        </td>
                    </tr>
                </table>

                <div class="mem_t">账号信息</div>
                <table border="0" class="mon_tab" style="width:870px; margin-bottom:20px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="40%">用户ID：<span style="color:#555555;">12345678</span></td>
                        <td width="60%">邀请人：<span style="color:#555555;">邀请人姓名</span></td>
                    </tr>
                    <tr>
                        <td>电&nbsp; &nbsp; 话：<span style="color:#555555;">1861111111</span></td>
                        <td>邮&nbsp; &nbsp; 箱：<span style="color:#555555;">12345678@qq.com</span></td>
                    </tr>
                    <tr>
                        <td>身份证号：<span style="color:#555555;">522555123456789</span></td>
                        <td>注册时间：<span style="color:#555555;">2015-10-10</span></td>
                    </tr>
                </table>


            </div>
        </div>
        <!--End 用户中心 -->

        <!--begin footer -->
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
        <!--end footer  -->

    </div>

</body>



<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js">

</script>

</html>
