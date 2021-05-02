package web.servlet;/**
 * 一些声明信息
 * Description: <br/>
 * date: 2021/4/18 16:32<br/>
 *
 * @author hp<br />
 * @version
 * @since JDK 1.8
 */

import dao.impl.HotelInfoDaoImpl;
import dao.impl.LocationDaoImpl;
import domain.*;
import service.HotelInfoService;
import service.impl.HotelInfoServiceImpl;
import service.impl.LocationInfoServiceImpl;
import service.impl.ScenicInfoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * ClassName: LocationServlet <br/>
 * Description: <br/>
 * date: 2021/4/18 16:32<br/>
 * @author hp<br />
 */

@WebServlet("/LocationServlet")
public class LocationServlet extends HttpServlet {
    private List<HotelInfo> hotelList = new ArrayList<HotelInfo>();      //查询酒店列表
    private List<ScenicInfo> scenicList = new ArrayList<ScenicInfo>();    //景点列表
    private List<LocateInfo> locateList = new ArrayList<LocateInfo>();    //地点列表
    private Map<Integer,List<RoomInfo>> MapRoomList = new HashMap<Integer, List<RoomInfo>>();  //酒店房间

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置request编码格式
        //System.out.println(methods);
        request.setCharacterEncoding("utf-8");
        String methods = request.getParameter("methods");

        if(methods.equals("queryLocation")) {
            /*ViewHotelMainInterface传过来的数据*/
            String userId = request.getParameter("userId");
            String mudidi = request.getParameter("mudidi");
            String ruzhu = request.getParameter("ruzhu");
            String likai = request.getParameter("likai");
            //System.out.println("userId:"+userId);
            locateList = queryLocation(mudidi);//查询地点
            HotelServlet hotelServlet = new HotelServlet();
            hotelList = hotelServlet.queryHotel(mudidi);
            /*待更新因为景点信息并没有获取*/
            if (ruzhu.equals("") || likai.equals("")) {
                //都为空 把所有房间都找出来
                HttpSession session = request.getSession();
                //获取其他信息
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");
                HotelInfoServiceImpl hotelInfoImpl = new HotelInfoServiceImpl();
                //System.out.println("1");
                MapRoomList = hotelInfoImpl.queryHotelofRoomByHotelId(hotelList);
                //System.out.println("2");
                session.setAttribute("userId", userId);
                session.setAttribute("hotelList", hotelList);
                session.setAttribute("locateList", locateList);
                session.setAttribute("MapRoomList", MapRoomList);   //每个酒店对应的在规定时间内可以住的房间
                //System.out.println("既有地点又有景点");
                request.getRequestDispatcher("/mu/ViewHotelFitRequireInterface.jsp").forward(request, response);
            }else if ((!ruzhu.equals("")) && (!likai.equals(""))) {  //离开 入住都有
                System.out.println("成功");
                HttpSession session = request.getSession();
                //已知道和用户输入的相同的酒店列表
                //酒店已经存在了hotelList
                //获取其他信息
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");
                Date likaiDate = null;
                Date ruzhuDate = null;
                try {
                    ruzhuDate = (Date) formatter.parse(ruzhu);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                try {
                    likaiDate = (Date) formatter.parse(likai);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                String renshu = request.getParameter("renshu");
                //对所有酒店对应的可用的房间进行接收
                HotelInfoServiceImpl hotelInfoImpl = new HotelInfoServiceImpl();
                //酒店id 对应下面可以入住的房间
                MapRoomList = hotelInfoImpl.queryHotelofRoomByHotelId(hotelList, ruzhuDate, likaiDate);
                System.out.println(hotelList.get(0).toString());
                //System.out.println("MapList:" + MapRoomList.keySet());
                int ye = 1;
                session.setAttribute("userId", userId);
                session.setAttribute("MapRoomList", MapRoomList);   //每个酒店对应的在规定时间内可以住的房间
                session.setAttribute("hotelList", hotelList);       //符合输入的酒店列表
                session.setAttribute("locateList",locateList);
                //第几页
                request.getRequestDispatcher("/mu/ViewHotelFitRequireInterface.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);
        req.setCharacterEncoding("utf-8");
        String methods = req.getParameter("methods");

        //System.out.print("methods:"+methods+" ye:"+ye);
        //更新ViewHotelFitRequireInterface中的数据
        if(methods.equals("updateFitInterface")){
            int ye = Integer.parseInt(req.getParameter("ye"));
            req.setAttribute("ye",ye);
            req.getRequestDispatcher("/mu/ViewHotelFitRequireInterface.jsp").forward(req,resp);
        }
    }

    private String JudgeMethods(String userInput){
        /*地点 酒店 景点 三类*/
        locateList = queryLocation(userInput);
        /*穆正阳使用周天乐部分*/
        //scenicList = queryScenicInfoBySearch(userInput);
    return "";
    }
    /*用户输入查询地点*/
    private List<LocateInfo> queryLocation(String userInput){
        LocationInfoServiceImpl locateImpl = new LocationInfoServiceImpl();
        List<LocateInfo> locate;
        locate = locateImpl.queryLocation(userInput);
        return locate;
    }
}


