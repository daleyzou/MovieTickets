package com.movie.message.response;

/**
 * @author Svily_0
 * @create 2017-12-29 15:24
 **/

public class DefaultJsonResponse extends JsonResponse{

    public DefaultJsonResponse() {
        this(ResponseStatus.SUCCESS);
    }

    public DefaultJsonResponse(ResponseStatus status) {
        super(status);
    }

    public DefaultJsonResponse(ResponseStatus status, String message) {
        super(status, message);
    }

    public DefaultJsonResponse(Integer code, String message) {
        super(code, message);
    }

    public DefaultJsonResponse(Integer code, String message, Object data) {
        super(code, message, data);
    }
}
