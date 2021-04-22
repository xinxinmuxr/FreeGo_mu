package service;

import domain.ScenicInfo;

import java.util.List;

/**
 * @Author: 李旺旺
 * @Date: 2021/4/12 12:28
 * @Description:
 */
public interface ScenicInfoService {
    //穆正阳使用
    public List<ScenicInfo> queryScenicInfoBySearchM(String userInput);
}
