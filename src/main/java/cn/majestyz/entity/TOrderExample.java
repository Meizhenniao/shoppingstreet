package cn.majestyz.entity;

import java.util.ArrayList;
import java.util.List;

public class TOrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TOrderExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andOrdernumberIsNull() {
            addCriterion("ordernumber is null");
            return (Criteria) this;
        }

        public Criteria andOrdernumberIsNotNull() {
            addCriterion("ordernumber is not null");
            return (Criteria) this;
        }

        public Criteria andOrdernumberEqualTo(String value) {
            addCriterion("ordernumber =", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotEqualTo(String value) {
            addCriterion("ordernumber <>", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberGreaterThan(String value) {
            addCriterion("ordernumber >", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberGreaterThanOrEqualTo(String value) {
            addCriterion("ordernumber >=", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberLessThan(String value) {
            addCriterion("ordernumber <", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberLessThanOrEqualTo(String value) {
            addCriterion("ordernumber <=", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberLike(String value) {
            addCriterion("ordernumber like", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotLike(String value) {
            addCriterion("ordernumber not like", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberIn(List<String> values) {
            addCriterion("ordernumber in", values, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotIn(List<String> values) {
            addCriterion("ordernumber not in", values, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberBetween(String value1, String value2) {
            addCriterion("ordernumber between", value1, value2, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotBetween(String value1, String value2) {
            addCriterion("ordernumber not between", value1, value2, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andGoodsidIsNull() {
            addCriterion("goodsid is null");
            return (Criteria) this;
        }

        public Criteria andGoodsidIsNotNull() {
            addCriterion("goodsid is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsidEqualTo(Integer value) {
            addCriterion("goodsid =", value, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidNotEqualTo(Integer value) {
            addCriterion("goodsid <>", value, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidGreaterThan(Integer value) {
            addCriterion("goodsid >", value, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidGreaterThanOrEqualTo(Integer value) {
            addCriterion("goodsid >=", value, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidLessThan(Integer value) {
            addCriterion("goodsid <", value, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidLessThanOrEqualTo(Integer value) {
            addCriterion("goodsid <=", value, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidIn(List<Integer> values) {
            addCriterion("goodsid in", values, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidNotIn(List<Integer> values) {
            addCriterion("goodsid not in", values, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidBetween(Integer value1, Integer value2) {
            addCriterion("goodsid between", value1, value2, "goodsid");
            return (Criteria) this;
        }

        public Criteria andGoodsidNotBetween(Integer value1, Integer value2) {
            addCriterion("goodsid not between", value1, value2, "goodsid");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userid not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andGoodsamountIsNull() {
            addCriterion("goodsamount is null");
            return (Criteria) this;
        }

        public Criteria andGoodsamountIsNotNull() {
            addCriterion("goodsamount is not null");
            return (Criteria) this;
        }

        public Criteria andGoodsamountEqualTo(Integer value) {
            addCriterion("goodsamount =", value, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountNotEqualTo(Integer value) {
            addCriterion("goodsamount <>", value, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountGreaterThan(Integer value) {
            addCriterion("goodsamount >", value, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountGreaterThanOrEqualTo(Integer value) {
            addCriterion("goodsamount >=", value, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountLessThan(Integer value) {
            addCriterion("goodsamount <", value, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountLessThanOrEqualTo(Integer value) {
            addCriterion("goodsamount <=", value, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountIn(List<Integer> values) {
            addCriterion("goodsamount in", values, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountNotIn(List<Integer> values) {
            addCriterion("goodsamount not in", values, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountBetween(Integer value1, Integer value2) {
            addCriterion("goodsamount between", value1, value2, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andGoodsamountNotBetween(Integer value1, Integer value2) {
            addCriterion("goodsamount not between", value1, value2, "goodsamount");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyIsNull() {
            addCriterion("expresscompany is null");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyIsNotNull() {
            addCriterion("expresscompany is not null");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyEqualTo(String value) {
            addCriterion("expresscompany =", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyNotEqualTo(String value) {
            addCriterion("expresscompany <>", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyGreaterThan(String value) {
            addCriterion("expresscompany >", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyGreaterThanOrEqualTo(String value) {
            addCriterion("expresscompany >=", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyLessThan(String value) {
            addCriterion("expresscompany <", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyLessThanOrEqualTo(String value) {
            addCriterion("expresscompany <=", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyLike(String value) {
            addCriterion("expresscompany like", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyNotLike(String value) {
            addCriterion("expresscompany not like", value, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyIn(List<String> values) {
            addCriterion("expresscompany in", values, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyNotIn(List<String> values) {
            addCriterion("expresscompany not in", values, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyBetween(String value1, String value2) {
            addCriterion("expresscompany between", value1, value2, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andExpresscompanyNotBetween(String value1, String value2) {
            addCriterion("expresscompany not between", value1, value2, "expresscompany");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternIsNull() {
            addCriterion("paymentpattern is null");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternIsNotNull() {
            addCriterion("paymentpattern is not null");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternEqualTo(String value) {
            addCriterion("paymentpattern =", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternNotEqualTo(String value) {
            addCriterion("paymentpattern <>", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternGreaterThan(String value) {
            addCriterion("paymentpattern >", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternGreaterThanOrEqualTo(String value) {
            addCriterion("paymentpattern >=", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternLessThan(String value) {
            addCriterion("paymentpattern <", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternLessThanOrEqualTo(String value) {
            addCriterion("paymentpattern <=", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternLike(String value) {
            addCriterion("paymentpattern like", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternNotLike(String value) {
            addCriterion("paymentpattern not like", value, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternIn(List<String> values) {
            addCriterion("paymentpattern in", values, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternNotIn(List<String> values) {
            addCriterion("paymentpattern not in", values, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternBetween(String value1, String value2) {
            addCriterion("paymentpattern between", value1, value2, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andPaymentpatternNotBetween(String value1, String value2) {
            addCriterion("paymentpattern not between", value1, value2, "paymentpattern");
            return (Criteria) this;
        }

        public Criteria andSumpriceIsNull() {
            addCriterion("sumprice is null");
            return (Criteria) this;
        }

        public Criteria andSumpriceIsNotNull() {
            addCriterion("sumprice is not null");
            return (Criteria) this;
        }

        public Criteria andSumpriceEqualTo(Integer value) {
            addCriterion("sumprice =", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceNotEqualTo(Integer value) {
            addCriterion("sumprice <>", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceGreaterThan(Integer value) {
            addCriterion("sumprice >", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("sumprice >=", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceLessThan(Integer value) {
            addCriterion("sumprice <", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceLessThanOrEqualTo(Integer value) {
            addCriterion("sumprice <=", value, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceIn(List<Integer> values) {
            addCriterion("sumprice in", values, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceNotIn(List<Integer> values) {
            addCriterion("sumprice not in", values, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceBetween(Integer value1, Integer value2) {
            addCriterion("sumprice between", value1, value2, "sumprice");
            return (Criteria) this;
        }

        public Criteria andSumpriceNotBetween(Integer value1, Integer value2) {
            addCriterion("sumprice not between", value1, value2, "sumprice");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}