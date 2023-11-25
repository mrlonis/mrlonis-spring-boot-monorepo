package com.mrlonis.honkaistarrail.exceptions;

public class BadRequestException extends Exception {
    public BadRequestException(String errorMessage) {
        super(errorMessage);
    }
}
