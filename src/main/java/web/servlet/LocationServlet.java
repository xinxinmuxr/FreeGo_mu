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
    private int locateId;                   //位置id
    private String locateName;              //位置名称
    private String LongitudeAndLatitude;    //经纬度
    private String introduce;               //介绍
    private List<HotelInfo> hotelList = new ArrayList<HotelInfo>();      //查询酒店列表
    private List<ScenicInfo> scenicList = new ArrayList<ScenicInfo>();    //景点列表
    private List<LocateInfo> locateList = new ArrayList<LocateInfo>();    //地点列表
    private Map<Integer,List<RoomInfo>> MapRoomList = new HashMap<Integer, List<RoomInfo>>();  //酒店房间

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置request编码格式
        //System.out.println(methods);
        request.setCharacterEncoding("utf-8");
        String methods = request.getParameter("methods");

        if(methods.equals("queryLocation")){
            /*ViewHotelMainInterface传过来的数据*/
            String mudidi = request.getParameter("mudidi");

            locateList = queryLocation(mudidi);//查询地点
            //获取session
            HotelServlet hotelServlet = new HotelServlet();
            hotelList = hotelServlet.queryHotel(mudidi);
            scenicList = hotelServlet.queryScenicInfoBySearchM(mudidi);

            /*待更新因为经典信息并没有获取*/
            if(locateList.size() != 0 || scenicList.size() != 0){ //还有景点或者酒店重名
                HttpSession session = request.getSession();
                session.setAttribute("hotelList",hotelList);
                session.setAttribute("scenicList",scenicList);
                session.setAttribute("locateList",locateList);
                request.getRequestDispatcher("/mu/ViewHotelFitRequireInterface.jsp").forward(request,response);
            }
            else{  //只有酒店信息
                HttpSession session = request.getSession();
                //已知道和用户输入的相同的酒店列表
                //酒店已经存在了hotelList
                //获取其他信息
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");
                String ruzhu = request.getParameter("ruzhu");
                Date likaiDate = null;
                Date ruzhuDate = null;
                try {
                    ruzhuDate = (Date) formatter.parse(ruzhu);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                String likai = request.getParameter("likai");

                try {
                    likaiDate = (Date) formatter.parse(likai);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                String renshu = request.getParameter("renshu");
                //对所有酒店对应的可用的房间进行接收
                HotelInfoServiceImpl hotelInfoImpl = new HotelInfoServiceImpl();
                //酒店id 对应下面可以入住的房间
                MapRoomList = hotelInfoImpl.queryHotelofRoomByHotelId(hotelList,ruzhuDate,likaiDate);
                System.out.println(hotelList.get(0).toString());
                int ye = 1;
                session.setAttribute("MapRoomList",MapRoomList);   //每个酒店对应的在规定时间内可以住的房间
                session.setAttribute("hotelList",hotelList);       //符合输入的酒店列表
                //第几页
                request.getRequestDispatcher("/mu/ViewHotelFitRequireInterface.jsp").forward(request,response);
            }
        }
        //request.getRequestDispatcher("/test.jsp").forward(request,response);
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
