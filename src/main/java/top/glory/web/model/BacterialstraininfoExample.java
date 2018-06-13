package top.glory.web.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BacterialstraininfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BacterialstraininfoExample() {
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

        public Criteria andSampleInfoIdIsNull() {
            addCriterion("sample_info_id is null");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdIsNotNull() {
            addCriterion("sample_info_id is not null");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdEqualTo(Integer value) {
            addCriterion("sample_info_id =", value, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdNotEqualTo(Integer value) {
            addCriterion("sample_info_id <>", value, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdGreaterThan(Integer value) {
            addCriterion("sample_info_id >", value, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("sample_info_id >=", value, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdLessThan(Integer value) {
            addCriterion("sample_info_id <", value, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdLessThanOrEqualTo(Integer value) {
            addCriterion("sample_info_id <=", value, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdIn(List<Integer> values) {
            addCriterion("sample_info_id in", values, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdNotIn(List<Integer> values) {
            addCriterion("sample_info_id not in", values, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdBetween(Integer value1, Integer value2) {
            addCriterion("sample_info_id between", value1, value2, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleInfoIdNotBetween(Integer value1, Integer value2) {
            addCriterion("sample_info_id not between", value1, value2, "sampleInfoId");
            return (Criteria) this;
        }

        public Criteria andSampleNumIsNull() {
            addCriterion("sample_num is null");
            return (Criteria) this;
        }

        public Criteria andSampleNumIsNotNull() {
            addCriterion("sample_num is not null");
            return (Criteria) this;
        }

        public Criteria andSampleNumEqualTo(String value) {
            addCriterion("sample_num =", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumNotEqualTo(String value) {
            addCriterion("sample_num <>", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumGreaterThan(String value) {
            addCriterion("sample_num >", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumGreaterThanOrEqualTo(String value) {
            addCriterion("sample_num >=", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumLessThan(String value) {
            addCriterion("sample_num <", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumLessThanOrEqualTo(String value) {
            addCriterion("sample_num <=", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumLike(String value) {
            addCriterion("sample_num like", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumNotLike(String value) {
            addCriterion("sample_num not like", value, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumIn(List<String> values) {
            addCriterion("sample_num in", values, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumNotIn(List<String> values) {
            addCriterion("sample_num not in", values, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumBetween(String value1, String value2) {
            addCriterion("sample_num between", value1, value2, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andSampleNumNotBetween(String value1, String value2) {
            addCriterion("sample_num not between", value1, value2, "sampleNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumIsNull() {
            addCriterion("original_num is null");
            return (Criteria) this;
        }

        public Criteria andOriginalNumIsNotNull() {
            addCriterion("original_num is not null");
            return (Criteria) this;
        }

        public Criteria andOriginalNumEqualTo(String value) {
            addCriterion("original_num =", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumNotEqualTo(String value) {
            addCriterion("original_num <>", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumGreaterThan(String value) {
            addCriterion("original_num >", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumGreaterThanOrEqualTo(String value) {
            addCriterion("original_num >=", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumLessThan(String value) {
            addCriterion("original_num <", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumLessThanOrEqualTo(String value) {
            addCriterion("original_num <=", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumLike(String value) {
            addCriterion("original_num like", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumNotLike(String value) {
            addCriterion("original_num not like", value, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumIn(List<String> values) {
            addCriterion("original_num in", values, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumNotIn(List<String> values) {
            addCriterion("original_num not in", values, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumBetween(String value1, String value2) {
            addCriterion("original_num between", value1, value2, "originalNum");
            return (Criteria) this;
        }

        public Criteria andOriginalNumNotBetween(String value1, String value2) {
            addCriterion("original_num not between", value1, value2, "originalNum");
            return (Criteria) this;
        }

        public Criteria andWordAddrIsNull() {
            addCriterion("word_addr is null");
            return (Criteria) this;
        }

        public Criteria andWordAddrIsNotNull() {
            addCriterion("word_addr is not null");
            return (Criteria) this;
        }

        public Criteria andWordAddrEqualTo(String value) {
            addCriterion("word_addr =", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrNotEqualTo(String value) {
            addCriterion("word_addr <>", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrGreaterThan(String value) {
            addCriterion("word_addr >", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrGreaterThanOrEqualTo(String value) {
            addCriterion("word_addr >=", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrLessThan(String value) {
            addCriterion("word_addr <", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrLessThanOrEqualTo(String value) {
            addCriterion("word_addr <=", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrLike(String value) {
            addCriterion("word_addr like", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrNotLike(String value) {
            addCriterion("word_addr not like", value, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrIn(List<String> values) {
            addCriterion("word_addr in", values, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrNotIn(List<String> values) {
            addCriterion("word_addr not in", values, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrBetween(String value1, String value2) {
            addCriterion("word_addr between", value1, value2, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andWordAddrNotBetween(String value1, String value2) {
            addCriterion("word_addr not between", value1, value2, "wordAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrIsNull() {
            addCriterion("txt_addr is null");
            return (Criteria) this;
        }

        public Criteria andTxtAddrIsNotNull() {
            addCriterion("txt_addr is not null");
            return (Criteria) this;
        }

        public Criteria andTxtAddrEqualTo(String value) {
            addCriterion("txt_addr =", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrNotEqualTo(String value) {
            addCriterion("txt_addr <>", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrGreaterThan(String value) {
            addCriterion("txt_addr >", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrGreaterThanOrEqualTo(String value) {
            addCriterion("txt_addr >=", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrLessThan(String value) {
            addCriterion("txt_addr <", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrLessThanOrEqualTo(String value) {
            addCriterion("txt_addr <=", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrLike(String value) {
            addCriterion("txt_addr like", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrNotLike(String value) {
            addCriterion("txt_addr not like", value, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrIn(List<String> values) {
            addCriterion("txt_addr in", values, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrNotIn(List<String> values) {
            addCriterion("txt_addr not in", values, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrBetween(String value1, String value2) {
            addCriterion("txt_addr between", value1, value2, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andTxtAddrNotBetween(String value1, String value2) {
            addCriterion("txt_addr not between", value1, value2, "txtAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrIsNull() {
            addCriterion("picture_addr is null");
            return (Criteria) this;
        }

        public Criteria andPictureAddrIsNotNull() {
            addCriterion("picture_addr is not null");
            return (Criteria) this;
        }

        public Criteria andPictureAddrEqualTo(String value) {
            addCriterion("picture_addr =", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrNotEqualTo(String value) {
            addCriterion("picture_addr <>", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrGreaterThan(String value) {
            addCriterion("picture_addr >", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrGreaterThanOrEqualTo(String value) {
            addCriterion("picture_addr >=", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrLessThan(String value) {
            addCriterion("picture_addr <", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrLessThanOrEqualTo(String value) {
            addCriterion("picture_addr <=", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrLike(String value) {
            addCriterion("picture_addr like", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrNotLike(String value) {
            addCriterion("picture_addr not like", value, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrIn(List<String> values) {
            addCriterion("picture_addr in", values, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrNotIn(List<String> values) {
            addCriterion("picture_addr not in", values, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrBetween(String value1, String value2) {
            addCriterion("picture_addr between", value1, value2, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andPictureAddrNotBetween(String value1, String value2) {
            addCriterion("picture_addr not between", value1, value2, "pictureAddr");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andIsdelIsNull() {
            addCriterion("isdel is null");
            return (Criteria) this;
        }

        public Criteria andIsdelIsNotNull() {
            addCriterion("isdel is not null");
            return (Criteria) this;
        }

        public Criteria andIsdelEqualTo(Integer value) {
            addCriterion("isdel =", value, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelNotEqualTo(Integer value) {
            addCriterion("isdel <>", value, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelGreaterThan(Integer value) {
            addCriterion("isdel >", value, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelGreaterThanOrEqualTo(Integer value) {
            addCriterion("isdel >=", value, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelLessThan(Integer value) {
            addCriterion("isdel <", value, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelLessThanOrEqualTo(Integer value) {
            addCriterion("isdel <=", value, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelIn(List<Integer> values) {
            addCriterion("isdel in", values, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelNotIn(List<Integer> values) {
            addCriterion("isdel not in", values, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelBetween(Integer value1, Integer value2) {
            addCriterion("isdel between", value1, value2, "isdel");
            return (Criteria) this;
        }

        public Criteria andIsdelNotBetween(Integer value1, Integer value2) {
            addCriterion("isdel not between", value1, value2, "isdel");
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