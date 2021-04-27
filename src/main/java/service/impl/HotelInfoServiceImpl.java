package service.impl;

import dao.impl.HotelInfoDaoImpl;
import domain.HotelInfo;
import domain.RoomInfo;
import service.HotelInfoService;

import java.sql.Date;
import java.util.List;
import java.util.Map;

/**
 * @Author: 李旺旺
 * @Date: 2021/4/12 12:28
 * @Description:
 */

public class HotelInfoServiceImpl implements HotelInfoService {
    @Override
    public List<HotelInfo> recommendHotel(String userInput) {
        HotelInfoDaoImpl Impl = new HotelInfoDaoImpl();
        return Impl.recommendHotel(userInput);
    }
    public Map<Integer,List<RoomInfo>> queryHotelofRoomByHotelId(List<HotelInfo> hotelList, Date ruzhu, Date likai){
        HotelInfoDaoImpl impl = new HotelInfoDaoImpl();
        return impl.queryHotelofRoomByHotelId(hotelList,ruzhu,likai);
    }
    public Map<Integer,List<RoomInfo>> queryHotelofRoomByHotelId(List<HotelInfo> hotelList){
        HotelInfoDaoImpl impl = new HotelInfoDaoImpl();
        return impl.queryHotelofRoomByHotelId(hotelList);
    }

}
