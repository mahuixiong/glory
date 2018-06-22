package top.glory.web.model;

public class Par {
    private Integer id;

    private Integer breedId;

    private String breedName;

    private Integer toxinId;

    private String toxinName;

    private Float par;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBreedId() {
        return breedId;
    }

    public void setBreedId(Integer breedId) {
        this.breedId = breedId;
    }

    public String getBreedName() {
        return breedName;
    }

    public void setBreedName(String breedName) {
        this.breedName = breedName == null ? null : breedName.trim();
    }

    public Integer getToxinId() {
        return toxinId;
    }

    public void setToxinId(Integer toxinId) {
        this.toxinId = toxinId;
    }

    public String getToxinName() {
        return toxinName;
    }

    public void setToxinName(String toxinName) {
        this.toxinName = toxinName == null ? null : toxinName.trim();
    }

    public Float getPar() {
        return par;
    }

    public void setPar(Float par) {
        this.par = par;
    }

	@Override
	public String toString() {
		return "Par [id=" + id + ", breedId=" + breedId + ", breedName="
				+ breedName + ", toxinId=" + toxinId + ", toxinName="
				+ toxinName + ", par=" + par + "]";
	}
    
}