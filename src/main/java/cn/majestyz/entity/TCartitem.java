package cn.majestyz.entity;

public class TCartitem {
    private Integer id;

    private Integer goodsid;

    private Integer userid;

    private Integer goodsamount;

    private TGoods goods;

    public TGoods getGoods() {
        return goods;
    }

    public void setGoods(TGoods goods) {
        this.goods = goods;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getGoodsamount() {
        return goodsamount;
    }

    public void setGoodsamount(Integer goodsamount) {
        this.goodsamount = goodsamount;
    }
}