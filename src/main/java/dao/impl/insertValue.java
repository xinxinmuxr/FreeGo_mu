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
import org.apache.commons.collections.ArrayStack;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

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

    public static void insertValue(){
        JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
        List<HotelInfo> hotelInfoList = new ArrayList<HotelInfo>();
        //获得所有hotelInfo
        try {
         //1.定义sql语句
            String sql = "select * from hotel";
            hotelInfoList = template.query(sql,new BeanPropertyRowMapper<HotelInfo>(HotelInfo.class));
        } catch(Exception e) {
        System.out.println("失败");
        }

        for(int i = 0;i < hotelInfoList.size();i++){
            //准备17个标签
            List<Integer> suiji = new ArrayList<Integer>();
            suiji.add(3);suiji.add(5);suiji.add(6);
            suiji.add(7);suiji.add(8);suiji.add(9);
            suiji.add(10);suiji.add(11);suiji.add(12);
            suiji.add(13);suiji.add(14);suiji.add(18);
            suiji.add(19);suiji.add(10);suiji.add(21);
            suiji.add(22);suiji.add(23);
            //随机去掉几个
            for(int k = 0;k < suiji.size();k++){
                int value = (int)random()*18;
                for(int l = 0;l < suiji.size();l++){
                    if(value == suiji.get(l)){
                        suiji.remove(l);
                    }
                }
            }
            //到这里 上面的suiji(list)就是该酒店的标签
            for (int j = 0;j < suiji.size();j++){
                try {
                    String sql = "insert into(linkId,tagId,type) values(?,?,?)";
                    template.update(sql,hotelInfoList.get(i).getHotelId(),suiji.get(j),"酒店");
                }catch (Exception e){
                System.out.println("插入失败");
            }
        }
    }
    }
    public static void main(String[] arge){
        insertValue.insertValue();
    }
}