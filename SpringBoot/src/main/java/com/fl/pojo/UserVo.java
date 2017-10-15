package com.fl.pojo;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/9/29.
 */
public class UserVo implements Serializable{
    private String id;
    private String userName;
    private String phone;
    private String password;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone() {
        return phone;
    }

    @Override
    public String toString() {
        return "UserVo{" + "id='" + id + '\'' + ", userName='" + userName + '\'' + ", phone='" + phone + '\'' + ", password='" + password + '\'' + '}';
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
