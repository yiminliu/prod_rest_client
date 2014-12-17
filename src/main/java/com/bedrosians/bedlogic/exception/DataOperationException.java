package com.bedrosians.bedlogic.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.METHOD_FAILURE, reason="Database Operation Failed") 
public class DataOperationException extends RuntimeException
{
	private static final long serialVersionUID = -34724706273251377L;
	private String errorCode;
    private String errorMessage;
    private Throwable error;
    
    public DataOperationException() { 
    	super(); 
    }
    
    public DataOperationException(String id) {
    	errorMessage = "Database Operation Failed";
    }
    
    public DataOperationException(String id, Throwable cause) { 
    	if(cause != null)
    	  errorMessage = "Database Operation Failed " + "\n\r" + "Cause: " + cause.getMessage();
    	else
    		errorMessage = "Database Operation Failed " + "\n\r";
    	error = cause;
    }

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public Throwable getError() {
		return error;
	}

	public void setError(Throwable error) {
		this.error = error;
	}

	
	
    	
    
}