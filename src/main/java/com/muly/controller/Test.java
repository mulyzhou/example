package com.muly.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * 测试
 *
 * @author zhoubo
 * @create 2017-03-13 9:39
 **/
public class Test {

    public static String getBeforeHour(String tomorrow,int i) throws ParseException {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = f.parse(tomorrow);
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        c.add(Calendar.HOUR_OF_DAY, -i);
        return f.format(c.getTime());
    }
    public static List getAllHours(String today) throws ParseException {
        List list = new ArrayList();
        for (int i = 0; i <25; i++) {
            list.add(i,Test.getBeforeHour(today,i));
        }
        return list;
    }
    public static void main(String[] args) throws ParseException {
        String a = "2017-3-14";
        Date date = new Date();
        date.getHours();
        System.out.println(date.getHours());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(a+" ");
        stringBuffer.append(date.getHours()+":00:00");
        String b = String.valueOf(stringBuffer);
        System.out.println(b);
        System.out.println(Test.getAllHours(b));
        System.out.println(Test.getAllHours(b).size());
    }
}
