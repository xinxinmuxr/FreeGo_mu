package dao;

import domain.ScenicInfo;

import java.util.List;

/**
 * 一些声明信息
 * Description: <br/>
 * date: 2021/4/20 8:58<br/>
 *
 * @author hp<br />
 * @since JDK 1.8
 */
public interface ScenicInfoDao {
    public List<ScenicInfo> queryScenicInfoBySearchM(String userInput);
}
