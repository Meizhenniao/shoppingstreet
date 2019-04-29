/**
 * Created by MeiZhen on 2019/4/24.
 */
var jq = jQuery.noConflict();
jq(function () {
    showSmallCartList();
});

function showSmallCartList() {
    jq.ajax({
        url: "/get_cartitems",
        type: "GET",
        success: function (result) {
            jq("#cartitem_amount").html("购物车 [ <span>0</span> ]");//购物车数量
            //在没有查询到的时候初始化
            jq("#cartitem_lists").empty();//购物车隐藏下拉列表
            jq("#cartitem_totalprice").hide();//购物车总计金额
            jq("#paytobuy").hide();//购买
            if (result.code == 1) {//如果获取到用户的购物车记录
                var carts = result.extend.cartitems;//遍历msg中存的数据
                if (carts.length == 0) {//购物车个数为0
                    jq("#cartitem_lists").append("您的购物车暂时没有任何物品！")
                } else {
                    var price_sum = 0;
                    jq.each(carts, function (index, item) {
                        price_sum += item.goodsamount * item.goods.price;
                        var cartImage = jq("          <div class=\"img\">\n" +
                            "                            <a href=\"javascript:void(0)\">\n" +
                            "                                <img src=\"/images/"  + item.goods.indexphotourl+"\" width=\"58\" height=\"58\">\n" +
                            "                            </a>\n" +
                            "                        </div>")

                        var cartName = jq("           <div class=\"name\">\n" +
                            "                            <a href=\"javascript:void(0)\">" + item.goods.goodsname + "</a>\n" +
                            "                        </div>")
                        var cartPrice = jq("          <div class=\"price\">\n" +
                            "                            <font color=\"#ff4e00\">￥" + item.goods.price + "</font>\&nbsp;X" + item.goodsamount + "\n" +
                            "                        </div>")
                        jq("<li></li>").append(cartImage)
                            .append(cartName)
                            .append(cartPrice)
                            .appendTo("#cartitem_lists")
                        jq("#cartitem_amount").html("购物车 [ <span>" + carts.length + "</span> ]");
                        jq("#cartitem_lists").show();
                        jq("#cartitem_totalprice").show()
                        jq("#cartitem_totalprice").html("共计\&nbsp; <font color=\"#ff4e00\">￥</font><span>" + price_sum + "</span>")
                    })
                }

            }
        }
    })
}

function toCartsBrowse(){
    window.location.href = "/carts_browse"
}