package com.movie.message.response;

/**
 * @author Svily_0
 * @create 2017-12-29 15:21
 **/

public class JsonResponse {
    private Integer code;
    private String message = null;
    private Object data = null;

    public JsonResponse() {
//        this(ResponseStatus.SUCCESS);
    }

    public JsonResponse(ResponseStatus status) {
        this(status, status.getReasonPhrase());
    }

    public JsonResponse(ResponseStatus status, String message) {
        this(status.value(), message);
    }

    public JsonResponse(Integer code, String message) {
        this(code, message, null);
    }

    public JsonResponse(Integer code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
