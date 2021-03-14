package gr.ntua.ece.softeng35.backend.controllers;

import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import javax.annotation.*;

@ResponseStatus(value=HttpStatus.BAD_REQUEST)
class BadRequestException extends RuntimeException {
    BadRequestException() {
        super("Bad Request");
    }
}