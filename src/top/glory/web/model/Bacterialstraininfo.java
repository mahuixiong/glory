package top.glory.web.model;

import java.util.Date;

public class Bacterialstraininfo {
    private Integer id;

    private Integer sampleNum;

    private String originalNum;

    private String wordAddr;

    private String pictureAddr;

    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSampleNum() {
        return sampleNum;
    }

    public void setSampleNum(Integer sampleNum) {
        this.sampleNum = sampleNum;
    }

    public String getOriginalNum() {
        return originalNum;
    }

    public void setOriginalNum(String originalNum) {
        this.originalNum = originalNum == null ? null : originalNum.trim();
    }

    public String getWordAddr() {
        return wordAddr;
    }

    public void setWordAddr(String wordAddr) {
        this.wordAddr = wordAddr == null ? null : wordAddr.trim();
    }

    public String getPictureAddr() {
        return pictureAddr;
    }

    public void setPictureAddr(String pictureAddr) {
        this.pictureAddr = pictureAddr == null ? null : pictureAddr.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}