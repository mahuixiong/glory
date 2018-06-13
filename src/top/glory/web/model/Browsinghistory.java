package top.glory.web.model;

import java.util.Date;

public class Browsinghistory {
    private Integer id;

    private Integer userId;

    private Integer sampleid;

    private Integer history;

    private Date createtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getSampleid() {
        return sampleid;
    }

    public void setSampleid(Integer sampleid) {
        this.sampleid = sampleid;
    }

    public Integer getHistory() {
        return history;
    }

    public void setHistory(Integer history) {
        this.history = history;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}