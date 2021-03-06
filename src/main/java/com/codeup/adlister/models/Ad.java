package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String location;
    private String description;
    private String createdBy;

    public Ad(long id, long userId, String title,String location, String description, String createdBy) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.location = location;
        this.description = description;
        this.createdBy = createdBy;
    }

    public Ad(long userId, String title, String location, String description) {
        this.userId = userId;
        this.title = title;
        this.location = location;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
}
