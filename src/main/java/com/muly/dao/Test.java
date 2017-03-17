package com.muly.dao;

import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * 测试
 *
 * @author zhoubo
 * @create 2017-03-08 15:29
 **/
public class Test {
    public static void main(String[] args) throws ParseException {
        /*Date date=new Date();//取时间

        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        System.out.println(calendar);
        calendar.add(calendar.DATE,-1);//把日期往后增加一天.整数往后推,负数往前移动
        date=calendar.getTime(); //这个时间就是日期往后推一天的结果
        System.out.println(date);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateString = formatter.format(date);

        System.out.println(dateString);*/
        String a = "2017-3-1";
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        Date date = f.parse(a);
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        System.out.println("今天:" + f.format(c.getTime()));
        c.add(Calendar.DAY_OF_MONTH, -1);
        System.out.println("昨天:" + f.format(c.getTime()));
    }
}
