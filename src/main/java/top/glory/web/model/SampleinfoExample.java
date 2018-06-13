package top.glory.web.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SampleinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SampleinfoExample() {
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

        public Criteria andSampleIdIsNull() {
            addCriterion("sample_id is null");
            return (Criteria) this;
        }

        public Criteria andSampleIdIsNotNull() {
            addCriterion("sample_id is not null");
            return (Criteria) this;
        }

        public Criteria andSampleIdEqualTo(String value) {
            addCriterion("sample_id =", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdNotEqualTo(String value) {
            addCriterion("sample_id <>", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdGreaterThan(String value) {
            addCriterion("sample_id >", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdGreaterThanOrEqualTo(String value) {
            addCriterion("sample_id >=", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdLessThan(String value) {
            addCriterion("sample_id <", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdLessThanOrEqualTo(String value) {
            addCriterion("sample_id <=", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdLike(String value) {
            addCriterion("sample_id like", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdNotLike(String value) {
            addCriterion("sample_id not like", value, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdIn(List<String> values) {
            addCriterion("sample_id in", values, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdNotIn(List<String> values) {
            addCriterion("sample_id not in", values, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdBetween(String value1, String value2) {
            addCriterion("sample_id between", value1, value2, "sampleId");
            return (Criteria) this;
        }

        public Criteria andSampleIdNotBetween(String value1, String value2) {
            addCriterion("sample_id not between", value1, value2, "sampleId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdIsNull() {
            addCriterion("crop_category_id is null");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdIsNotNull() {
            addCriterion("crop_category_id is not null");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdEqualTo(Integer value) {
            addCriterion("crop_category_id =", value, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdNotEqualTo(Integer value) {
            addCriterion("crop_category_id <>", value, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdGreaterThan(Integer value) {
            addCriterion("crop_category_id >", value, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("crop_category_id >=", value, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdLessThan(Integer value) {
            addCriterion("crop_category_id <", value, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("crop_category_id <=", value, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdIn(List<Integer> values) {
            addCriterion("crop_category_id in", values, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdNotIn(List<Integer> values) {
            addCriterion("crop_category_id not in", values, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdBetween(Integer value1, Integer value2) {
            addCriterion("crop_category_id between", value1, value2, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andCropCategoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("crop_category_id not between", value1, value2, "cropCategoryId");
            return (Criteria) this;
        }

        public Criteria andBreedIsNull() {
            addCriterion("breed is null");
            return (Criteria) this;
        }

        public Criteria andBreedIsNotNull() {
            addCriterion("breed is not null");
            return (Criteria) this;
        }

        public Criteria andBreedEqualTo(Integer value) {
            addCriterion("breed =", value, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedNotEqualTo(Integer value) {
            addCriterion("breed <>", value, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedGreaterThan(Integer value) {
            addCriterion("breed >", value, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedGreaterThanOrEqualTo(Integer value) {
            addCriterion("breed >=", value, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedLessThan(Integer value) {
            addCriterion("breed <", value, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedLessThanOrEqualTo(Integer value) {
            addCriterion("breed <=", value, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedIn(List<Integer> values) {
            addCriterion("breed in", values, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedNotIn(List<Integer> values) {
            addCriterion("breed not in", values, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedBetween(Integer value1, Integer value2) {
            addCriterion("breed between", value1, value2, "breed");
            return (Criteria) this;
        }

        public Criteria andBreedNotBetween(Integer value1, Integer value2) {
            addCriterion("breed not between", value1, value2, "breed");
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

        public Criteria andCountyIsNull() {
            addCriterion("county is null");
            return (Criteria) this;
        }

        public Criteria andCountyIsNotNull() {
            addCriterion("county is not null");
            return (Criteria) this;
        }

        public Criteria andCountyEqualTo(String value) {
            addCriterion("county =", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyNotEqualTo(String value) {
            addCriterion("county <>", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyGreaterThan(String value) {
            addCriterion("county >", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyGreaterThanOrEqualTo(String value) {
            addCriterion("county >=", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyLessThan(String value) {
            addCriterion("county <", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyLessThanOrEqualTo(String value) {
            addCriterion("county <=", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyLike(String value) {
            addCriterion("county like", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyNotLike(String value) {
            addCriterion("county not like", value, "county");
            return (Criteria) this;
        }

        public Criteria andCountyIn(List<String> values) {
            addCriterion("county in", values, "county");
            return (Criteria) this;
        }

        public Criteria andCountyNotIn(List<String> values) {
            addCriterion("county not in", values, "county");
            return (Criteria) this;
        }

        public Criteria andCountyBetween(String value1, String value2) {
            addCriterion("county between", value1, value2, "county");
            return (Criteria) this;
        }

        public Criteria andCountyNotBetween(String value1, String value2) {
            addCriterion("county not between", value1, value2, "county");
            return (Criteria) this;
        }

        public Criteria andTownshipIsNull() {
            addCriterion("township is null");
            return (Criteria) this;
        }

        public Criteria andTownshipIsNotNull() {
            addCriterion("township is not null");
            return (Criteria) this;
        }

        public Criteria andTownshipEqualTo(String value) {
            addCriterion("township =", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipNotEqualTo(String value) {
            addCriterion("township <>", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipGreaterThan(String value) {
            addCriterion("township >", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipGreaterThanOrEqualTo(String value) {
            addCriterion("township >=", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipLessThan(String value) {
            addCriterion("township <", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipLessThanOrEqualTo(String value) {
            addCriterion("township <=", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipLike(String value) {
            addCriterion("township like", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipNotLike(String value) {
            addCriterion("township not like", value, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipIn(List<String> values) {
            addCriterion("township in", values, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipNotIn(List<String> values) {
            addCriterion("township not in", values, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipBetween(String value1, String value2) {
            addCriterion("township between", value1, value2, "township");
            return (Criteria) this;
        }

        public Criteria andTownshipNotBetween(String value1, String value2) {
            addCriterion("township not between", value1, value2, "township");
            return (Criteria) this;
        }

        public Criteria andVillageIsNull() {
            addCriterion("village is null");
            return (Criteria) this;
        }

        public Criteria andVillageIsNotNull() {
            addCriterion("village is not null");
            return (Criteria) this;
        }

        public Criteria andVillageEqualTo(String value) {
            addCriterion("village =", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageNotEqualTo(String value) {
            addCriterion("village <>", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageGreaterThan(String value) {
            addCriterion("village >", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageGreaterThanOrEqualTo(String value) {
            addCriterion("village >=", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageLessThan(String value) {
            addCriterion("village <", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageLessThanOrEqualTo(String value) {
            addCriterion("village <=", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageLike(String value) {
            addCriterion("village like", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageNotLike(String value) {
            addCriterion("village not like", value, "village");
            return (Criteria) this;
        }

        public Criteria andVillageIn(List<String> values) {
            addCriterion("village in", values, "village");
            return (Criteria) this;
        }

        public Criteria andVillageNotIn(List<String> values) {
            addCriterion("village not in", values, "village");
            return (Criteria) this;
        }

        public Criteria andVillageBetween(String value1, String value2) {
            addCriterion("village between", value1, value2, "village");
            return (Criteria) this;
        }

        public Criteria andVillageNotBetween(String value1, String value2) {
            addCriterion("village not between", value1, value2, "village");
            return (Criteria) this;
        }

        public Criteria andHouseholdIsNull() {
            addCriterion("household is null");
            return (Criteria) this;
        }

        public Criteria andHouseholdIsNotNull() {
            addCriterion("household is not null");
            return (Criteria) this;
        }

        public Criteria andHouseholdEqualTo(String value) {
            addCriterion("household =", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdNotEqualTo(String value) {
            addCriterion("household <>", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdGreaterThan(String value) {
            addCriterion("household >", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdGreaterThanOrEqualTo(String value) {
            addCriterion("household >=", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdLessThan(String value) {
            addCriterion("household <", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdLessThanOrEqualTo(String value) {
            addCriterion("household <=", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdLike(String value) {
            addCriterion("household like", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdNotLike(String value) {
            addCriterion("household not like", value, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdIn(List<String> values) {
            addCriterion("household in", values, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdNotIn(List<String> values) {
            addCriterion("household not in", values, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdBetween(String value1, String value2) {
            addCriterion("household between", value1, value2, "household");
            return (Criteria) this;
        }

        public Criteria andHouseholdNotBetween(String value1, String value2) {
            addCriterion("household not between", value1, value2, "household");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeIsNull() {
            addCriterion("harvest_time is null");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeIsNotNull() {
            addCriterion("harvest_time is not null");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeEqualTo(Date value) {
            addCriterion("harvest_time =", value, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeNotEqualTo(Date value) {
            addCriterion("harvest_time <>", value, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeGreaterThan(Date value) {
            addCriterion("harvest_time >", value, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("harvest_time >=", value, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeLessThan(Date value) {
            addCriterion("harvest_time <", value, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeLessThanOrEqualTo(Date value) {
            addCriterion("harvest_time <=", value, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeIn(List<Date> values) {
            addCriterion("harvest_time in", values, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeNotIn(List<Date> values) {
            addCriterion("harvest_time not in", values, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeBetween(Date value1, Date value2) {
            addCriterion("harvest_time between", value1, value2, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andHarvestTimeNotBetween(Date value1, Date value2) {
            addCriterion("harvest_time not between", value1, value2, "harvestTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeIsNull() {
            addCriterion("sampling_time is null");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeIsNotNull() {
            addCriterion("sampling_time is not null");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeEqualTo(Date value) {
            addCriterion("sampling_time =", value, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeNotEqualTo(Date value) {
            addCriterion("sampling_time <>", value, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeGreaterThan(Date value) {
            addCriterion("sampling_time >", value, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("sampling_time >=", value, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeLessThan(Date value) {
            addCriterion("sampling_time <", value, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeLessThanOrEqualTo(Date value) {
            addCriterion("sampling_time <=", value, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeIn(List<Date> values) {
            addCriterion("sampling_time in", values, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeNotIn(List<Date> values) {
            addCriterion("sampling_time not in", values, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeBetween(Date value1, Date value2) {
            addCriterion("sampling_time between", value1, value2, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingTimeNotBetween(Date value1, Date value2) {
            addCriterion("sampling_time not between", value1, value2, "samplingTime");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleIsNull() {
            addCriterion("sampling_people is null");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleIsNotNull() {
            addCriterion("sampling_people is not null");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleEqualTo(String value) {
            addCriterion("sampling_people =", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleNotEqualTo(String value) {
            addCriterion("sampling_people <>", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleGreaterThan(String value) {
            addCriterion("sampling_people >", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleGreaterThanOrEqualTo(String value) {
            addCriterion("sampling_people >=", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleLessThan(String value) {
            addCriterion("sampling_people <", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleLessThanOrEqualTo(String value) {
            addCriterion("sampling_people <=", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleLike(String value) {
            addCriterion("sampling_people like", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleNotLike(String value) {
            addCriterion("sampling_people not like", value, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleIn(List<String> values) {
            addCriterion("sampling_people in", values, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleNotIn(List<String> values) {
            addCriterion("sampling_people not in", values, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleBetween(String value1, String value2) {
            addCriterion("sampling_people between", value1, value2, "samplingPeople");
            return (Criteria) this;
        }

        public Criteria andSamplingPeopleNotBetween(String value1, String value2) {
            addCriterion("sampling_people not between", value1, value2, "samplingPeople");
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

        public Criteria andPollutionRateIsNull() {
            addCriterion("pollution_rate is null");
            return (Criteria) this;
        }

        public Criteria andPollutionRateIsNotNull() {
            addCriterion("pollution_rate is not null");
            return (Criteria) this;
        }

        public Criteria andPollutionRateEqualTo(Float value) {
            addCriterion("pollution_rate =", value, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateNotEqualTo(Float value) {
            addCriterion("pollution_rate <>", value, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateGreaterThan(Float value) {
            addCriterion("pollution_rate >", value, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateGreaterThanOrEqualTo(Float value) {
            addCriterion("pollution_rate >=", value, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateLessThan(Float value) {
            addCriterion("pollution_rate <", value, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateLessThanOrEqualTo(Float value) {
            addCriterion("pollution_rate <=", value, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateIn(List<Float> values) {
            addCriterion("pollution_rate in", values, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateNotIn(List<Float> values) {
            addCriterion("pollution_rate not in", values, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateBetween(Float value1, Float value2) {
            addCriterion("pollution_rate between", value1, value2, "pollutionRate");
            return (Criteria) this;
        }

        public Criteria andPollutionRateNotBetween(Float value1, Float value2) {
            addCriterion("pollution_rate not between", value1, value2, "pollutionRate");
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

        public Criteria andCheckPermissionsIsNull() {
            addCriterion("check_permissions is null");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsIsNotNull() {
            addCriterion("check_permissions is not null");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsEqualTo(Integer value) {
            addCriterion("check_permissions =", value, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsNotEqualTo(Integer value) {
            addCriterion("check_permissions <>", value, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsGreaterThan(Integer value) {
            addCriterion("check_permissions >", value, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsGreaterThanOrEqualTo(Integer value) {
            addCriterion("check_permissions >=", value, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsLessThan(Integer value) {
            addCriterion("check_permissions <", value, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsLessThanOrEqualTo(Integer value) {
            addCriterion("check_permissions <=", value, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsIn(List<Integer> values) {
            addCriterion("check_permissions in", values, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsNotIn(List<Integer> values) {
            addCriterion("check_permissions not in", values, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsBetween(Integer value1, Integer value2) {
            addCriterion("check_permissions between", value1, value2, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andCheckPermissionsNotBetween(Integer value1, Integer value2) {
            addCriterion("check_permissions not between", value1, value2, "checkPermissions");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesIsNull() {
            addCriterion("download_privileges is null");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesIsNotNull() {
            addCriterion("download_privileges is not null");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesEqualTo(Integer value) {
            addCriterion("download_privileges =", value, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesNotEqualTo(Integer value) {
            addCriterion("download_privileges <>", value, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesGreaterThan(Integer value) {
            addCriterion("download_privileges >", value, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesGreaterThanOrEqualTo(Integer value) {
            addCriterion("download_privileges >=", value, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesLessThan(Integer value) {
            addCriterion("download_privileges <", value, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesLessThanOrEqualTo(Integer value) {
            addCriterion("download_privileges <=", value, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesIn(List<Integer> values) {
            addCriterion("download_privileges in", values, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesNotIn(List<Integer> values) {
            addCriterion("download_privileges not in", values, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesBetween(Integer value1, Integer value2) {
            addCriterion("download_privileges between", value1, value2, "downloadPrivileges");
            return (Criteria) this;
        }

        public Criteria andDownloadPrivilegesNotBetween(Integer value1, Integer value2) {
            addCriterion("download_privileges not between", value1, value2, "downloadPrivileges");
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

        public Criteria andInputTimeIsNull() {
            addCriterion("input_time is null");
            return (Criteria) this;
        }

        public Criteria andInputTimeIsNotNull() {
            addCriterion("input_time is not null");
            return (Criteria) this;
        }

        public Criteria andInputTimeEqualTo(Date value) {
            addCriterion("input_time =", value, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeNotEqualTo(Date value) {
            addCriterion("input_time <>", value, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeGreaterThan(Date value) {
            addCriterion("input_time >", value, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("input_time >=", value, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeLessThan(Date value) {
            addCriterion("input_time <", value, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeLessThanOrEqualTo(Date value) {
            addCriterion("input_time <=", value, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeIn(List<Date> values) {
            addCriterion("input_time in", values, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeNotIn(List<Date> values) {
            addCriterion("input_time not in", values, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeBetween(Date value1, Date value2) {
            addCriterion("input_time between", value1, value2, "inputTime");
            return (Criteria) this;
        }

        public Criteria andInputTimeNotBetween(Date value1, Date value2) {
            addCriterion("input_time not between", value1, value2, "inputTime");
            return (Criteria) this;
        }

        public Criteria andFlagIsNull() {
            addCriterion("flag is null");
            return (Criteria) this;
        }

        public Criteria andFlagIsNotNull() {
            addCriterion("flag is not null");
            return (Criteria) this;
        }

        public Criteria andFlagEqualTo(Integer value) {
            addCriterion("flag =", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotEqualTo(Integer value) {
            addCriterion("flag <>", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThan(Integer value) {
            addCriterion("flag >", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("flag >=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThan(Integer value) {
            addCriterion("flag <", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThanOrEqualTo(Integer value) {
            addCriterion("flag <=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagIn(List<Integer> values) {
            addCriterion("flag in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotIn(List<Integer> values) {
            addCriterion("flag not in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagBetween(Integer value1, Integer value2) {
            addCriterion("flag between", value1, value2, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("flag not between", value1, value2, "flag");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleIsNull() {
            addCriterion("enterpeople is null");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleIsNotNull() {
            addCriterion("enterpeople is not null");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleEqualTo(Integer value) {
            addCriterion("enterpeople =", value, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleNotEqualTo(Integer value) {
            addCriterion("enterpeople <>", value, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleGreaterThan(Integer value) {
            addCriterion("enterpeople >", value, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleGreaterThanOrEqualTo(Integer value) {
            addCriterion("enterpeople >=", value, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleLessThan(Integer value) {
            addCriterion("enterpeople <", value, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleLessThanOrEqualTo(Integer value) {
            addCriterion("enterpeople <=", value, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleIn(List<Integer> values) {
            addCriterion("enterpeople in", values, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleNotIn(List<Integer> values) {
            addCriterion("enterpeople not in", values, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleBetween(Integer value1, Integer value2) {
            addCriterion("enterpeople between", value1, value2, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andEnterpeopleNotBetween(Integer value1, Integer value2) {
            addCriterion("enterpeople not between", value1, value2, "enterpeople");
            return (Criteria) this;
        }

        public Criteria andVarietiesIsNull() {
            addCriterion("varieties is null");
            return (Criteria) this;
        }

        public Criteria andVarietiesIsNotNull() {
            addCriterion("varieties is not null");
            return (Criteria) this;
        }

        public Criteria andVarietiesEqualTo(String value) {
            addCriterion("varieties =", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesNotEqualTo(String value) {
            addCriterion("varieties <>", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesGreaterThan(String value) {
            addCriterion("varieties >", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesGreaterThanOrEqualTo(String value) {
            addCriterion("varieties >=", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesLessThan(String value) {
            addCriterion("varieties <", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesLessThanOrEqualTo(String value) {
            addCriterion("varieties <=", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesLike(String value) {
            addCriterion("varieties like", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesNotLike(String value) {
            addCriterion("varieties not like", value, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesIn(List<String> values) {
            addCriterion("varieties in", values, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesNotIn(List<String> values) {
            addCriterion("varieties not in", values, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesBetween(String value1, String value2) {
            addCriterion("varieties between", value1, value2, "varieties");
            return (Criteria) this;
        }

        public Criteria andVarietiesNotBetween(String value1, String value2) {
            addCriterion("varieties not between", value1, value2, "varieties");
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