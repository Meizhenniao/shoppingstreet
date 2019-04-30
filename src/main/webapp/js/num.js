/**
 * Created by MeiZhen on 2019/4/27.
 */
var jq = jQuery.noConflict();

function addUpdate(jia){
    var c = jia.parent().find(".n_ipt").val();
    c=parseInt(c)+1;
    jia.parent().find(".n_ipt").val(c);
}

function jianUpdate(jian){
    var c = jian.parent().find(".n_ipt").val();
    if(c==0){
        alert("不能再减少了")
        c=0;
    }else{
        c=parseInt(c)-1;
        jian.parent().find(".n_ipt").val(c);
    }
}

function addUpdate1(jia){
    var c = jia.parent().find(".car_ipt").val();
    c=parseInt(c)+1;
    jia.parent().find(".car_ipt").val(c);
}

function jianUpdate1(jian){
    var c = jian.parent().find(".car_ipt").val();
    if(c==0){
        c=0;
    }else{
        c=parseInt(c)-1;
        jian.parent().find(".car_ipt").val(c);
    }
}


//删除1 jsp页面中的因为数量为1还要减少而删除、因为按右边的删除键而删除
// 购物车大列表页面
function delToCart(goodsid){
    // alert("进入了删除的方法 goodsid="+goodsid)
    var yesorno = confirm("是否确定删除这个购物车商品项目");
    if(yesorno){
        dodelToCart(goodsid);
    }
}

// 删除2  清空购物车 属于userid的购物车就删除
// 购物车大列表页面
function delAllCarts(){
    var yesorno = confirm("是否确定清空购物车");
    if(yesorno) {
        jq.ajax({
            url:"/del_allcarts",
            type: "POST",
            success: function (result) {//这里是指在整个过程没有出现什么异常的情况和数据库操作的结果成功还是失败没有关系
                if(result.code == 1){
                    window.location.reload();
                    alert("删除成功");
                }else{
                    alert(result.msg);
                }
            }
        })
    }
}

// 增加数量1 根据框里的数增加，
// 商品详情页面
function addToCartD(add) {
    var a = add.parent().parent().find(".n_ipt").val();
    var goodsid = queryString("goodsid");
    alert("a:"+parseInt(a)+",goodsid="+goodsid);//???能不能找到，能
    jq.ajax({
        url: "/add_cart_amount",//???能不能进入，能
        type: "POST",
        data:{"goodsid":goodsid,
            "amount":parseInt(a)},//???能不能获取goodsid,能,即使这里没有设定json的数据type，那边也可以收到这两个数据哦
        success: function (result) {//这里是指在整个过程没有出现什么异常的情况和数据库操作的结果成功还是失败没有关系
            alert("msg="+result.msg)//???这里要是出错了都不会提示吗，直接停止执行?
            if(result.code == 1){
                ShowDiv_1('MyDiv1','fade1')
            }else{
                alert(result.msg);
            }
        }
    })
}

//增加数量2   一个一个
// 购物车大列表页面
function addToCart(jia,goodsid){
    jq.ajax({
        url: "/add_cart",
        type: "POST",
        data: "goodsid=" + goodsid,
        success: function (result) {
            if (result.code == 1) {
                addUpdate1(jia);
                alert("加入购物车成功")
                window.location.reload();
            } else {
                alert(result.msg);
            }
        }
    })
}

//减少数量1 一个一个 到1还减少则删除
// 购物车大列表页面
function subToCart(jian,goodsid){
    var a = jian.parent().parent().find(".car_ipt").val();
    // alert("减少  a="+a)//可以进来
    alert("a:"+parseInt(a)+"goodsid="+goodsid);//???能不能找到，能
    if(a>1){
        jq.ajax({
            url: "/sub_cart",//???能不能进入，能
            type: "POST",
            data:"goodsid="+goodsid,
            success: function (result) {//这里是指在整个过程没有出现什么异常的情况和数据库操作的结果成功还是失败没有关系
                if(result.code == 1){
                    jianUpdate1(jian);//操作成功
                    alert("减少一个")
                    window.location.reload();//删除后
                }else{
                    alert(result.msg);
                }
            }
        })
    }else if(a==1){
        alert("a==1");
        var yesorno = confirm("是否确定删除这项购物车");
        if(yesorno) {
            // alert("我准备要删除了")
            delToCart(goodsid);
            window.location.reload();//删除后
        }
    }
}

//删除操作 配合删除1 和 删除3
function dodelToCart(goodsid){
    jq.ajax({
        url: "/del_cart",//???能不能进入，能
        type: "POST",
        data:"goodsid="+goodsid,
        success: function (result) {//这里是指在整个过程没有出现什么异常的情况和数据库操作的结果成功还是失败没有关系
            if(result.code == 1){
                window.location.reload();
                alert("删除成功");
            }else{
                alert(result.msg);
            }
        }
    })
}
