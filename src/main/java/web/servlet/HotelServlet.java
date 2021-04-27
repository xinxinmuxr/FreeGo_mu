package web.servlet;/**
 * 一些声明信息
 * Description: <br/>
 * date: 2021/4/20 14:52<br/>
 *
 * @author hp<br />
 * @version
 * @since JDK 1.8
 */

import domain.HotelInfo;
import domain.LocateInfo;
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

        /*从 查询酒店 过来的*/
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

