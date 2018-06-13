package top.glory.web.model;

import java.util.ArrayList;
import java.util.List;

public class ParExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ParExample() {
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

        public Criteria andBreedIdIsNull() {
            addCriterion("breed_id is null");
            return (Criteria) this;
        }

        public Criteria andBreedIdIsNotNull() {
            addCriterion("breed_id is not null");
            return (Criteria) this;
        }

        public Criteria andBreedIdEqualTo(Integer value) {
            addCriterion("breed_id =", value, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdNotEqualTo(Integer value) {
            addCriterion("breed_id <>", value, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdGreaterThan(Integer value) {
            addCriterion("breed_id >", value, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("breed_id >=", value, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdLessThan(Integer value) {
            addCriterion("breed_id <", value, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdLessThanOrEqualTo(Integer value) {
            addCriterion("breed_id <=", value, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdIn(List<Integer> values) {
            addCriterion("breed_id in", values, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdNotIn(List<Integer> values) {
            addCriterion("breed_id not in", values, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdBetween(Integer value1, Integer value2) {
            addCriterion("breed_id between", value1, value2, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedIdNotBetween(Integer value1, Integer value2) {
            addCriterion("breed_id not between", value1, value2, "breedId");
            return (Criteria) this;
        }

        public Criteria andBreedNameIsNull() {
            addCriterion("breed_name is null");
            return (Criteria) this;
        }

        public Criteria andBreedNameIsNotNull() {
            addCriterion("breed_name is not null");
            return (Criteria) this;
        }

        public Criteria andBreedNameEqualTo(String value) {
            addCriterion("breed_name =", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameNotEqualTo(String value) {
            addCriterion("breed_name <>", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameGreaterThan(String value) {
            addCriterion("breed_name >", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameGreaterThanOrEqualTo(String value) {
            addCriterion("breed_name >=", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameLessThan(String value) {
            addCriterion("breed_name <", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameLessThanOrEqualTo(String value) {
            addCriterion("breed_name <=", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameLike(String value) {
            addCriterion("breed_name like", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameNotLike(String value) {
            addCriterion("breed_name not like", value, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameIn(List<String> values) {
            addCriterion("breed_name in", values, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameNotIn(List<String> values) {
            addCriterion("breed_name not in", values, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameBetween(String value1, String value2) {
            addCriterion("breed_name between", value1, value2, "breedName");
            return (Criteria) this;
        }

        public Criteria andBreedNameNotBetween(String value1, String value2) {
            addCriterion("breed_name not between", value1, value2, "breedName");
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

        public Criteria andToxinNameIsNull() {
            addCriterion("toxin_name is null");
            return (Criteria) this;
        }

        public Criteria andToxinNameIsNotNull() {
            addCriterion("toxin_name is not null");
            return (Criteria) this;
        }

        public Criteria andToxinNameEqualTo(String value) {
            addCriterion("toxin_name =", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameNotEqualTo(String value) {
            addCriterion("toxin_name <>", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameGreaterThan(String value) {
            addCriterion("toxin_name >", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameGreaterThanOrEqualTo(String value) {
            addCriterion("toxin_name >=", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameLessThan(String value) {
            addCriterion("toxin_name <", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameLessThanOrEqualTo(String value) {
            addCriterion("toxin_name <=", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameLike(String value) {
            addCriterion("toxin_name like", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameNotLike(String value) {
            addCriterion("toxin_name not like", value, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameIn(List<String> values) {
            addCriterion("toxin_name in", values, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameNotIn(List<String> values) {
            addCriterion("toxin_name not in", values, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameBetween(String value1, String value2) {
            addCriterion("toxin_name between", value1, value2, "toxinName");
            return (Criteria) this;
        }

        public Criteria andToxinNameNotBetween(String value1, String value2) {
            addCriterion("toxin_name not between", value1, value2, "toxinName");
            return (Criteria) this;
        }

        public Criteria andParIsNull() {
            addCriterion("par is null");
            return (Criteria) this;
        }

        public Criteria andParIsNotNull() {
            addCriterion("par is not null");
            return (Criteria) this;
        }

        public Criteria andParEqualTo(Float value) {
            addCriterion("par =", value, "par");
            return (Criteria) this;
        }

        public Criteria andParNotEqualTo(Float value) {
            addCriterion("par <>", value, "par");
            return (Criteria) this;
        }

        public Criteria andParGreaterThan(Float value) {
            addCriterion("par >", value, "par");
            return (Criteria) this;
        }

        public Criteria andParGreaterThanOrEqualTo(Float value) {
            addCriterion("par >=", value, "par");
            return (Criteria) this;
        }

        public Criteria andParLessThan(Float value) {
            addCriterion("par <", value, "par");
            return (Criteria) this;
        }

        public Criteria andParLessThanOrEqualTo(Float value) {
            addCriterion("par <=", value, "par");
            return (Criteria) this;
        }

        public Criteria andParIn(List<Float> values) {
            addCriterion("par in", values, "par");
            return (Criteria) this;
        }

        public Criteria andParNotIn(List<Float> values) {
            addCriterion("par not in", values, "par");
            return (Criteria) this;
        }

        public Criteria andParBetween(Float value1, Float value2) {
            addCriterion("par between", value1, value2, "par");
            return (Criteria) this;
        }

        public Criteria andParNotBetween(Float value1, Float value2) {
            addCriterion("par not between", value1, value2, "par");
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