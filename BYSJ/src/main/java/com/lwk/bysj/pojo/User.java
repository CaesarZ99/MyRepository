package com.lwk.bysj.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
@JsonIgnoreProperties(ignoreUnknown = true)//json反序列化过滤看不见的属性
public class User implements Serializable {
    private static final long serialVersionUID = -4687032844173298198L;
    private Integer uid;
    @NotBlank(message = "账号不能为空")
    private String account;
    @NotBlank(message = "密码不能为空")
    @Size(min = 5, max = 19, message = "密码长度应该为6-18个字符")
    private String password;
    @NotBlank(message = "姓名不能为空")
    private String userName;
    private int gender;
    @NotBlank(message = "身份证号不能为空")
    @Size(min = 18, max = 18, message = "身份证输入错误")
    private String idNum;
    @NotNull(message = "年龄不能为空")
    @Range(min = 0, max = 150, message = "年龄不在范围之内")
    private Integer age;
    private String telNum;
    @NotBlank(message="请输入邮箱，确保账号安全")
    private String email;
    private int state;
    private Role role;
    public String getRolename(){
        return this.role.getRolename();
    }
    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getTelNum() {
        return telNum;
    }

    public void setTelNum(String telNum) {
        this.telNum = telNum;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public User(Integer uid, @NotBlank(message = "账号不能为空") String account, @NotBlank(message = "密码不能为空") @Size(min = 5, max = 19, message = "密码长度应该为6-18个字符") String password, @NotBlank(message = "姓名不能为空") String userName, int gender, @NotBlank(message = "身份证号不能为空") @Size(min = 18, max = 18, message = "身份证输入错误") String idNum, @NotNull(message = "年龄不能为空") @Range(min = 0, max = 150, message = "年龄不在范围之内") Integer age, String telNum, String email, int state, Role role) {
        this.uid = uid;
        this.account = account;
        this.password = password;
        this.userName = userName;
        this.gender = gender;
        this.idNum = idNum;
        this.age = age;
        this.telNum = telNum;
        this.email = email;
        this.state = state;
        this.role = role;
    }

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", userName='" + userName + '\'' +
                ", gender=" + gender +
                ", idNum='" + idNum + '\'' +
                ", age=" + age +
                ", telNum='" + telNum + '\'' +
                ", email='" + email + '\'' +
                ", state=" + state +
                ", role=" + role +
                '}';
    }
}