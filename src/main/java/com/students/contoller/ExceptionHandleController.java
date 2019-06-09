package com.students.contoller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandleController {
	@ExceptionHandler(MaxUploadSizeExceededException.class)
	public ModelAndView handleExceptionHandler(MaxUploadSizeExceededException exception) {
	    ModelAndView modelAndView = new ModelAndView("error");
        modelAndView.getModel().put("message", "File too large!");
        return modelAndView;
	}
}
