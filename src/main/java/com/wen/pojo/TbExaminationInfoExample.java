package com.wen.pojo;

import java.util.ArrayList;
import java.util.List;

public class TbExaminationInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbExaminationInfoExample() {
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

        public Criteria andStuidIsNull() {
            addCriterion("stuId is null");
            return (Criteria) this;
        }

        public Criteria andStuidIsNotNull() {
            addCriterion("stuId is not null");
            return (Criteria) this;
        }

        public Criteria andStuidEqualTo(Integer value) {
            addCriterion("stuId =", value, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidNotEqualTo(Integer value) {
            addCriterion("stuId <>", value, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidGreaterThan(Integer value) {
            addCriterion("stuId >", value, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidGreaterThanOrEqualTo(Integer value) {
            addCriterion("stuId >=", value, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidLessThan(Integer value) {
            addCriterion("stuId <", value, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidLessThanOrEqualTo(Integer value) {
            addCriterion("stuId <=", value, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidIn(List<Integer> values) {
            addCriterion("stuId in", values, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidNotIn(List<Integer> values) {
            addCriterion("stuId not in", values, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidBetween(Integer value1, Integer value2) {
            addCriterion("stuId between", value1, value2, "stuid");
            return (Criteria) this;
        }

        public Criteria andStuidNotBetween(Integer value1, Integer value2) {
            addCriterion("stuId not between", value1, value2, "stuid");
            return (Criteria) this;
        }

        public Criteria andKemuIsNull() {
            addCriterion("kemu is null");
            return (Criteria) this;
        }

        public Criteria andKemuIsNotNull() {
            addCriterion("kemu is not null");
            return (Criteria) this;
        }

        public Criteria andKemuEqualTo(String value) {
            addCriterion("kemu =", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuNotEqualTo(String value) {
            addCriterion("kemu <>", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuGreaterThan(String value) {
            addCriterion("kemu >", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuGreaterThanOrEqualTo(String value) {
            addCriterion("kemu >=", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuLessThan(String value) {
            addCriterion("kemu <", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuLessThanOrEqualTo(String value) {
            addCriterion("kemu <=", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuLike(String value) {
            addCriterion("kemu like", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuNotLike(String value) {
            addCriterion("kemu not like", value, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuIn(List<String> values) {
            addCriterion("kemu in", values, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuNotIn(List<String> values) {
            addCriterion("kemu not in", values, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuBetween(String value1, String value2) {
            addCriterion("kemu between", value1, value2, "kemu");
            return (Criteria) this;
        }

        public Criteria andKemuNotBetween(String value1, String value2) {
            addCriterion("kemu not between", value1, value2, "kemu");
            return (Criteria) this;
        }

        public Criteria andSkscoreIsNull() {
            addCriterion("skScore is null");
            return (Criteria) this;
        }

        public Criteria andSkscoreIsNotNull() {
            addCriterion("skScore is not null");
            return (Criteria) this;
        }

        public Criteria andSkscoreEqualTo(Integer value) {
            addCriterion("skScore =", value, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreNotEqualTo(Integer value) {
            addCriterion("skScore <>", value, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreGreaterThan(Integer value) {
            addCriterion("skScore >", value, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("skScore >=", value, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreLessThan(Integer value) {
            addCriterion("skScore <", value, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreLessThanOrEqualTo(Integer value) {
            addCriterion("skScore <=", value, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreIn(List<Integer> values) {
            addCriterion("skScore in", values, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreNotIn(List<Integer> values) {
            addCriterion("skScore not in", values, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreBetween(Integer value1, Integer value2) {
            addCriterion("skScore between", value1, value2, "skscore");
            return (Criteria) this;
        }

        public Criteria andSkscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("skScore not between", value1, value2, "skscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreIsNull() {
            addCriterion("sbScore is null");
            return (Criteria) this;
        }

        public Criteria andSbscoreIsNotNull() {
            addCriterion("sbScore is not null");
            return (Criteria) this;
        }

        public Criteria andSbscoreEqualTo(Integer value) {
            addCriterion("sbScore =", value, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreNotEqualTo(Integer value) {
            addCriterion("sbScore <>", value, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreGreaterThan(Integer value) {
            addCriterion("sbScore >", value, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("sbScore >=", value, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreLessThan(Integer value) {
            addCriterion("sbScore <", value, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreLessThanOrEqualTo(Integer value) {
            addCriterion("sbScore <=", value, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreIn(List<Integer> values) {
            addCriterion("sbScore in", values, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreNotIn(List<Integer> values) {
            addCriterion("sbScore not in", values, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreBetween(Integer value1, Integer value2) {
            addCriterion("sbScore between", value1, value2, "sbscore");
            return (Criteria) this;
        }

        public Criteria andSbscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("sbScore not between", value1, value2, "sbscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreIsNull() {
            addCriterion("lkScore is null");
            return (Criteria) this;
        }

        public Criteria andLkscoreIsNotNull() {
            addCriterion("lkScore is not null");
            return (Criteria) this;
        }

        public Criteria andLkscoreEqualTo(Integer value) {
            addCriterion("lkScore =", value, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreNotEqualTo(Integer value) {
            addCriterion("lkScore <>", value, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreGreaterThan(Integer value) {
            addCriterion("lkScore >", value, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("lkScore >=", value, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreLessThan(Integer value) {
            addCriterion("lkScore <", value, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreLessThanOrEqualTo(Integer value) {
            addCriterion("lkScore <=", value, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreIn(List<Integer> values) {
            addCriterion("lkScore in", values, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreNotIn(List<Integer> values) {
            addCriterion("lkScore not in", values, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreBetween(Integer value1, Integer value2) {
            addCriterion("lkScore between", value1, value2, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLkscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("lkScore not between", value1, value2, "lkscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreIsNull() {
            addCriterion("lbScore is null");
            return (Criteria) this;
        }

        public Criteria andLbscoreIsNotNull() {
            addCriterion("lbScore is not null");
            return (Criteria) this;
        }

        public Criteria andLbscoreEqualTo(Integer value) {
            addCriterion("lbScore =", value, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreNotEqualTo(Integer value) {
            addCriterion("lbScore <>", value, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreGreaterThan(Integer value) {
            addCriterion("lbScore >", value, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("lbScore >=", value, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreLessThan(Integer value) {
            addCriterion("lbScore <", value, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreLessThanOrEqualTo(Integer value) {
            addCriterion("lbScore <=", value, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreIn(List<Integer> values) {
            addCriterion("lbScore in", values, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreNotIn(List<Integer> values) {
            addCriterion("lbScore not in", values, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreBetween(Integer value1, Integer value2) {
            addCriterion("lbScore between", value1, value2, "lbscore");
            return (Criteria) this;
        }

        public Criteria andLbscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("lbScore not between", value1, value2, "lbscore");
            return (Criteria) this;
        }

        public Criteria andZkzhIsNull() {
            addCriterion("zkzh is null");
            return (Criteria) this;
        }

        public Criteria andZkzhIsNotNull() {
            addCriterion("zkzh is not null");
            return (Criteria) this;
        }

        public Criteria andZkzhEqualTo(String value) {
            addCriterion("zkzh =", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhNotEqualTo(String value) {
            addCriterion("zkzh <>", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhGreaterThan(String value) {
            addCriterion("zkzh >", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhGreaterThanOrEqualTo(String value) {
            addCriterion("zkzh >=", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhLessThan(String value) {
            addCriterion("zkzh <", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhLessThanOrEqualTo(String value) {
            addCriterion("zkzh <=", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhLike(String value) {
            addCriterion("zkzh like", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhNotLike(String value) {
            addCriterion("zkzh not like", value, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhIn(List<String> values) {
            addCriterion("zkzh in", values, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhNotIn(List<String> values) {
            addCriterion("zkzh not in", values, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhBetween(String value1, String value2) {
            addCriterion("zkzh between", value1, value2, "zkzh");
            return (Criteria) this;
        }

        public Criteria andZkzhNotBetween(String value1, String value2) {
            addCriterion("zkzh not between", value1, value2, "zkzh");
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