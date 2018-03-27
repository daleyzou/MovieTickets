package com.movie.message.response;

/**
 * @author Svily_0
 * @create 2017-12-29 15:23
 **/

public enum ResponseStatus {
    // 成功
    SUCCESS(0, "SUCCESS"),
    ERROR(9, "ERROR"),
    NOT_LOGIN(10, "NOT_LOGIN"),
    INVALID_AUTH_CODE(11, "INVALID_AUTH_CODE"),
    FAIL(12, "FAIL"),
    // 账号早已经存在
    ALREADY_EXISTING(13, "ALREADY_EXISTING");

    private final int value;
    private final String reasonPhrase;

    private ResponseStatus(int value, String reasonPhrase) {
        this.value = value;
        this.reasonPhrase = reasonPhrase;
    }

    public int value() {
        return value;
    }

    public String getReasonPhrase() {
        return this.reasonPhrase;
    }
}
