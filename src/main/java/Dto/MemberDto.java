package Dto;

import java.util.Date;



public class MemberDto {
    private int id;
    private String memberid;
    private String memberPassword;
    private String phoneNumber;
    private String memberEmail;
    private String memberGender;
    private Date regDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getMemberPassword() {
        return memberPassword;
    }

    public void setMemberPassword(String memberPassword) {
        this.memberPassword = memberPassword;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getMemberEmail() {
        return memberEmail;
    }

    public void setMemberEmail(String memberEmail) {
        this.memberEmail = memberEmail;
    }

    public String getMemberGender() {
        return memberGender;
    }

    public void setMemberGender(String memberGender) {
        this.memberGender = memberGender;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "MemberDto{" +
                "id=" + id +
                ", memberid='" + memberid + '\'' +
                ", memberPassword='" + memberPassword + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", memberEmail='" + memberEmail + '\'' +
                ", memberGender='" + memberGender + '\'' +
                ", regDate=" + regDate +
                '}';
    }

}
