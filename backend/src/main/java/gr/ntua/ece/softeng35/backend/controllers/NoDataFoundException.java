package gr.ntua.ece.softeng35.backend.controllers;

import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import javax.annotation.*;

@ResponseStatus(value=HttpStatus.PAYMENT_REQUIRED , reason="No data")
class NoDataFoundException extends RuntimeException {
    NoDataFoundException() {
        super("No Data Found");
    }
}