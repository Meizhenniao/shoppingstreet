package cn.majestyz.entity;

public class TGoods {
    private Integer id;

    private String goodsname;

    private String indexphotourl;

    private Integer price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getIndexphotourl() {
        return indexphotourl;
    }

    public void setIndexphotourl(String indexphotourl) {
        this.indexphotourl = indexphotourl;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }
}