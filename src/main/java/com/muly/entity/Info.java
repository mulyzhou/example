package com.muly.entity;

/**
 * user信息
 *
 * @author zhoubo
 * @create 2017-03-17 15:51
 **/
public class Info {

    private int infoid;
    private int userid;
    private String address;

    public int getInfoid() {
        return infoid;
    }

    public void setInfoid(int infoid) {
        this.infoid = infoid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Info{" +
                "infoid=" + infoid +
                ", userid=" + userid +
                ", address='" + address + '\'' +
                '}';
    }
}
