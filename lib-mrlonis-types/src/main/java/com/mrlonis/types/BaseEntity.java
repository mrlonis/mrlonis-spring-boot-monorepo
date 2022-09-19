package com.mrlonis.types;

//import lombok.Builder;

import java.util.UUID;


public interface BaseEntity {
    UUID getId();

    String getName();

    String getImageUrl();

//    static Builder builder() {
//        return null;
//    }
}
