package service.impl;

import dao.impl.LocationDaoImpl;
import dao.impl.ScenicInfoDaoImpl;
import domain.LocateInfo;
import domain.ScenicInfo;
import service.ScenicInfoService;

import java.util.List;

/**
 * @Author: 李旺旺
 * @Date: 2021/4/12 12:28
 * @Description:
 */
public class ScenicInfoServiceImpl implements ScenicInfoService {

    public List<ScenicInfo> queryScenicInfoBySearchM(String userInput){
        ScenicInfoDaoImpl Impl = new ScenicInfoDaoImpl();
        List<ScenicInfo> scenic;
        scenic = Impl.queryScenicInfoBySearchM(userInput);
        return scenic;
    }
}
