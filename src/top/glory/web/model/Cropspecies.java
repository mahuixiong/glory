package top.glory.web.model;

public class Cropspecies {
    private Integer id;

    private String cropSpecies;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCropSpecies() {
        return cropSpecies;
    }

    public void setCropSpecies(String cropSpecies) {
        this.cropSpecies = cropSpecies == null ? null : cropSpecies.trim();
    }
}