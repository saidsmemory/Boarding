package exception;

import javax.servlet.http.HttpServletRequest;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import org.springframework.dao.DuplicateKeyException;

import spring.exception.LoginCheckException;

@ControllerAdvice("controller")
public class MainException {
	
	//Logger logger = LoggerFactory.getLogger(MainException.class);
	
	@ExceptionHandler(LoginCheckException.class)
	public String loginCheckException(LoginCheckException ex, HttpServletRequest request) {
		//logger.error(ex.getMessage(), ex);
		request.setAttribute("uri", request.getContextPath()+"/select");
		request.setAttribute("msg", ex.getMessage());
		return "common/alert";
	}
	//DuplicateKeyException
	@ExceptionHandler(DuplicateKeyException.class)
	public String DuplicateKeyException(DuplicateKeyException ex, HttpServletRequest request) {
		//logger.error(ex.getMessage(), ex);
		request.setAttribute("uri", request.getContextPath()+"/insert");
		request.setAttribute("msg", "다시입력해주세요");
		return "common/alert";
	}
	
}
	
