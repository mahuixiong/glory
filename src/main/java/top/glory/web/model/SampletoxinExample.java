package top.glory.web.model;

import java.util.ArrayList;
import java.util.List;

public class SampletoxinExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SampletoxinExample() {
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

        public Criteria andToxinIdIsNull() {
            addCriterion("toxin_id is null");
            return (Criteria) this;
        }

        public Criteria andToxinIdIsNotNull() {
            addCriterion("toxin_id is not null");
            return (Criteria) this;
        }

        public Criteria andToxinIdEqualTo(Integer value) {
            addCriterion("toxin_id =", value, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdNotEqualTo(Integer value) {
            addCriterion("toxin_id <>", value, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdGreaterThan(Integer value) {
            addCriterion("toxin_id >", value, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("toxin_id >=", value, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdLessThan(Integer value) {
            addCriterion("toxin_id <", value, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdLessThanOrEqualTo(Integer value) {
            addCriterion("toxin_id <=", value, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdIn(List<Integer> values) {
            addCriterion("toxin_id in", values, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdNotIn(List<Integer> values) {
            addCriterion("toxin_id not in", values, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdBetween(Integer value1, Integer value2) {
            addCriterion("toxin_id between", value1, value2, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinIdNotBetween(Integer value1, Integer value2) {
            addCriterion("toxin_id not between", value1, value2, "toxinId");
            return (Criteria) this;
        }

        public Criteria andToxinCountIsNull() {
            addCriterion("toxin_count is null");
            return (Criteria) this;
        }

        public Criteria andToxinCountIsNotNull() {
            addCriterion("toxin_count is not null");
            return (Criteria) this;
        }

        public Criteria andToxinCountEqualTo(Float value) {
            addCriterion("toxin_count =", value, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountNotEqualTo(Float value) {
            addCriterion("toxin_count <>", value, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountGreaterThan(Float value) {
            addCriterion("toxin_count >", value, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountGreaterThanOrEqualTo(Float value) {
            addCriterion("toxin_count >=", value, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountLessThan(Float value) {
            addCriterion("toxin_count <", value, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountLessThanOrEqualTo(Float value) {
            addCriterion("toxin_count <=", value, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountIn(List<Float> values) {
            addCriterion("toxin_count in", values, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountNotIn(List<Float> values) {
            addCriterion("toxin_count not in", values, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountBetween(Float value1, Float value2) {
            addCriterion("toxin_count between", value1, value2, "toxinCount");
            return (Criteria) this;
        }

        public Criteria andToxinCountNotBetween(Float value1, Float value2) {
            addCriterion("toxin_count not between", value1, value2, "toxinCount");
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