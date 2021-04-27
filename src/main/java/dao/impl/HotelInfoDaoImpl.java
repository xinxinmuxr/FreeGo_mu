package dao.impl;

import dao.HotelInfoDao;
import domain.*;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class HotelInfoDaoImpl implements HotelInfoDao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    /*查询酒店
    * */
    @Override
    public List<HotelInfo> queryHotelInfoByLocate(int locateId) {
        UserInfo user = null;
        try {
            //1.定义sql语句
            String sql = "select * from user where userId = ?";
            //2.执行
            user = template.queryForObject(sql, new BeanPropertyRowMapper<UserInfo>(UserInfo.class), 1000);
        } catch (Exception e){
            System.out.println("根据用户手机号查询用户信息失败");
        }
        if (user != null){
            System.out.println(user.getUserSex());
        }else{
            System.out.println("读取失败");
        }
        return null;
    }

    /*通过酒店id查询酒店所属房间     查询酒店房间第1方法*/
    public Map<Integer,List<RoomInfo>> queryHotelofRoomByHotelId(List<HotelInfo> hotelList, java.util.Date ruzhu, java.util.Date likai){
        Map<Integer,List<RoomInfo>> MapRoomList = new HashMap<Integer, List<RoomInfo>>();
        int hotelId;
        for (int i = 0;i < hotelList.size();i++) {
            /*1.找到酒店id*/
            hotelId = hotelList.get(i).getHotelId();
            List<RoomInfo> roomListOne = new ArrayList<RoomInfo>(); //每个酒店下面的总房间数
            List<RoomInfo> roomListTwo = new ArrayList<RoomInfo>(); //还有余额的房间
            List<RoomInfo> roomListEnd = new ArrayList<RoomInfo>(); //最后查询的房间数量
            /*2.根据酒店id找到该酒店下面的总房间*/
            try {
                //1.定义sql语句
                String sql = "select * from room where hotelId = ?";
                //2.执行
                //roomListOne中放了一个酒店id下面的所有房间号
                roomListOne = template.query(sql, new BeanPropertyRowMapper<RoomInfo>(RoomInfo.class), hotelId);
            } catch (Exception e) {
                System.out.println("失败");
            }
            //有入住离开时间
            if (ruzhu != null && likai != null) {
                /*3.根据房间id去查找对应的日子又多少房间*/
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                String begin = sdf.format(ruzhu);
                String end = sdf.format(likai);
                DateCalculator dc = new DateCalculator();
                List<String> dateList = dc.process(begin, end);
                int n = 0;  //日期循环
                int m = 0;  //roomListOne 循环
                for (; n < dateList.size(); n++) {   //一天
                    RoomInfo room = null;
                    for (; m < roomListOne.size(); m++) {  //酒店所拥有的房间数量
                        try {
                            //1.定义sql语句
                            String sql = "select * from room where roomId in" +
                                    "(select roomId from roomDate where roomId = ? and roomdate = ? and roomNum > ?)";
                            //2.执行
                            int j = 0;
                            for (; j < roomListOne.size(); j++) {
                                /*找出对应的房间日期关系*/
                                room = template.queryForObject(sql, new BeanPropertyRowMapper<RoomInfo>(RoomInfo.class), roomListOne.get(m).getRoomId(), dateList.get(n), 0);
                                //System.out.println(room.getRoomId());
                                roomListTwo.add(room);
                            }
                            //System.out.println(roomListTwo.size());
                        } catch (Exception e) {
                            System.out.println("查询酒店-某时间-房间数量余额失败");
                        }
                    }
                }
                System.out.println("id为" + hotelList.get(i).getHotelId() + "的酒店有" + roomListTwo.size() + "间可用房子");
                int leijia = 0;
                int pd = 0;
            /*for(leijia = 0;leijia < roomListTwo.size();leijia++){
                System.out.println(roomListTwo.get(leijia).getRoomId());
            }*/
                for (; leijia < roomListTwo.size(); leijia++) {
                    for (pd = leijia + 1; pd < roomListTwo.size(); pd++) {
                        if (roomListTwo.get(leijia).getRoomId() == -1) {
                            break;
                        }
                        if (roomListTwo.get(leijia).getRoomId() == roomListTwo.get(pd).getRoomId()) {
                            roomListTwo.get(pd).setRoomId(-1);
                        }
                    }
                }
                for (leijia = 0; leijia < roomListTwo.size(); leijia++) {
                    if (roomListTwo.get(leijia).getRoomId() != -1) {
                        roomListEnd.add(roomListTwo.get(leijia));
                    }
                }
                //System.out.println("当前roomList为" + roomListEnd.size());
                MapRoomList.put(hotelList.get(i).getHotelId(), roomListEnd);
            } else {  //有时间为空
                MapRoomList.put(hotelList.get(i).getHotelId(),roomListOne);
            }
        }
        return MapRoomList;
    }
    public Map<Integer,List<RoomInfo>> queryHotelofRoomByHotelId(List<HotelInfo> hotelList){
        Map<Integer,List<RoomInfo>> MapRoomList = new HashMap<Integer, List<RoomInfo>>();
        int hotelId;
        for (int i = 0;i < hotelList.size();i++) {
            /*1.找到酒店id*/
            hotelId = hotelList.get(i).getHotelId();
            List<RoomInfo> roomListOne = new ArrayList<RoomInfo>(); //每个酒店下面的总房间数
            /*2.根据酒店id找到该酒店下面的总房间*/
            try {
                //1.定义sql语句
                String sql = "select * from room where hotelId = ?";
                //2.执行
                roomListOne = template.query(sql, new BeanPropertyRowMapper<RoomInfo>(RoomInfo.class), hotelId);
            } catch (Exception e) {
                System.out.println("失败");
            }
             //有时间为空
                MapRoomList.put(hotelList.get(i).getHotelId(),roomListOne);
            }
        return MapRoomList;
    }

    /*queryHotelofRoomByHotelId 的测试函数*/
    /*public void queryHotelofRoomByHotelIdTest(){
        HotelInfoDaoImpl ss = new HotelInfoDaoImpl();
        Map<Integer,List<RoomInfo>> mapList = new HashMap<Integer, List<RoomInfo>>();
        List<HotelInfo> hotelList = new ArrayList<HotelInfo>();
        for(int i = 0;i < 4;i++){
            HotelInfo hotel  = new HotelInfo(1000+i);
            hotelList.add(hotel);
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date ruzhu = sdf.parse("2021-04-22");
        Date likai =  sdf.parse("2021-04-23");
        mapList = ss.queryHotelofRoomByHotelId(hotelList,ruzhu,likai);
        List<RoomInfo> roomList= mapList.get(1003);
        for(int i = 0;i < roomList.size();i++){
            System.out.println(roomList.get(i).getRoomId());
        }
    }
*/
    /*为数据库中的房间添加每日的房间数量数据*/
    public void insertAllRoomDate() throws ParseException {
        int i = 0;
        int j = 0;
        for (;i < 2000;i++){
            for(j = 1;j <= 30;j++) {
                String sql = "insert into roomdate values(?,?,?)";
                String string = "2021-6-"+j;
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                java.util.Date date = sdf.parse(string);
                if(i % 2 ==0){//单人间
                    template.update(sql,i,string,20);
                }else{//双刃剑
                    template.update(sql,i,string,10);
                }
            }
        }
        //template.update(sql,0,date,10);
        /*RoomDateInfo roomdate = new RoomDateInfo();
        //1.定义sql语句
        String sql = "select * from roomdate where roomId = ?";
        //2.执行
        roomdate = template.queryForObject(sql, new BeanPropertyRowMapper<RoomDateInfo>(RoomDateInfo.class), 0);
        if (roomdate != null){
            System.out.println(roomdate.toString());
        }else{
            System.out.println("读取失败");
        }*/
    }
    @Override
    public List<HotelInfo> recommendHotel(String userInput) {
        List<HotelInfo> hotelList = null;
       try {
            //1.定义sql语句
            String sql = "select * from hotel where hotelName like ?";
            //2.执行
            hotelList = template.query(sql, new BeanPropertyRowMapper<HotelInfo>(HotelInfo.class), "%"+userInput+"%");
        } catch (Exception e){
            System.out.println("根据用户手机号查询用户信息失败");
        }
        if (hotelList.size() != 0){
            //System.out.println(hotelList.size());
            //System.out.println(hotelList.get(0).toString());
            return hotelList;
        }else{
            System.out.println("读取失败");
        }

        return null;
    }
    public static void main(String[] args) throws ParseException {

    }
    /*为数据库中的房间添加数据*/
    public void insertAllRoom(){
        String sql = "insert into room(roomId,hotelId,roomName,peopleLimite,roomPrice,roomInform,flag,relateService) values(?,?,?,?,?,?,?,?)";
        int i = 1000;//酒店id
        int j = 0;   //房间id

        for (;i < 2000;i++) {
            template.update(sql,j,i,"单人房",1,100,"优秀的单人间",false,"");
            j++;
            template.update(sql,j,i,"双人房",2,180,"优秀的双人间",false,"");
            j++;
        }
    }

    @Override
    public List<HotelPictureInfo> queryHotelPicture(int hotelId) {
        return null;
    }

    @Override
    public Boolean queryIsCollectHotel(int userId, int hotelId) {
        return null;
    }

    @Override
    public Boolean setHotelCollect(int userId, int hotelId) {
        return null;
    }

    @Override
    public Boolean setHotelNotCollect(int userId, int hotelId) {
        return null;
    }

    @Override
    public List<HotelInfo> queryHotelInfoById(int hotelId) {
        return null;
    }

    @Override
    public List<HotelCommentInfo> queryHotelComment(int hotelId) {
        return null;
    }

    @Override
    public HotelCommentPictureInfo queryHotelCommentPicture(int hotelId) {
        return null;
    }

    @Override
    public List<RoomInfo> queryRoom(int hotelId, String arriveTime, String departmentTimes) {
        return null;
    }

    @Override
    public List<RoomDateInfo> queryTheTimeRoom(int hotelId, String checkInDate, String departureDate) {
        return null;
    }

    @Override
    public Boolean addHotelComment(HotelCommentInfo comment) {
        return null;
    }

    @Override
    public Boolean addHotelCommentPicture(HotelCommentInfo comment) {
        return null;
    }

    @Override
    public Boolean saveHotelOrderInfo(HotelOrderInfo hotelOrder) {
        return null;
    }

    @Override
    public HotelOrderInfo queryHotelOrderById(String orderId) {
        return null;
    }

    @Override
    public HotelPictureInfo queryHotelPictureById(int hotelId) {
        return null;
    }

    @Override
    public Boolean updateHotelOrder(String OrderId) {
        return null;
    }

    @Override
    public List<HotelInfo> queryCollectedHotelInfoByUserId(int userId) {
        return null;
    }

    @Override
    public List<HotelOrderInfo> queryHotelOrderInfo(int userId) {
        return null;
    }
}
