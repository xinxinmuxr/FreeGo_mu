package web.servlet;/**
 * 一些声明信息
 * Description: <br/>
 * date: 2021/4/20 14:52<br/>
 *
 * @author hp<br />
 * @version
 * @since JDK 1.8
 */

import dao.impl.HotelInfoDaoImpl;
import dao.impl.QueryLike;
import domain.HotelInfo;
import domain.LocateInfo;
import domain.RoomInfo;
import domain.ScenicInfo;
import service.impl.HotelInfoServiceImpl;
import service.impl.ScenicInfoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import static dao.impl.QueryLike.queryLike;

/**
 * ClassName: HotelServlet <br/>
 * Description: <br/>
 * date: 2021/4/20 14:52<br/>
 * @author hp<br />
 */
@WebServlet("/HotelServlet")
public class HotelServlet extends HttpServlet {
    private String methods;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        methods = request.getParameter("methods");

        /*从查询酒店 过来的*/
        if(methods.equals("queryLocation")){
            HttpSession hs = request.getSession();
            List<LocateInfo> locateList= (List<LocateInfo>) hs.getAttribute("locateList");
            //System.out.println("hotelServlet："+locateList.get(0).toString());
        }else if(methods.equals("updateRoomInfo")){
            HotelInfoDaoImpl hotelImpl = new HotelInfoDaoImpl();
            String hotelIdStr = request.getParameter("hotelId");
            String userIdStr = request.getParameter("userId");
            //String overPicture = req.getParameter("overPicture");
            int hotelId = Integer.parseInt(hotelIdStr);
            int userId = Integer.parseInt(userIdStr);
            String ruzhu = request.getParameter("ruzhu");
            String likai = request.getParameter("likai");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//注意月份是MM
            java.util.Date ruzhuDate = new java.util.Date();
            try {
                ruzhuDate = simpleDateFormat.parse(ruzhu);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.util.Date likaiDate = new java.util.Date();
            try {
                likaiDate = simpleDateFormat.parse(ruzhu);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            HotelInfo hotel = hotelImpl.queryOneHotel(hotelId);
            HotelInfoDaoImpl impl = new HotelInfoDaoImpl();
            //获得  酒店 信息
            HotelInfo hotelInfo = impl.queryOneHotel(hotelId);
            //获得  酒店 图片
            List<String> hotelPicture = impl.queryHotelInPicture(hotelId);
            List<RoomInfo> roomList = new ArrayList<RoomInfo>();
            HttpSession hs = request.getSession();
            System.out.println("ruzhuDate"+ruzhuDate.toString());

            if(ruzhu.equals("") && likai.equals("")){  //用户没输入日期
                roomList = impl.queryAllRoomByHotelId(hotelId);
            }else{//用户输入日期
                roomList = impl.queryOneHotelofRoomByHotelId(hotelId,ruzhuDate,likaiDate);
            }
            List<Integer> roomNumList = impl.queryRoomNumByHotelId(hotelId,ruzhuDate,likaiDate);
            //System.out.println("hotelId:"+hotelId);
            //System.out.println("overPicture:"+overPictureInt);

            hs.setAttribute("hotelPicture",hotelPicture);
            hs.setAttribute("userId",userId);
            hs.setAttribute("ruzhu",ruzhu);
            hs.setAttribute("likai",likai);
            hs.setAttribute("hotelInfo",hotelInfo);
            hs.setAttribute("roomList",roomList);
            hs.setAttribute("roomNumList",roomNumList);
            //hs.setAttribute("");
            request.getRequestDispatcher("/mu/ViewHotelInfoInterface.jsp").forward(request,response);
        }
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        methods = req.getParameter("methods");
        if(methods.equals("Class")){ //酒店分地区
            String county = req.getParameter("county");
            String ye = req.getParameter("ye");
            String userId = req.getParameter("userId");
            req.setAttribute("userId",userId);
            req.setAttribute("county",county);
            req.setAttribute("ye",ye);
            req.getRequestDispatcher("/mu/ViewHotelFitRequireInterface.jsp").forward(req,resp);
        }else if(methods.equals("toHotel")){
            String userId = req.getParameter("userId");
            Map<String,List<HotelInfo>> returnMap = queryLike(Integer.parseInt(userId));
            HttpSession session = req.getSession();
            session.setAttribute("userId",userId);
            session.setAttribute("returnMap",returnMap);
            req.getRequestDispatcher("/mu/ViewHotelMainInterface.jsp").forward(req,resp);
        }else if(methods.equals("toViewHotel")){
            HotelInfoDaoImpl hotelImpl = new HotelInfoDaoImpl();
            String hotelIdStr = req.getParameter("hotelId");
            String userIdStr = req.getParameter("userId");

            int hotelId = Integer.parseInt(hotelIdStr);
            int userId = Integer.parseInt(userIdStr);
            String ruzhu = req.getParameter("ruzhu");
            String likai = req.getParameter("likai");
            System.out.println("updateRuzhu:");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//注意月份是MM
            java.util.Date ruzhuDate = new java.util.Date();
            try {
                ruzhuDate = simpleDateFormat.parse(ruzhu);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            java.util.Date likaiDate = new java.util.Date();
            try {
                likaiDate = simpleDateFormat.parse(ruzhu);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            HotelInfo hotel = hotelImpl.queryOneHotel(hotelId);
            HotelInfoDaoImpl impl = new HotelInfoDaoImpl();
            //获得  酒店 信息
            HotelInfo hotelInfo = impl.queryOneHotel(hotelId);
            //获得  酒店 图片
            List<String> hotelPicture = impl.queryHotelInPicture(hotelId);
            List<RoomInfo> roomList = new ArrayList<RoomInfo>();
            HttpSession hs = req.getSession();

            if(ruzhu.equals("") && likai.equals("")){  //用户没输入日期
                roomList = impl.queryAllRoomByHotelId(hotelId);
            }else{//用户输入日期
                roomList = impl.queryOneHotelofRoomByHotelId(hotelId,ruzhuDate,likaiDate);
            }
            List<Integer> roomNumList = impl.queryRoomNumByHotelId(hotelId,ruzhuDate,likaiDate);

            hs.setAttribute("hotelPicture",hotelPicture);
            hs.setAttribute("userId",userId);
            hs.setAttribute("ruzhu",ruzhu);
            hs.setAttribute("likai",likai);
            hs.setAttribute("hotelInfo",hotelInfo);
            hs.setAttribute("roomList",roomList);
            hs.setAttribute("roomNumList",roomNumList);
            req.getRequestDispatcher("/mu/ViewHotelInfoInterface.jsp").forward(req,resp);
        } else if (methods.equals("toReserveRoom")) {
            String hotelId = req.getParameter("hotelId");
            String userId = req.getParameter("userId");
            String roomId = req.getParameter("roomId");
            String roomName = req.getParameter("roomName");
            String roomPrice = req.getParameter("roomPrice");
            String ruzhu = req.getParameter("ruzhu");
            String likai = req.getParameter("likai");

            /*向ReserveHotelInterface传数据*/

        }
    }
    /*用户输入查询景点*/
    List<ScenicInfo> queryScenicInfoBySearchM(String userInput){
        ScenicInfoServiceImpl Impl = new ScenicInfoServiceImpl();
        List<ScenicInfo> scenic;
        scenic = Impl.queryScenicInfoBySearchM(userInput);
        return scenic;
    }
    /*查询酒店*/
    List<HotelInfo> queryHotel(String userInput){
        HotelInfoServiceImpl Impl = new HotelInfoServiceImpl();
        List<HotelInfo> hotel;
        hotel = Impl.recommendHotel(userInput);
        return hotel;
    }
}

