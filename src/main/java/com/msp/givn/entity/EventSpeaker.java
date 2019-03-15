package com.msp.givn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "event_speaker")
public class EventSpeaker {

    @Id
    @Column(name = "speaker_id")
    private int speakerId;

    @Column(name = "event_id")
    private int eventId;

    @Override
    public String toString() {
        return "EventSpeaker{" +
                "speakerId=" + speakerId +
                ", eventId=" + eventId +
                '}';
    }

    public int getSpeakerId() {
        return speakerId;
    }

    public void setSpeakerId(int speakerId) {
        this.speakerId = speakerId;
    }

    public int getEventId() {
        return eventId;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }
}
