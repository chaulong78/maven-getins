package com.msp.givn.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "speaker")
public class Speaker {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "image")
    private String image;

    @Column(name = "job")
    private String job;

    @Column(name = "description")
    private String description;

    @ManyToMany(mappedBy = "speakers", fetch = FetchType.EAGER)
    private List<Event> events;

    @Override
    public String toString() {
        return "Speaker{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", job='" + job + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
