package domain;

/**
 * @Author: 李旺旺
 * @Date: 2021/3/30 21:07
 * @Description: 位置信息实体类
 */
public class LocateInfo {
    private int locateId;                   //位置id
    private String locateName;              //位置名称
    private String LongitudeAndLatitude;    //经纬度
    private String introduce;               //介绍

    public LocateInfo() {

    }
    /**
     * 穆正阳使用
     * @param locateName
     * @param longitudeAndLatitude
     */
    public LocateInfo(int locateId,String locateName, String longitudeAndLatitude,String introduce) {
        this.locateName = locateName;
        this.LongitudeAndLatitude = longitudeAndLatitude;
        this.introduce = introduce;
    }

    public int getLocateId() {
        return locateId;
    }

    public void setLocateId(int locateId) {
        this.locateId = locateId;
    }

    public String getLocateName() {
        return locateName;
    }

    public void setLocateName(String locateName) {
        this.locateName = locateName;
    }

    public String getLongitudeAndLatitude() {
        return LongitudeAndLatitude;
    }

    public void setLongitudeAndLatitude(String longitudeAndLatitude) {
        LongitudeAndLatitude = longitudeAndLatitude;
    }

    public String getIntroduce() {
        return this.introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Override
    public String toString() {
        return "LocateInfo{" +
                "locateId=" + locateId +
                ", locateName='" + locateName + '\'' +
                ", LongitudeAndLatitude='" + LongitudeAndLatitude + '\'' +
                '}';
    }
}
