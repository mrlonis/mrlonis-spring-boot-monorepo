package com.mrlonis.types;

import java.util.UUID;


public interface BaseEntity {
    UUID getId();

    String getName();

    String getImageUrl();
}
