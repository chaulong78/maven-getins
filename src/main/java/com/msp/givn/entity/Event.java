package com.msp.givn.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "event")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "image")
    private String image;

    @Column(name = "name")
    private String name;

    @Column(name = "url_name")
    private String urlName;

    @Column(name = "event_time")
    private String eventTime;

    @Column(name = "event_place")
    private String eventPlace;

    @Column(name = "description")
    private String description;

    @Column(name = "content")
    private String content;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "map")
    private String map;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "event_speaker",
            joinColumns = @JoinColumn(name = "event_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "speaker_id", referencedColumnName = "id"))
    private List<Speaker> speakers;

    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", eventTime=" + eventTime +
                ", eventPlace='" + eventPlace + '\'' +
                ", description='" + description + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrlName() {
        return urlName;
    }

    public void setUrlName(String urlName) {
        this.urlName = urlName;
    }

    public String getEventTime() {
        return eventTime;
    }

    public void setEventTime(String eventTime) {
        this.eventTime = eventTime;
    }

    public String getEventPlace() {
        return eventPlace;
    }

    public void setEventPlace(String eventPlace) {
        this.eventPlace = eventPlace;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getMap() {
        return map;
    }

    public void setMap(String map) {
        this.map = map;
    }

    public List<Speaker> getSpeakers() {
        return speakers;
    }

    public void setSpeakers(List<Speaker> speakers) {
        this.speakers = speakers;
    }
}
