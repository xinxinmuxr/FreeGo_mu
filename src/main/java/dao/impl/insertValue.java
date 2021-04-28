package dao.impl;/**
 * 一些声明信息
 * Description: <br/>
 * date: 2021/4/27 21:07<br/>
 *
 * @author hp<br />
 * @version
 * @since JDK 1.8
 */

import domain.HotelInfo;
import domain.RoomInfo;
import domain.TagLinkInfo;
import domain.UserInfo;
import org.apache.commons.collections.ArrayStack;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

import javax.jws.soap.SOAPBinding;
import java.util.ArrayList;
import java.util.List;

import static java.lang.Math.random;

/**
 * ClassName: insertValue <br/>
 * Description: <br/>
 * date: 2021/4/27 21:07<br/>
 * @author hp<br />
 */
public class insertValue {

    /*插入酒店*/
    public static void insertValue() {
        JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
        List<HotelInfo> hotelInfoList = new ArrayList<HotelInfo>();
        //获得所有hotelInfo
        try {
            //1.定义sql语句
            String sql = "select * from hotel";
            hotelInfoList = template.query(sql, new BeanPropertyRowMapper<HotelInfo>(HotelInfo.class));
        } catch (Exception e) {
            System.out.println("失败");
        }

        for (int i = 0; i < hotelInfoList.size(); i++) {
            //准备17个标签
            List<Integer> suiji = new ArrayList<Integer>();
            suiji.add(3);
            suiji.add(5);
            suiji.add(6);
            suiji.add(7);
            suiji.add(8);
            suiji.add(9);
            suiji.add(10);
            suiji.add(11);
            suiji.add(12);
            suiji.add(13);
            suiji.add(14);
            suiji.add(18);
            suiji.add(19);
            suiji.add(10);
            suiji.add(21);
            suiji.add(22);
            suiji.add(23);
            //随机去掉几个
            /*想让标签少就把suiji.size()*?的倍数加大 */
            for (int k = 0; k < suiji.size()*3; k++) {
                int value = (int) (random() * 24);
                System.out.println("随机数为:" + value);
                for (int l = 0; l < suiji.size(); l++) {
                    if (value == suiji.get(l)) {
                        suiji.remove(l);
                    }
                }
            }
            //到这里 上面的suiji(list)就是该酒店的标签
            for (int j = 0; j < suiji.size(); j++) {
                try {
                    String sql = "insert into taglink(linkId,tagId,type) values(?,?,?)";
                    template.update(sql, hotelInfoList.get(i).getHotelId(), suiji.get(j), "酒店");
                } catch (Exception e) {
                    System.out.println("插入失败");
                }
            }
        }
    }

    /*添加用户收藏信息*/
    public static void insertCollect(){
        JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
        List<HotelInfo> hotelInfoList = new ArrayList<HotelInfo>();
        List<UserInfo> userInfoList = new ArrayList<UserInfo>();
        //获得所有hotelInfo
        try {
            //1.定义sql语句
            String sql = "select * from hotel";
            hotelInfoList = template.query(sql, new BeanPropertyRowMapper<HotelInfo>(HotelInfo.class));
        } catch (Exception e) {
            System.out.println("失败");
        }
        try {
            //1.定义sql语句
            String sql = "select * from user";
            userInfoList = template.query(sql, new BeanPropertyRowMapper<UserInfo>(UserInfo.class));
        } catch (Exception e) {
            System.out.println("失败");
        }

        /*随机收藏20-40个*/
        for (int i = 0; i < userInfoList.size(); i++) {
            List<Integer> collect = new ArrayList<Integer>();
            //收藏数量随机
            int suijiValue = (int) (random() * 20) + 20;
            for (int k = 0; k < suijiValue; k++) {
                int hotel = 1000+ (int) (random() * 999);
                int pd = 0;
                for(int j = 0;j < collect.size();j++){
                    if(hotel == collect.get(j)){
                        pd = 1;
                    }
                }
                if(pd != 1){
                    collect.add(hotel);
                }
            }
            /*System.out.print("user"+userInfoList.get(i).getUserId()+":");
            for(int mm = 0;mm < collect.size();mm++){
                System.out.print(collect.get(mm)+",");
            }
            System.out.println("");*/
            for(int nn = 0;nn < collect.size();nn++){
                try {
                    String sql = "insert into hotelcollect(hotelId,userId) values(?,?)";
                    template.update(sql,collect.get(nn),userInfoList.get(i).getUserId());
                } catch (Exception e) {
                    System.out.println("插入失败");
                }
            }
        }
    }

    public static void insertLikeWeigh(){
        JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
        List<UserInfo> userList = new ArrayList<UserInfo>();   //所有用户
        List<TagLinkInfo> taglinkList = new ArrayList<TagLinkInfo>();   //所有用户
        List<HotelCo> taglinkList = new ArrayList<TagLinkInfo>();   //所有用户
        /*用户信息*/
        try {
            //1.定义sql语句
            String sql = "select * from user";
            userList = template.query(sql, new BeanPropertyRowMapper<UserInfo>(UserInfo.class));
        } catch (Exception e) {
            System.out.println("失败");
        }
        /*tagLink信息*/
        try {
            //1.定义sql语句
            String sql = "select * from taglink";
            taglinkList = template.query(sql, new BeanPropertyRowMapper<TagLinkInfo>(TagLinkInfo.class));
        } catch (Exception e) {
            System.out.println("失败");
        }

        for(int i = 0;i < userList.size();i++){  //所有用户

        }
    }
    public static void main(String[] arge){
        //insertValue.insertValue();
        //insertValue.insertCollect();
    }
}