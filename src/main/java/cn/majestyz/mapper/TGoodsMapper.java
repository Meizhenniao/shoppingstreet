package cn.majestyz.mapper;

import cn.majestyz.entity.TGoods;
import cn.majestyz.entity.TGoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TGoodsMapper {
    int countByExample(TGoodsExample example);

    int deleteByExample(TGoodsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TGoods record);

    int insertSelective(TGoods record);

    List<TGoods> selectByExample(TGoodsExample example);

    TGoods selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TGoods record, @Param("example") TGoodsExample example);

    int updateByExample(@Param("record") TGoods record, @Param("example") TGoodsExample example);

    int updateByPrimaryKeySelective(TGoods record);

    int updateByPrimaryKey(TGoods record);
}