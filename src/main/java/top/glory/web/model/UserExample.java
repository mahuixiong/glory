package top.glory.web.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
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

        public Criteria andLoginNameIsNull() {
            addCriterion("login_name is null");
            return (Criteria) this;
        }

        public Criteria andLoginNameIsNotNull() {
            addCriterion("login_name is not null");
            return (Criteria) this;
        }

        public Criteria andLoginNameEqualTo(String value) {
            addCriterion("login_name =", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameNotEqualTo(String value) {
            addCriterion("login_name <>", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameGreaterThan(String value) {
            addCriterion("login_name >", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameGreaterThanOrEqualTo(String value) {
            addCriterion("login_name >=", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameLessThan(String value) {
            addCriterion("login_name <", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameLessThanOrEqualTo(String value) {
            addCriterion("login_name <=", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameLike(String value) {
            addCriterion("login_name like", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameNotLike(String value) {
            addCriterion("login_name not like", value, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameIn(List<String> values) {
            addCriterion("login_name in", values, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameNotIn(List<String> values) {
            addCriterion("login_name not in", values, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameBetween(String value1, String value2) {
            addCriterion("login_name between", value1, value2, "loginName");
            return (Criteria) this;
        }

        public Criteria andLoginNameNotBetween(String value1, String value2) {
            addCriterion("login_name not between", value1, value2, "loginName");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNull() {
            addCriterion("username is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("username is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("username =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("username <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("username >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("username >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("username <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("username <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("username like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("username not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("username in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("username not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("username between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("username not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andIdcardIsNull() {
            addCriterion("idcard is null");
            return (Criteria) this;
        }

        public Criteria andIdcardIsNotNull() {
            addCriterion("idcard is not null");
            return (Criteria) this;
        }

        public Criteria andIdcardEqualTo(String value) {
            addCriterion("idcard =", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotEqualTo(String value) {
            addCriterion("idcard <>", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardGreaterThan(String value) {
            addCriterion("idcard >", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardGreaterThanOrEqualTo(String value) {
            addCriterion("idcard >=", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLessThan(String value) {
            addCriterion("idcard <", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLessThanOrEqualTo(String value) {
            addCriterion("idcard <=", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLike(String value) {
            addCriterion("idcard like", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotLike(String value) {
            addCriterion("idcard not like", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardIn(List<String> values) {
            addCriterion("idcard in", values, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotIn(List<String> values) {
            addCriterion("idcard not in", values, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardBetween(String value1, String value2) {
            addCriterion("idcard between", value1, value2, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotBetween(String value1, String value2) {
            addCriterion("idcard not between", value1, value2, "idcard");
            return (Criteria) this;
        }

        public Criteria andEmailIsNull() {
            addCriterion("email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("email not between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNull() {
            addCriterion("phone is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNotNull() {
            addCriterion("phone is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneEqualTo(String value) {
            addCriterion("phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(String value) {
            addCriterion("phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(String value) {
            addCriterion("phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(String value) {
            addCriterion("phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(String value) {
            addCriterion("phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLike(String value) {
            addCriterion("phone like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotLike(String value) {
            addCriterion("phone not like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<String> values) {
            addCriterion("phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<String> values) {
            addCriterion("phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(String value1, String value2) {
            addCriterion("phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(String value1, String value2) {
            addCriterion("phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeIsNull() {
            addCriterion("application_time is null");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeIsNotNull() {
            addCriterion("application_time is not null");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeEqualTo(Date value) {
            addCriterion("application_time =", value, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeNotEqualTo(Date value) {
            addCriterion("application_time <>", value, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeGreaterThan(Date value) {
            addCriterion("application_time >", value, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("application_time >=", value, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeLessThan(Date value) {
            addCriterion("application_time <", value, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeLessThanOrEqualTo(Date value) {
            addCriterion("application_time <=", value, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeIn(List<Date> values) {
            addCriterion("application_time in", values, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeNotIn(List<Date> values) {
            addCriterion("application_time not in", values, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeBetween(Date value1, Date value2) {
            addCriterion("application_time between", value1, value2, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationTimeNotBetween(Date value1, Date value2) {
            addCriterion("application_time not between", value1, value2, "applicationTime");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionIsNull() {
            addCriterion("application_direction is null");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionIsNotNull() {
            addCriterion("application_direction is not null");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionEqualTo(Integer value) {
            addCriterion("application_direction =", value, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionNotEqualTo(Integer value) {
            addCriterion("application_direction <>", value, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionGreaterThan(Integer value) {
            addCriterion("application_direction >", value, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionGreaterThanOrEqualTo(Integer value) {
            addCriterion("application_direction >=", value, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionLessThan(Integer value) {
            addCriterion("application_direction <", value, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionLessThanOrEqualTo(Integer value) {
            addCriterion("application_direction <=", value, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionIn(List<Integer> values) {
            addCriterion("application_direction in", values, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionNotIn(List<Integer> values) {
            addCriterion("application_direction not in", values, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionBetween(Integer value1, Integer value2) {
            addCriterion("application_direction between", value1, value2, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andApplicationDirectionNotBetween(Integer value1, Integer value2) {
            addCriterion("application_direction not between", value1, value2, "applicationDirection");
            return (Criteria) this;
        }

        public Criteria andCheckStatusIsNull() {
            addCriterion("check_status is null");
            return (Criteria) this;
        }

        public Criteria andCheckStatusIsNotNull() {
            addCriterion("check_status is not null");
            return (Criteria) this;
        }

        public Criteria andCheckStatusEqualTo(Integer value) {
            addCriterion("check_status =", value, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusNotEqualTo(Integer value) {
            addCriterion("check_status <>", value, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusGreaterThan(Integer value) {
            addCriterion("check_status >", value, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("check_status >=", value, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusLessThan(Integer value) {
            addCriterion("check_status <", value, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusLessThanOrEqualTo(Integer value) {
            addCriterion("check_status <=", value, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusIn(List<Integer> values) {
            addCriterion("check_status in", values, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusNotIn(List<Integer> values) {
            addCriterion("check_status not in", values, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusBetween(Integer value1, Integer value2) {
            addCriterion("check_status between", value1, value2, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andCheckStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("check_status not between", value1, value2, "checkStatus");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("state is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("state is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(Integer value) {
            addCriterion("state =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(Integer value) {
            addCriterion("state <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(Integer value) {
            addCriterion("state >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("state >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(Integer value) {
            addCriterion("state <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(Integer value) {
            addCriterion("state <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<Integer> values) {
            addCriterion("state in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<Integer> values) {
            addCriterion("state not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(Integer value1, Integer value2) {
            addCriterion("state between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(Integer value1, Integer value2) {
            addCriterion("state not between", value1, value2, "state");
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

        public Criteria andCustomerPowerIsNull() {
            addCriterion("customer_power is null");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerIsNotNull() {
            addCriterion("customer_power is not null");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerEqualTo(String value) {
            addCriterion("customer_power =", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerNotEqualTo(String value) {
            addCriterion("customer_power <>", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerGreaterThan(String value) {
            addCriterion("customer_power >", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerGreaterThanOrEqualTo(String value) {
            addCriterion("customer_power >=", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerLessThan(String value) {
            addCriterion("customer_power <", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerLessThanOrEqualTo(String value) {
            addCriterion("customer_power <=", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerLike(String value) {
            addCriterion("customer_power like", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerNotLike(String value) {
            addCriterion("customer_power not like", value, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerIn(List<String> values) {
            addCriterion("customer_power in", values, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerNotIn(List<String> values) {
            addCriterion("customer_power not in", values, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerBetween(String value1, String value2) {
            addCriterion("customer_power between", value1, value2, "customerPower");
            return (Criteria) this;
        }

        public Criteria andCustomerPowerNotBetween(String value1, String value2) {
            addCriterion("customer_power not between", value1, value2, "customerPower");
            return (Criteria) this;
        }

        public Criteria andIspassIsNull() {
            addCriterion("ispass is null");
            return (Criteria) this;
        }

        public Criteria andIspassIsNotNull() {
            addCriterion("ispass is not null");
            return (Criteria) this;
        }

        public Criteria andIspassEqualTo(Integer value) {
            addCriterion("ispass =", value, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassNotEqualTo(Integer value) {
            addCriterion("ispass <>", value, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassGreaterThan(Integer value) {
            addCriterion("ispass >", value, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassGreaterThanOrEqualTo(Integer value) {
            addCriterion("ispass >=", value, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassLessThan(Integer value) {
            addCriterion("ispass <", value, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassLessThanOrEqualTo(Integer value) {
            addCriterion("ispass <=", value, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassIn(List<Integer> values) {
            addCriterion("ispass in", values, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassNotIn(List<Integer> values) {
            addCriterion("ispass not in", values, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassBetween(Integer value1, Integer value2) {
            addCriterion("ispass between", value1, value2, "ispass");
            return (Criteria) this;
        }

        public Criteria andIspassNotBetween(Integer value1, Integer value2) {
            addCriterion("ispass not between", value1, value2, "ispass");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNull() {
            addCriterion("password is null");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNotNull() {
            addCriterion("password is not null");
            return (Criteria) this;
        }

        public Criteria andPasswordEqualTo(String value) {
            addCriterion("password =", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotEqualTo(String value) {
            addCriterion("password <>", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThan(String value) {
            addCriterion("password >", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("password >=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThan(String value) {
            addCriterion("password <", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThanOrEqualTo(String value) {
            addCriterion("password <=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLike(String value) {
            addCriterion("password like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotLike(String value) {
            addCriterion("password not like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordIn(List<String> values) {
            addCriterion("password in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotIn(List<String> values) {
            addCriterion("password not in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordBetween(String value1, String value2) {
            addCriterion("password between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotBetween(String value1, String value2) {
            addCriterion("password not between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andRoleIsNull() {
            addCriterion("role is null");
            return (Criteria) this;
        }

        public Criteria andRoleIsNotNull() {
            addCriterion("role is not null");
            return (Criteria) this;
        }

        public Criteria andRoleEqualTo(Integer value) {
            addCriterion("role =", value, "role");
            return (Criteria) this;
        }

        public Criteria andRoleNotEqualTo(Integer value) {
            addCriterion("role <>", value, "role");
            return (Criteria) this;
        }

        public Criteria andRoleGreaterThan(Integer value) {
            addCriterion("role >", value, "role");
            return (Criteria) this;
        }

        public Criteria andRoleGreaterThanOrEqualTo(Integer value) {
            addCriterion("role >=", value, "role");
            return (Criteria) this;
        }

        public Criteria andRoleLessThan(Integer value) {
            addCriterion("role <", value, "role");
            return (Criteria) this;
        }

        public Criteria andRoleLessThanOrEqualTo(Integer value) {
            addCriterion("role <=", value, "role");
            return (Criteria) this;
        }

        public Criteria andRoleIn(List<Integer> values) {
            addCriterion("role in", values, "role");
            return (Criteria) this;
        }

        public Criteria andRoleNotIn(List<Integer> values) {
            addCriterion("role not in", values, "role");
            return (Criteria) this;
        }

        public Criteria andRoleBetween(Integer value1, Integer value2) {
            addCriterion("role between", value1, value2, "role");
            return (Criteria) this;
        }

        public Criteria andRoleNotBetween(Integer value1, Integer value2) {
            addCriterion("role not between", value1, value2, "role");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleIsNull() {
            addCriterion("createpeople is null");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleIsNotNull() {
            addCriterion("createpeople is not null");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleEqualTo(Integer value) {
            addCriterion("createpeople =", value, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleNotEqualTo(Integer value) {
            addCriterion("createpeople <>", value, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleGreaterThan(Integer value) {
            addCriterion("createpeople >", value, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleGreaterThanOrEqualTo(Integer value) {
            addCriterion("createpeople >=", value, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleLessThan(Integer value) {
            addCriterion("createpeople <", value, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleLessThanOrEqualTo(Integer value) {
            addCriterion("createpeople <=", value, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleIn(List<Integer> values) {
            addCriterion("createpeople in", values, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleNotIn(List<Integer> values) {
            addCriterion("createpeople not in", values, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleBetween(Integer value1, Integer value2) {
            addCriterion("createpeople between", value1, value2, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCreatepeopleNotBetween(Integer value1, Integer value2) {
            addCriterion("createpeople not between", value1, value2, "createpeople");
            return (Criteria) this;
        }

        public Criteria andCategoryIsNull() {
            addCriterion("category is null");
            return (Criteria) this;
        }

        public Criteria andCategoryIsNotNull() {
            addCriterion("category is not null");
            return (Criteria) this;
        }

        public Criteria andCategoryEqualTo(String value) {
            addCriterion("category =", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotEqualTo(String value) {
            addCriterion("category <>", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryGreaterThan(String value) {
            addCriterion("category >", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryGreaterThanOrEqualTo(String value) {
            addCriterion("category >=", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryLessThan(String value) {
            addCriterion("category <", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryLessThanOrEqualTo(String value) {
            addCriterion("category <=", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryLike(String value) {
            addCriterion("category like", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotLike(String value) {
            addCriterion("category not like", value, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryIn(List<String> values) {
            addCriterion("category in", values, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotIn(List<String> values) {
            addCriterion("category not in", values, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryBetween(String value1, String value2) {
            addCriterion("category between", value1, value2, "category");
            return (Criteria) this;
        }

        public Criteria andCategoryNotBetween(String value1, String value2) {
            addCriterion("category not between", value1, value2, "category");
            return (Criteria) this;
        }

        public Criteria andAreaIsNull() {
            addCriterion("area is null");
            return (Criteria) this;
        }

        public Criteria andAreaIsNotNull() {
            addCriterion("area is not null");
            return (Criteria) this;
        }

        public Criteria andAreaEqualTo(String value) {
            addCriterion("area =", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotEqualTo(String value) {
            addCriterion("area <>", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaGreaterThan(String value) {
            addCriterion("area >", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaGreaterThanOrEqualTo(String value) {
            addCriterion("area >=", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLessThan(String value) {
            addCriterion("area <", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLessThanOrEqualTo(String value) {
            addCriterion("area <=", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLike(String value) {
            addCriterion("area like", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotLike(String value) {
            addCriterion("area not like", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaIn(List<String> values) {
            addCriterion("area in", values, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotIn(List<String> values) {
            addCriterion("area not in", values, "area");
            return (Criteria) this;
        }

        public Criteria andAreaBetween(String value1, String value2) {
            addCriterion("area between", value1, value2, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotBetween(String value1, String value2) {
            addCriterion("area not between", value1, value2, "area");
            return (Criteria) this;
        }

        public Criteria andStarttimeIsNull() {
            addCriterion("starttime is null");
            return (Criteria) this;
        }

        public Criteria andStarttimeIsNotNull() {
            addCriterion("starttime is not null");
            return (Criteria) this;
        }

        public Criteria andStarttimeEqualTo(Date value) {
            addCriterion("starttime =", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotEqualTo(Date value) {
            addCriterion("starttime <>", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeGreaterThan(Date value) {
            addCriterion("starttime >", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("starttime >=", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeLessThan(Date value) {
            addCriterion("starttime <", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeLessThanOrEqualTo(Date value) {
            addCriterion("starttime <=", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeIn(List<Date> values) {
            addCriterion("starttime in", values, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotIn(List<Date> values) {
            addCriterion("starttime not in", values, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeBetween(Date value1, Date value2) {
            addCriterion("starttime between", value1, value2, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotBetween(Date value1, Date value2) {
            addCriterion("starttime not between", value1, value2, "starttime");
            return (Criteria) this;
        }

        public Criteria andEndtimeIsNull() {
            addCriterion("endtime is null");
            return (Criteria) this;
        }

        public Criteria andEndtimeIsNotNull() {
            addCriterion("endtime is not null");
            return (Criteria) this;
        }

        public Criteria andEndtimeEqualTo(Date value) {
            addCriterion("endtime =", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeNotEqualTo(Date value) {
            addCriterion("endtime <>", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeGreaterThan(Date value) {
            addCriterion("endtime >", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("endtime >=", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeLessThan(Date value) {
            addCriterion("endtime <", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeLessThanOrEqualTo(Date value) {
            addCriterion("endtime <=", value, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeIn(List<Date> values) {
            addCriterion("endtime in", values, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeNotIn(List<Date> values) {
            addCriterion("endtime not in", values, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeBetween(Date value1, Date value2) {
            addCriterion("endtime between", value1, value2, "endtime");
            return (Criteria) this;
        }

        public Criteria andEndtimeNotBetween(Date value1, Date value2) {
            addCriterion("endtime not between", value1, value2, "endtime");
            return (Criteria) this;
        }

        public Criteria andCompanyIsNull() {
            addCriterion("company is null");
            return (Criteria) this;
        }

        public Criteria andCompanyIsNotNull() {
            addCriterion("company is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyEqualTo(String value) {
            addCriterion("company =", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotEqualTo(String value) {
            addCriterion("company <>", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyGreaterThan(String value) {
            addCriterion("company >", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyGreaterThanOrEqualTo(String value) {
            addCriterion("company >=", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLessThan(String value) {
            addCriterion("company <", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLessThanOrEqualTo(String value) {
            addCriterion("company <=", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLike(String value) {
            addCriterion("company like", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotLike(String value) {
            addCriterion("company not like", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyIn(List<String> values) {
            addCriterion("company in", values, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotIn(List<String> values) {
            addCriterion("company not in", values, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyBetween(String value1, String value2) {
            addCriterion("company between", value1, value2, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotBetween(String value1, String value2) {
            addCriterion("company not between", value1, value2, "company");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andMsgflagIsNull() {
            addCriterion("msgflag is null");
            return (Criteria) this;
        }

        public Criteria andMsgflagIsNotNull() {
            addCriterion("msgflag is not null");
            return (Criteria) this;
        }

        public Criteria andMsgflagEqualTo(Integer value) {
            addCriterion("msgflag =", value, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagNotEqualTo(Integer value) {
            addCriterion("msgflag <>", value, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagGreaterThan(Integer value) {
            addCriterion("msgflag >", value, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagGreaterThanOrEqualTo(Integer value) {
            addCriterion("msgflag >=", value, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagLessThan(Integer value) {
            addCriterion("msgflag <", value, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagLessThanOrEqualTo(Integer value) {
            addCriterion("msgflag <=", value, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagIn(List<Integer> values) {
            addCriterion("msgflag in", values, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagNotIn(List<Integer> values) {
            addCriterion("msgflag not in", values, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagBetween(Integer value1, Integer value2) {
            addCriterion("msgflag between", value1, value2, "msgflag");
            return (Criteria) this;
        }

        public Criteria andMsgflagNotBetween(Integer value1, Integer value2) {
            addCriterion("msgflag not between", value1, value2, "msgflag");
            return (Criteria) this;
        }

        public Criteria andSexIsNull() {
            addCriterion("sex is null");
            return (Criteria) this;
        }

        public Criteria andSexIsNotNull() {
            addCriterion("sex is not null");
            return (Criteria) this;
        }

        public Criteria andSexEqualTo(Integer value) {
            addCriterion("sex =", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotEqualTo(Integer value) {
            addCriterion("sex <>", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThan(Integer value) {
            addCriterion("sex >", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThanOrEqualTo(Integer value) {
            addCriterion("sex >=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThan(Integer value) {
            addCriterion("sex <", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThanOrEqualTo(Integer value) {
            addCriterion("sex <=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexIn(List<Integer> values) {
            addCriterion("sex in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotIn(List<Integer> values) {
            addCriterion("sex not in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexBetween(Integer value1, Integer value2) {
            addCriterion("sex between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotBetween(Integer value1, Integer value2) {
            addCriterion("sex not between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andBirthdayIsNull() {
            addCriterion("birthday is null");
            return (Criteria) this;
        }

        public Criteria andBirthdayIsNotNull() {
            addCriterion("birthday is not null");
            return (Criteria) this;
        }

        public Criteria andBirthdayEqualTo(Date value) {
            addCriterion("birthday =", value, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayNotEqualTo(Date value) {
            addCriterion("birthday <>", value, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayGreaterThan(Date value) {
            addCriterion("birthday >", value, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayGreaterThanOrEqualTo(Date value) {
            addCriterion("birthday >=", value, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayLessThan(Date value) {
            addCriterion("birthday <", value, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayLessThanOrEqualTo(Date value) {
            addCriterion("birthday <=", value, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayIn(List<Date> values) {
            addCriterion("birthday in", values, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayNotIn(List<Date> values) {
            addCriterion("birthday not in", values, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayBetween(Date value1, Date value2) {
            addCriterion("birthday between", value1, value2, "birthday");
            return (Criteria) this;
        }

        public Criteria andBirthdayNotBetween(Date value1, Date value2) {
            addCriterion("birthday not between", value1, value2, "birthday");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeIsNull() {
            addCriterion("certificatetype is null");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeIsNotNull() {
            addCriterion("certificatetype is not null");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeEqualTo(Integer value) {
            addCriterion("certificatetype =", value, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeNotEqualTo(Integer value) {
            addCriterion("certificatetype <>", value, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeGreaterThan(Integer value) {
            addCriterion("certificatetype >", value, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("certificatetype >=", value, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeLessThan(Integer value) {
            addCriterion("certificatetype <", value, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeLessThanOrEqualTo(Integer value) {
            addCriterion("certificatetype <=", value, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeIn(List<Integer> values) {
            addCriterion("certificatetype in", values, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeNotIn(List<Integer> values) {
            addCriterion("certificatetype not in", values, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeBetween(Integer value1, Integer value2) {
            addCriterion("certificatetype between", value1, value2, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andCertificatetypeNotBetween(Integer value1, Integer value2) {
            addCriterion("certificatetype not between", value1, value2, "certificatetype");
            return (Criteria) this;
        }

        public Criteria andNationIsNull() {
            addCriterion("nation is null");
            return (Criteria) this;
        }

        public Criteria andNationIsNotNull() {
            addCriterion("nation is not null");
            return (Criteria) this;
        }

        public Criteria andNationEqualTo(String value) {
            addCriterion("nation =", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotEqualTo(String value) {
            addCriterion("nation <>", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationGreaterThan(String value) {
            addCriterion("nation >", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationGreaterThanOrEqualTo(String value) {
            addCriterion("nation >=", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationLessThan(String value) {
            addCriterion("nation <", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationLessThanOrEqualTo(String value) {
            addCriterion("nation <=", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationLike(String value) {
            addCriterion("nation like", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotLike(String value) {
            addCriterion("nation not like", value, "nation");
            return (Criteria) this;
        }

        public Criteria andNationIn(List<String> values) {
            addCriterion("nation in", values, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotIn(List<String> values) {
            addCriterion("nation not in", values, "nation");
            return (Criteria) this;
        }

        public Criteria andNationBetween(String value1, String value2) {
            addCriterion("nation between", value1, value2, "nation");
            return (Criteria) this;
        }

        public Criteria andNationNotBetween(String value1, String value2) {
            addCriterion("nation not between", value1, value2, "nation");
            return (Criteria) this;
        }

        public Criteria andCountryIsNull() {
            addCriterion("country is null");
            return (Criteria) this;
        }

        public Criteria andCountryIsNotNull() {
            addCriterion("country is not null");
            return (Criteria) this;
        }

        public Criteria andCountryEqualTo(String value) {
            addCriterion("country =", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotEqualTo(String value) {
            addCriterion("country <>", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryGreaterThan(String value) {
            addCriterion("country >", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryGreaterThanOrEqualTo(String value) {
            addCriterion("country >=", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLessThan(String value) {
            addCriterion("country <", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLessThanOrEqualTo(String value) {
            addCriterion("country <=", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLike(String value) {
            addCriterion("country like", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotLike(String value) {
            addCriterion("country not like", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryIn(List<String> values) {
            addCriterion("country in", values, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotIn(List<String> values) {
            addCriterion("country not in", values, "country");
            return (Criteria) this;
        }

        public Criteria andCountryBetween(String value1, String value2) {
            addCriterion("country between", value1, value2, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotBetween(String value1, String value2) {
            addCriterion("country not between", value1, value2, "country");
            return (Criteria) this;
        }

        public Criteria andDepartIsNull() {
            addCriterion("depart is null");
            return (Criteria) this;
        }

        public Criteria andDepartIsNotNull() {
            addCriterion("depart is not null");
            return (Criteria) this;
        }

        public Criteria andDepartEqualTo(String value) {
            addCriterion("depart =", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartNotEqualTo(String value) {
            addCriterion("depart <>", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartGreaterThan(String value) {
            addCriterion("depart >", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartGreaterThanOrEqualTo(String value) {
            addCriterion("depart >=", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartLessThan(String value) {
            addCriterion("depart <", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartLessThanOrEqualTo(String value) {
            addCriterion("depart <=", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartLike(String value) {
            addCriterion("depart like", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartNotLike(String value) {
            addCriterion("depart not like", value, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartIn(List<String> values) {
            addCriterion("depart in", values, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartNotIn(List<String> values) {
            addCriterion("depart not in", values, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartBetween(String value1, String value2) {
            addCriterion("depart between", value1, value2, "depart");
            return (Criteria) this;
        }

        public Criteria andDepartNotBetween(String value1, String value2) {
            addCriterion("depart not between", value1, value2, "depart");
            return (Criteria) this;
        }

        public Criteria andJobtitleIsNull() {
            addCriterion("jobtitle is null");
            return (Criteria) this;
        }

        public Criteria andJobtitleIsNotNull() {
            addCriterion("jobtitle is not null");
            return (Criteria) this;
        }

        public Criteria andJobtitleEqualTo(Integer value) {
            addCriterion("jobtitle =", value, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleNotEqualTo(Integer value) {
            addCriterion("jobtitle <>", value, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleGreaterThan(Integer value) {
            addCriterion("jobtitle >", value, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleGreaterThanOrEqualTo(Integer value) {
            addCriterion("jobtitle >=", value, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleLessThan(Integer value) {
            addCriterion("jobtitle <", value, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleLessThanOrEqualTo(Integer value) {
            addCriterion("jobtitle <=", value, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleIn(List<Integer> values) {
            addCriterion("jobtitle in", values, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleNotIn(List<Integer> values) {
            addCriterion("jobtitle not in", values, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleBetween(Integer value1, Integer value2) {
            addCriterion("jobtitle between", value1, value2, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andJobtitleNotBetween(Integer value1, Integer value2) {
            addCriterion("jobtitle not between", value1, value2, "jobtitle");
            return (Criteria) this;
        }

        public Criteria andPostIsNull() {
            addCriterion("post is null");
            return (Criteria) this;
        }

        public Criteria andPostIsNotNull() {
            addCriterion("post is not null");
            return (Criteria) this;
        }

        public Criteria andPostEqualTo(Integer value) {
            addCriterion("post =", value, "post");
            return (Criteria) this;
        }

        public Criteria andPostNotEqualTo(Integer value) {
            addCriterion("post <>", value, "post");
            return (Criteria) this;
        }

        public Criteria andPostGreaterThan(Integer value) {
            addCriterion("post >", value, "post");
            return (Criteria) this;
        }

        public Criteria andPostGreaterThanOrEqualTo(Integer value) {
            addCriterion("post >=", value, "post");
            return (Criteria) this;
        }

        public Criteria andPostLessThan(Integer value) {
            addCriterion("post <", value, "post");
            return (Criteria) this;
        }

        public Criteria andPostLessThanOrEqualTo(Integer value) {
            addCriterion("post <=", value, "post");
            return (Criteria) this;
        }

        public Criteria andPostIn(List<Integer> values) {
            addCriterion("post in", values, "post");
            return (Criteria) this;
        }

        public Criteria andPostNotIn(List<Integer> values) {
            addCriterion("post not in", values, "post");
            return (Criteria) this;
        }

        public Criteria andPostBetween(Integer value1, Integer value2) {
            addCriterion("post between", value1, value2, "post");
            return (Criteria) this;
        }

        public Criteria andPostNotBetween(Integer value1, Integer value2) {
            addCriterion("post not between", value1, value2, "post");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNull() {
            addCriterion("province is null");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNotNull() {
            addCriterion("province is not null");
            return (Criteria) this;
        }

        public Criteria andProvinceEqualTo(String value) {
            addCriterion("province =", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotEqualTo(String value) {
            addCriterion("province <>", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThan(String value) {
            addCriterion("province >", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThanOrEqualTo(String value) {
            addCriterion("province >=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThan(String value) {
            addCriterion("province <", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThanOrEqualTo(String value) {
            addCriterion("province <=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLike(String value) {
            addCriterion("province like", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotLike(String value) {
            addCriterion("province not like", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceIn(List<String> values) {
            addCriterion("province in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotIn(List<String> values) {
            addCriterion("province not in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceBetween(String value1, String value2) {
            addCriterion("province between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotBetween(String value1, String value2) {
            addCriterion("province not between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andCityIsNull() {
            addCriterion("city is null");
            return (Criteria) this;
        }

        public Criteria andCityIsNotNull() {
            addCriterion("city is not null");
            return (Criteria) this;
        }

        public Criteria andCityEqualTo(String value) {
            addCriterion("city =", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotEqualTo(String value) {
            addCriterion("city <>", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThan(String value) {
            addCriterion("city >", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThanOrEqualTo(String value) {
            addCriterion("city >=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThan(String value) {
            addCriterion("city <", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThanOrEqualTo(String value) {
            addCriterion("city <=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLike(String value) {
            addCriterion("city like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotLike(String value) {
            addCriterion("city not like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityIn(List<String> values) {
            addCriterion("city in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotIn(List<String> values) {
            addCriterion("city not in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityBetween(String value1, String value2) {
            addCriterion("city between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotBetween(String value1, String value2) {
            addCriterion("city not between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andZipcodeIsNull() {
            addCriterion("zipcode is null");
            return (Criteria) this;
        }

        public Criteria andZipcodeIsNotNull() {
            addCriterion("zipcode is not null");
            return (Criteria) this;
        }

        public Criteria andZipcodeEqualTo(String value) {
            addCriterion("zipcode =", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeNotEqualTo(String value) {
            addCriterion("zipcode <>", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeGreaterThan(String value) {
            addCriterion("zipcode >", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeGreaterThanOrEqualTo(String value) {
            addCriterion("zipcode >=", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeLessThan(String value) {
            addCriterion("zipcode <", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeLessThanOrEqualTo(String value) {
            addCriterion("zipcode <=", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeLike(String value) {
            addCriterion("zipcode like", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeNotLike(String value) {
            addCriterion("zipcode not like", value, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeIn(List<String> values) {
            addCriterion("zipcode in", values, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeNotIn(List<String> values) {
            addCriterion("zipcode not in", values, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeBetween(String value1, String value2) {
            addCriterion("zipcode between", value1, value2, "zipcode");
            return (Criteria) this;
        }

        public Criteria andZipcodeNotBetween(String value1, String value2) {
            addCriterion("zipcode not between", value1, value2, "zipcode");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolIsNull() {
            addCriterion("graduatedschool is null");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolIsNotNull() {
            addCriterion("graduatedschool is not null");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolEqualTo(String value) {
            addCriterion("graduatedschool =", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolNotEqualTo(String value) {
            addCriterion("graduatedschool <>", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolGreaterThan(String value) {
            addCriterion("graduatedschool >", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolGreaterThanOrEqualTo(String value) {
            addCriterion("graduatedschool >=", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolLessThan(String value) {
            addCriterion("graduatedschool <", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolLessThanOrEqualTo(String value) {
            addCriterion("graduatedschool <=", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolLike(String value) {
            addCriterion("graduatedschool like", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolNotLike(String value) {
            addCriterion("graduatedschool not like", value, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolIn(List<String> values) {
            addCriterion("graduatedschool in", values, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolNotIn(List<String> values) {
            addCriterion("graduatedschool not in", values, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolBetween(String value1, String value2) {
            addCriterion("graduatedschool between", value1, value2, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andGraduatedschoolNotBetween(String value1, String value2) {
            addCriterion("graduatedschool not between", value1, value2, "graduatedschool");
            return (Criteria) this;
        }

        public Criteria andEducationalIsNull() {
            addCriterion("educational is null");
            return (Criteria) this;
        }

        public Criteria andEducationalIsNotNull() {
            addCriterion("educational is not null");
            return (Criteria) this;
        }

        public Criteria andEducationalEqualTo(String value) {
            addCriterion("educational =", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalNotEqualTo(String value) {
            addCriterion("educational <>", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalGreaterThan(String value) {
            addCriterion("educational >", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalGreaterThanOrEqualTo(String value) {
            addCriterion("educational >=", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalLessThan(String value) {
            addCriterion("educational <", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalLessThanOrEqualTo(String value) {
            addCriterion("educational <=", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalLike(String value) {
            addCriterion("educational like", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalNotLike(String value) {
            addCriterion("educational not like", value, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalIn(List<String> values) {
            addCriterion("educational in", values, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalNotIn(List<String> values) {
            addCriterion("educational not in", values, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalBetween(String value1, String value2) {
            addCriterion("educational between", value1, value2, "educational");
            return (Criteria) this;
        }

        public Criteria andEducationalNotBetween(String value1, String value2) {
            addCriterion("educational not between", value1, value2, "educational");
            return (Criteria) this;
        }

        public Criteria andGrantareaIsNull() {
            addCriterion("grantarea is null");
            return (Criteria) this;
        }

        public Criteria andGrantareaIsNotNull() {
            addCriterion("grantarea is not null");
            return (Criteria) this;
        }

        public Criteria andGrantareaEqualTo(String value) {
            addCriterion("grantarea =", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaNotEqualTo(String value) {
            addCriterion("grantarea <>", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaGreaterThan(String value) {
            addCriterion("grantarea >", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaGreaterThanOrEqualTo(String value) {
            addCriterion("grantarea >=", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaLessThan(String value) {
            addCriterion("grantarea <", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaLessThanOrEqualTo(String value) {
            addCriterion("grantarea <=", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaLike(String value) {
            addCriterion("grantarea like", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaNotLike(String value) {
            addCriterion("grantarea not like", value, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaIn(List<String> values) {
            addCriterion("grantarea in", values, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaNotIn(List<String> values) {
            addCriterion("grantarea not in", values, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaBetween(String value1, String value2) {
            addCriterion("grantarea between", value1, value2, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantareaNotBetween(String value1, String value2) {
            addCriterion("grantarea not between", value1, value2, "grantarea");
            return (Criteria) this;
        }

        public Criteria andGrantyearIsNull() {
            addCriterion("grantyear is null");
            return (Criteria) this;
        }

        public Criteria andGrantyearIsNotNull() {
            addCriterion("grantyear is not null");
            return (Criteria) this;
        }

        public Criteria andGrantyearEqualTo(String value) {
            addCriterion("grantyear =", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearNotEqualTo(String value) {
            addCriterion("grantyear <>", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearGreaterThan(String value) {
            addCriterion("grantyear >", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearGreaterThanOrEqualTo(String value) {
            addCriterion("grantyear >=", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearLessThan(String value) {
            addCriterion("grantyear <", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearLessThanOrEqualTo(String value) {
            addCriterion("grantyear <=", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearLike(String value) {
            addCriterion("grantyear like", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearNotLike(String value) {
            addCriterion("grantyear not like", value, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearIn(List<String> values) {
            addCriterion("grantyear in", values, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearNotIn(List<String> values) {
            addCriterion("grantyear not in", values, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearBetween(String value1, String value2) {
            addCriterion("grantyear between", value1, value2, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantyearNotBetween(String value1, String value2) {
            addCriterion("grantyear not between", value1, value2, "grantyear");
            return (Criteria) this;
        }

        public Criteria andGrantschoolIsNull() {
            addCriterion("grantschool is null");
            return (Criteria) this;
        }

        public Criteria andGrantschoolIsNotNull() {
            addCriterion("grantschool is not null");
            return (Criteria) this;
        }

        public Criteria andGrantschoolEqualTo(String value) {
            addCriterion("grantschool =", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolNotEqualTo(String value) {
            addCriterion("grantschool <>", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolGreaterThan(String value) {
            addCriterion("grantschool >", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolGreaterThanOrEqualTo(String value) {
            addCriterion("grantschool >=", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolLessThan(String value) {
            addCriterion("grantschool <", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolLessThanOrEqualTo(String value) {
            addCriterion("grantschool <=", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolLike(String value) {
            addCriterion("grantschool like", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolNotLike(String value) {
            addCriterion("grantschool not like", value, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolIn(List<String> values) {
            addCriterion("grantschool in", values, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolNotIn(List<String> values) {
            addCriterion("grantschool not in", values, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolBetween(String value1, String value2) {
            addCriterion("grantschool between", value1, value2, "grantschool");
            return (Criteria) this;
        }

        public Criteria andGrantschoolNotBetween(String value1, String value2) {
            addCriterion("grantschool not between", value1, value2, "grantschool");
            return (Criteria) this;
        }

        public Criteria andAcademicianIsNull() {
            addCriterion("academician is null");
            return (Criteria) this;
        }

        public Criteria andAcademicianIsNotNull() {
            addCriterion("academician is not null");
            return (Criteria) this;
        }

        public Criteria andAcademicianEqualTo(String value) {
            addCriterion("academician =", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianNotEqualTo(String value) {
            addCriterion("academician <>", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianGreaterThan(String value) {
            addCriterion("academician >", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianGreaterThanOrEqualTo(String value) {
            addCriterion("academician >=", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianLessThan(String value) {
            addCriterion("academician <", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianLessThanOrEqualTo(String value) {
            addCriterion("academician <=", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianLike(String value) {
            addCriterion("academician like", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianNotLike(String value) {
            addCriterion("academician not like", value, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianIn(List<String> values) {
            addCriterion("academician in", values, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianNotIn(List<String> values) {
            addCriterion("academician not in", values, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianBetween(String value1, String value2) {
            addCriterion("academician between", value1, value2, "academician");
            return (Criteria) this;
        }

        public Criteria andAcademicianNotBetween(String value1, String value2) {
            addCriterion("academician not between", value1, value2, "academician");
            return (Criteria) this;
        }

        public Criteria andTutorIsNull() {
            addCriterion("tutor is null");
            return (Criteria) this;
        }

        public Criteria andTutorIsNotNull() {
            addCriterion("tutor is not null");
            return (Criteria) this;
        }

        public Criteria andTutorEqualTo(String value) {
            addCriterion("tutor =", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotEqualTo(String value) {
            addCriterion("tutor <>", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorGreaterThan(String value) {
            addCriterion("tutor >", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorGreaterThanOrEqualTo(String value) {
            addCriterion("tutor >=", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorLessThan(String value) {
            addCriterion("tutor <", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorLessThanOrEqualTo(String value) {
            addCriterion("tutor <=", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorLike(String value) {
            addCriterion("tutor like", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotLike(String value) {
            addCriterion("tutor not like", value, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorIn(List<String> values) {
            addCriterion("tutor in", values, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotIn(List<String> values) {
            addCriterion("tutor not in", values, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorBetween(String value1, String value2) {
            addCriterion("tutor between", value1, value2, "tutor");
            return (Criteria) this;
        }

        public Criteria andTutorNotBetween(String value1, String value2) {
            addCriterion("tutor not between", value1, value2, "tutor");
            return (Criteria) this;
        }

        public Criteria andSpareemailIsNull() {
            addCriterion("spareemail is null");
            return (Criteria) this;
        }

        public Criteria andSpareemailIsNotNull() {
            addCriterion("spareemail is not null");
            return (Criteria) this;
        }

        public Criteria andSpareemailEqualTo(String value) {
            addCriterion("spareemail =", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailNotEqualTo(String value) {
            addCriterion("spareemail <>", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailGreaterThan(String value) {
            addCriterion("spareemail >", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailGreaterThanOrEqualTo(String value) {
            addCriterion("spareemail >=", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailLessThan(String value) {
            addCriterion("spareemail <", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailLessThanOrEqualTo(String value) {
            addCriterion("spareemail <=", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailLike(String value) {
            addCriterion("spareemail like", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailNotLike(String value) {
            addCriterion("spareemail not like", value, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailIn(List<String> values) {
            addCriterion("spareemail in", values, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailNotIn(List<String> values) {
            addCriterion("spareemail not in", values, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailBetween(String value1, String value2) {
            addCriterion("spareemail between", value1, value2, "spareemail");
            return (Criteria) this;
        }

        public Criteria andSpareemailNotBetween(String value1, String value2) {
            addCriterion("spareemail not between", value1, value2, "spareemail");
            return (Criteria) this;
        }

        public Criteria andOfficephoneIsNull() {
            addCriterion("officephone is null");
            return (Criteria) this;
        }

        public Criteria andOfficephoneIsNotNull() {
            addCriterion("officephone is not null");
            return (Criteria) this;
        }

        public Criteria andOfficephoneEqualTo(String value) {
            addCriterion("officephone =", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneNotEqualTo(String value) {
            addCriterion("officephone <>", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneGreaterThan(String value) {
            addCriterion("officephone >", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneGreaterThanOrEqualTo(String value) {
            addCriterion("officephone >=", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneLessThan(String value) {
            addCriterion("officephone <", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneLessThanOrEqualTo(String value) {
            addCriterion("officephone <=", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneLike(String value) {
            addCriterion("officephone like", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneNotLike(String value) {
            addCriterion("officephone not like", value, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneIn(List<String> values) {
            addCriterion("officephone in", values, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneNotIn(List<String> values) {
            addCriterion("officephone not in", values, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneBetween(String value1, String value2) {
            addCriterion("officephone between", value1, value2, "officephone");
            return (Criteria) this;
        }

        public Criteria andOfficephoneNotBetween(String value1, String value2) {
            addCriterion("officephone not between", value1, value2, "officephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneIsNull() {
            addCriterion("homephone is null");
            return (Criteria) this;
        }

        public Criteria andHomephoneIsNotNull() {
            addCriterion("homephone is not null");
            return (Criteria) this;
        }

        public Criteria andHomephoneEqualTo(String value) {
            addCriterion("homephone =", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneNotEqualTo(String value) {
            addCriterion("homephone <>", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneGreaterThan(String value) {
            addCriterion("homephone >", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneGreaterThanOrEqualTo(String value) {
            addCriterion("homephone >=", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneLessThan(String value) {
            addCriterion("homephone <", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneLessThanOrEqualTo(String value) {
            addCriterion("homephone <=", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneLike(String value) {
            addCriterion("homephone like", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneNotLike(String value) {
            addCriterion("homephone not like", value, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneIn(List<String> values) {
            addCriterion("homephone in", values, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneNotIn(List<String> values) {
            addCriterion("homephone not in", values, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneBetween(String value1, String value2) {
            addCriterion("homephone between", value1, value2, "homephone");
            return (Criteria) this;
        }

        public Criteria andHomephoneNotBetween(String value1, String value2) {
            addCriterion("homephone not between", value1, value2, "homephone");
            return (Criteria) this;
        }

        public Criteria andFaxIsNull() {
            addCriterion("fax is null");
            return (Criteria) this;
        }

        public Criteria andFaxIsNotNull() {
            addCriterion("fax is not null");
            return (Criteria) this;
        }

        public Criteria andFaxEqualTo(String value) {
            addCriterion("fax =", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxNotEqualTo(String value) {
            addCriterion("fax <>", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxGreaterThan(String value) {
            addCriterion("fax >", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxGreaterThanOrEqualTo(String value) {
            addCriterion("fax >=", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxLessThan(String value) {
            addCriterion("fax <", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxLessThanOrEqualTo(String value) {
            addCriterion("fax <=", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxLike(String value) {
            addCriterion("fax like", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxNotLike(String value) {
            addCriterion("fax not like", value, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxIn(List<String> values) {
            addCriterion("fax in", values, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxNotIn(List<String> values) {
            addCriterion("fax not in", values, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxBetween(String value1, String value2) {
            addCriterion("fax between", value1, value2, "fax");
            return (Criteria) this;
        }

        public Criteria andFaxNotBetween(String value1, String value2) {
            addCriterion("fax not between", value1, value2, "fax");
            return (Criteria) this;
        }

        public Criteria andPersonalwebIsNull() {
            addCriterion("personalweb is null");
            return (Criteria) this;
        }

        public Criteria andPersonalwebIsNotNull() {
            addCriterion("personalweb is not null");
            return (Criteria) this;
        }

        public Criteria andPersonalwebEqualTo(String value) {
            addCriterion("personalweb =", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebNotEqualTo(String value) {
            addCriterion("personalweb <>", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebGreaterThan(String value) {
            addCriterion("personalweb >", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebGreaterThanOrEqualTo(String value) {
            addCriterion("personalweb >=", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebLessThan(String value) {
            addCriterion("personalweb <", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebLessThanOrEqualTo(String value) {
            addCriterion("personalweb <=", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebLike(String value) {
            addCriterion("personalweb like", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebNotLike(String value) {
            addCriterion("personalweb not like", value, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebIn(List<String> values) {
            addCriterion("personalweb in", values, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebNotIn(List<String> values) {
            addCriterion("personalweb not in", values, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebBetween(String value1, String value2) {
            addCriterion("personalweb between", value1, value2, "personalweb");
            return (Criteria) this;
        }

        public Criteria andPersonalwebNotBetween(String value1, String value2) {
            addCriterion("personalweb not between", value1, value2, "personalweb");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1IsNull() {
            addCriterion("approvalnumber1 is null");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1IsNotNull() {
            addCriterion("approvalnumber1 is not null");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1EqualTo(String value) {
            addCriterion("approvalnumber1 =", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1NotEqualTo(String value) {
            addCriterion("approvalnumber1 <>", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1GreaterThan(String value) {
            addCriterion("approvalnumber1 >", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1GreaterThanOrEqualTo(String value) {
            addCriterion("approvalnumber1 >=", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1LessThan(String value) {
            addCriterion("approvalnumber1 <", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1LessThanOrEqualTo(String value) {
            addCriterion("approvalnumber1 <=", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1Like(String value) {
            addCriterion("approvalnumber1 like", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1NotLike(String value) {
            addCriterion("approvalnumber1 not like", value, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1In(List<String> values) {
            addCriterion("approvalnumber1 in", values, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1NotIn(List<String> values) {
            addCriterion("approvalnumber1 not in", values, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1Between(String value1, String value2) {
            addCriterion("approvalnumber1 between", value1, value2, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber1NotBetween(String value1, String value2) {
            addCriterion("approvalnumber1 not between", value1, value2, "approvalnumber1");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2IsNull() {
            addCriterion("approvalnumber2 is null");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2IsNotNull() {
            addCriterion("approvalnumber2 is not null");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2EqualTo(String value) {
            addCriterion("approvalnumber2 =", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2NotEqualTo(String value) {
            addCriterion("approvalnumber2 <>", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2GreaterThan(String value) {
            addCriterion("approvalnumber2 >", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2GreaterThanOrEqualTo(String value) {
            addCriterion("approvalnumber2 >=", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2LessThan(String value) {
            addCriterion("approvalnumber2 <", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2LessThanOrEqualTo(String value) {
            addCriterion("approvalnumber2 <=", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2Like(String value) {
            addCriterion("approvalnumber2 like", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2NotLike(String value) {
            addCriterion("approvalnumber2 not like", value, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2In(List<String> values) {
            addCriterion("approvalnumber2 in", values, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2NotIn(List<String> values) {
            addCriterion("approvalnumber2 not in", values, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2Between(String value1, String value2) {
            addCriterion("approvalnumber2 between", value1, value2, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber2NotBetween(String value1, String value2) {
            addCriterion("approvalnumber2 not between", value1, value2, "approvalnumber2");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3IsNull() {
            addCriterion("approvalnumber3 is null");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3IsNotNull() {
            addCriterion("approvalnumber3 is not null");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3EqualTo(String value) {
            addCriterion("approvalnumber3 =", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3NotEqualTo(String value) {
            addCriterion("approvalnumber3 <>", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3GreaterThan(String value) {
            addCriterion("approvalnumber3 >", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3GreaterThanOrEqualTo(String value) {
            addCriterion("approvalnumber3 >=", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3LessThan(String value) {
            addCriterion("approvalnumber3 <", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3LessThanOrEqualTo(String value) {
            addCriterion("approvalnumber3 <=", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3Like(String value) {
            addCriterion("approvalnumber3 like", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3NotLike(String value) {
            addCriterion("approvalnumber3 not like", value, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3In(List<String> values) {
            addCriterion("approvalnumber3 in", values, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3NotIn(List<String> values) {
            addCriterion("approvalnumber3 not in", values, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3Between(String value1, String value2) {
            addCriterion("approvalnumber3 between", value1, value2, "approvalnumber3");
            return (Criteria) this;
        }

        public Criteria andApprovalnumber3NotBetween(String value1, String value2) {
            addCriterion("approvalnumber3 not between", value1, value2, "approvalnumber3");
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