package com.dataa.domain;

public class ExpandKeywordsEntity {

  Integer positive;
  Integer neutral;
  Integer negative;

  public Integer getPositive() {
    return positive;
  }

  public void setPositive(Integer positive) {
    this.positive = positive;
  }

  public Integer getNeutral() {
    return neutral;
  }

  public void setNeutral(Integer neutral) {
    this.neutral = neutral;
  }

  public Integer getNegative() {
    return negative;
  }

  public void setNegative(Integer negative) {
    this.negative = negative;
  }

  public ExpandKeywordsEntity(Integer positive, Integer neutral, Integer negative) {
    this.positive = positive;
    this.neutral = neutral;
    this.negative = negative;
  }
}
