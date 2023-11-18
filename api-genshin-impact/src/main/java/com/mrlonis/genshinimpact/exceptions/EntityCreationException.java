package com.mrlonis.genshinimpact.exceptions;

public class EntityCreationException extends RuntimeException {
    public EntityCreationException(String message) {
        super(message);
    }

    public EntityCreationException(String message, Throwable cause) {
        super(message, cause);
    }
}
