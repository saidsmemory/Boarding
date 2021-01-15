package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import spring.dto.Member;

public class InterceptorTest extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("intercep");
		HttpSession se = request.getSession();//Session값을 가져온다.
		Member member = (Member) se.getAttribute("member");
		String requestURI = request.getRequestURI();
		if(requestURI.indexOf("/down") > -1){//down uri라면 true해서 값을 띄운다(한마디로 down은 인터셉터에서 제외)
			return true;
		}
		if(member == null) {
			response.sendRedirect(request.getContextPath() +"/down");//session의 값이 없으면 이장소로 이동시킨다.
			return false;
		}
		
		return true; //session의 값이 있다면 기존에 값을 출력한다.
	}

}
