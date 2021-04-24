package domain;/**
 * 一些声明信息
 * Description: <br/>
 * date: 2021/4/23 11:58<br/>
 *
 * @author hp<br />
 * @version
 * @since JDK 1.8
 */

import java.util.List;

/**
 * ClassName: PageBean <br/>
 * Description: <br/>
 * date: 2021/4/23 11:58<br/>
 * @author hp<br />
 */
public class PageBean<T> {
    private int totalCount;  //总总数据
    private int totalPage;  //总页码
    private List<T> List;  //每页的数据
    private int currentPage; //当前页码
    private int rows;       //煤业显示的记录数

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public java.util.List<T> getList() {
        return List;
    }

    public void setList(java.util.List<T> list) {
        List = list;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                ", List=" + List +
                ", currentPage=" + currentPage +
                ", rows=" + rows +
                '}';
    }
}
