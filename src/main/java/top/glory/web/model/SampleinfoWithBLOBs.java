package top.glory.web.model;

public class SampleinfoWithBLOBs extends Sampleinfo {
    private String seasonal;

    private String description;

    public String getSeasonal() {
        return seasonal;
    }

    public void setSeasonal(String seasonal) {
        this.seasonal = seasonal == null ? null : seasonal.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}