package dao;

import domain.*;

import java.util.List;

public interface TravelNoteInfoDao {
    /**
    * @Author:  李旺旺
    * @Date:    2021/3/31 20:31
    * @param:   [userId]
    * @Description: 系统根据用户编号userId查询用户偏好表（UserPreferList）和用户关注表（UserConcernList）,获取到用户偏好信息和用户关注信息,
    *               通过用户偏好信息和用户关注信息查询标签关联表（TagLinkList）、游记信息表（TravelNoteList）、游记图片关系表(TravelNotePictureList),
    *               查询成功返回游记信息实例集合List<TravelNoteInfo>,若查询失败，返回 null。
    */
    List<TravelNoteInfo> reconnemdTravelInfoNote(int userId);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 20:09
    * @param:   [travelNoteId]
    * @Description: 根据游记id从游记图片信息表（TravelNotePictureRelation）中查询游记和图片关系，生成每个游记的TravelNotePictureInfo的实例集合。
    */
    List<TravelNotePictureInfo> queryTravelNotePicture(int travelNoteId);

    /**
     * @Author:  李旺旺
     * @Date:    2021/3/31 20:32
     * @param:   [userId, travelNoteId]
     * @Description: 系统根据用户编号userId和游记编号travelNoteId查询游记点赞表(TravelNoteLikeList)，若查询到结果返回该游记的点赞量,若查询不到，返回-1。
     */
    int queryTravelNoteLike(int userId,int travelNoteId);

    /**
     * @Author:  李旺旺
     * @Date:    2021/3/31 20:33
     * @param:   [userId, travelNoteId]
     * @Description: 系统根据用户编号userId和游记编号travelNoteId查询游记收藏表(TravelNoteCollectionList)，若查询到结果返回该游记的收藏量,若查询不到，返回-1。
     */
    int queryTravelNoteCollection(int userId,int travelNoteId);

    /**
     * @Author:  李旺旺
     * @Date:    2021/3/31 20:34
     * @param:   [search]
     * @Description: 系统根据搜索内容search查询游记信息表（TravelNoteList）、游记图片关系表（TravelNotePictureList），
     *               查询成功返回游记信息实例集合List<TravelNoteInfo>,若查询失败，返回 null。
     */
    List<TravelNoteInfo> queryTravelNoteInfoBySearch(String search);

    /**
     * @Author:  李旺旺
     * @Date:    2021/3/31 20:39
     * @param:   [travelNoteId]
     * @Description: 系统根据游记编号travelNoteId查询游记信息表（TravelNoteList）、游记图片关系表（TravelNotePictureList），
     *               查询成功返回游记信息实例TravelNoteInfo,若查询失败，返回 null。
     */
    TravelNoteInfo queryTravelNoteInfoById(int travelNoteId);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 16:46
    * @param:   [travelNoteId]
    * @Description: 系统根据游记编号travelNoteId游记评论表（TravelCommentList）、游记评论图片关系表（TravelCommentPictureList），
    *               若查询到结果返回该游记的评论信息实例集合List<TravelNoteCommentInfo>,若查询不到，返回null。
    */
    List<TravelNoteCommentInfo> queryTravelNoteComment(int travelNoteId);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 20:59
    * @param:   [travelNoteId]
    * @Description: 根据游记id从游记评论图片信息表（TravelNoteCommentPictureRelation）中查询游记评论和图片关系，生成每个游记的TravelNoteCommentPictureInfo的实例集合。
    */
    List<TravelNoteCommentPictureInfo> queryTravelNoteCommentPicture(int travelNoteId);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 16:47
    * @param:   [userId, travelNoteId]
    * @Description: 系统根据用户编号userId和游记编号travelNoteId更新游记点赞表(TravelNoteLikeList)，若更新成功返回true,若更新失败，返回 false。
    */
    Boolean updateTravelNoteLike(int userId,int travelNoteId);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 16:47
    * @param:   [userId, travelNoteId]
    * @Description: 系统根据用户编号userId和游记编号travelNoteId更新游记收藏表(TravelNoteCollectionList)，若更新成功返回true,若更新失败，返回 false。
    */
    Boolean updateTravelNoteCollect(int userId,int travelNoteId);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 21:02
    * @param:   [comment]
    * @Description: 系统将游记评论对象保存在游记评论表（TravelNoteCommentList）中，若保存成功返回true,若保存失败，返回 false。
    */
    Boolean addTravelNoteComment(TravelNoteCommentInfo comment);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 21:02
    * @param:   [commentPicture]
    * @Description: 系统将游记评论图片保存在游记评论图片关系表（TravelCommentPictureList）中，若保存成功返回true,若保存失败，返回 false。
    */
    Boolean addTravelNoteCommentPicture(TravelNoteCommentPictureInfo commentPicture);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 16:54
    * @param:   [report]
    * @Description: 系统将游记举报对象保存在游记举报表（ReportTravelNoteList）中，若保存成功返回true,若保存失败，返回 false。
    */
    Boolean addReport(ReportTravelNoteInfo report);

    /**
     * @Author:  李旺旺
     * @Date:    2021/3/31 20:42
     * @param:   [travelNote]
     * @Description: 系统将游记对象保存在游记信息表（TravelNoteList）、游记图片关系表（TravelNotePictureList）中，若保存成功返回true,若保存失败，返回 false。
     */
    Boolean addTravelNote(TravelNoteInfo travelNote);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 21:03
    * @param:   [travelNotePicture]
    * @Description: 系统将游记图片保存在游记图片关系表（TravelNotePictureRelation）中，若保存成功返回true,若保存失败，返回 false。
    */
    Boolean addTravelNotePicture(TravelNotePictureInfo travelNotePicture);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 16:55
    * @param:   [travelNoteId, tagId]
    * @Description: 系统根据游记编号travelNoteId和标签编号tagId将游记的标签保存在标签关联表（TagLinkList）中，若保存成功返回true,若保存失败，返回 false。
    */
    Boolean addTravelNoteTag(int travelNoteId,int tagId);

    /**
     * @Author:  李旺旺
     * @Date:    2021/3/31 20:43
     * @param:   [userId]
     * @Description: 系统根据用户id查询游记收藏表（TravelNoteCollectionList）,返回游记id列表，根据游记id查询游记信息表（TravelNoteList），
     *               返回TravelNoteInfo实例集合，若查询失败，返回null。
     */
    List<TravelNoteInfo> queryCollectedTravelNoteInfoByUserId(int userId);

    /**
     * @Author:  李旺旺
     * @Date:    2021/3/31 20:44
     * @param:   [userId]
     * @Description: 系统根据用户编号userId查询游记信息表（TravelNoteList）、游记图片关系表（TravelNotePictureList）中该用户所有游记，
     *               查询成功返回游记信息实例集合List<TravelNoteInfo>,若查询失败，返回 null。
     */
    List<TravelNoteInfo> queryAllTravelNoteInfo(int userId);

    /**
    * @Author:  李旺旺
    * @Date:    2021/4/3 16:58
    * @param:   [travelNoteId]
    * @Description: 系统根据游记编号travelNoteId查询游记信息表（TravelNoteList），修改该游记状态为封禁状态，修改成功返回true，修改失败返回false。
    */
    Boolean banShare(int travelNoteId);
}
