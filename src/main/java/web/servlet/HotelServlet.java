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
import java.util.ArrayList;
import java.util.List;

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
        }
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        methods = req.getParameter("methods");
        if(methods.equals("Class")){ //酒店分地区
            String county = req.getParameter("county");
            String ye = req.getParameter("ye");
            req.setAttribute("county",county);
            req.setAttribute("ye",ye);
            req.getRequestDispatcher("/mu/ViewHotelFitRequireInterface.jsp").forward(req,resp);
        }else if(methods.equals("toHotel")){
            String userId = req.getParameter("userId");
            HttpSession session = req.getSession();
            session.setAttribute("userId",userId);
            req.getRequestDispatcher("/mu/ViewHotelMainInterface.jsp").forward(req,resp);
        }else if(methods.equals("toViewHotel")){
            HotelInfoDaoImpl hotelImpl = new HotelInfoDaoImpl();
            String hotelIdStr = req.getParameter("hotelId");
            String userIdStr = req.getParameter("userId");
            String overPicture = req.getParameter("overPicture");
            int hotelId = Integer.parseInt(hotelIdStr);
            int userId = Integer.parseInt(userIdStr);
            HotelInfo hotel = hotelImpl.queryOneHotel(hotelId);
            HotelInfoDaoImpl impl = new HotelInfoDaoImpl();
            //获得  酒店 信息
            HotelInfo hotelInfo = impl.queryOneHotel(hotelId);
            //获得  酒店 图片
            List<String> hotelPicture = impl.queryHotelInPicture(hotelId);

            HttpSession hs = req.getSession();
            List<RoomInfo> roomList = new ArrayList<RoomInfo>();
            //System.out.println("hotelId:"+hotelId);
            //System.out.println("overPicture:"+overPictureInt);
            //roomList = impl.queryRoomAll(hotelId);
            hs.setAttribute("hotelPicture",hotelPicture);
            hs.setAttribute("userId",hotel);
            hs.setAttribute("userId",userId);
            hs.setAttribute("hotelInfo",hotelInfo);
            //hs.setAttribute("roomList",roomList);
            req.getRequestDispatcher("/mu/ViewHotelInfoInterface.jsp").forward(req,resp);
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

