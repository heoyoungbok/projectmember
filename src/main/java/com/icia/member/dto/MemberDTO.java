package com.icia.member.dto;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {


 private  Long memberId;
 private String memberEmail;
 private String memberPassword;
 private String memberName;
 private String memberMobile;
 private int memberAge;


 public Long getMemberId() {
  return memberId;
 }

 public void setMemberId(Long memberId) {
  this.memberId = memberId;
 }

 public String getMemberEmail() {
  return memberEmail;
 }

 public void setMemberEmail(String memberEmail) {
  this.memberEmail = memberEmail;
 }

 public String getMemberPassword() {
  return memberPassword;
 }

 public void setMemberPassword(String memberPassword) {
  this.memberPassword = memberPassword;
 }

 public String getMemberName() {
  return memberName;
 }

 public void setMemberName(String memberName) {
  this.memberName = memberName;
 }

 public String getMemberMobile() {
  return memberMobile;
 }

 public void setMemberMobile(String memberMobile) {
  this.memberMobile = memberMobile;
 }

 public int getMemberAge() {
  return memberAge;
 }

 public void setMemberAge(int memberAge) {
  this.memberAge = memberAge;
 }


 @Override
 public String toString() {
  return "MemberDTO{" +
          "memberId=" + memberId +
          ", memberEmail='" + memberEmail + '\'' +
          ", memberPassword='" + memberPassword + '\'' +
          ", memberName='" + memberName + '\'' +
          ", memberMobile='" + memberMobile + '\'' +
          ", memberAge=" + memberAge +
          '}';
 }
}





