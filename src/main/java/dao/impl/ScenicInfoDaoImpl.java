package dao.impl;/**
 * 一些声明信息
 * Description: <br/>
 * date: 2021/4/20 9:22<br/>
 *
 * @author hp<br />
 * @version
 * @since JDK 1.8
 */

import dao.ScenicInfoDao;
import domain.LocateInfo;
import domain.ScenicInfo;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import service.impl.ScenicInfoServiceImpl;
import utils.JDBCUtils;

import java.util.List;

/**
 * ClassName: ScenicInfoDaoImpl <br/>
 * Description: <br/>
 * date: 2021/4/20 9:22<br/>
 * @author hp<br />
 */
public class ScenicInfoDaoImpl implements ScenicInfoDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public List<ScenicInfo> queryScenicInfoBySearchM(String userInput) {
        List<ScenicInfo> ScenicList;
        //System.out.println("用户输入为"+userInput);
       /* try {*/
            //1.定义sql语句
            String sql = "select * from scenic where scenicName like ?";
            //2.执行
            ScenicList = template.query(sql, new BeanPropertyRowMapper<ScenicInfo>(ScenicInfo.class), "%"+userInput+"%");
        /*} catch (Exception e){
            System.out.println("捕获错误");
        }
        if (ScenicList.size() != 0){
            System.out.println(ScenicList.get(0).getScenicAddress());
            return ScenicList;
        }else{
            System.out.println("queryLocation读取失败");
            //System.out.println(locate.getIntroduce());
        }*/
        //return false;
        return null;
    }
    public static void main(String[] args){
        ScenicInfoDaoImpl ss = new ScenicInfoDaoImpl();
        ss.queryScenicInfoBySearchM("鬼");
    }
}
