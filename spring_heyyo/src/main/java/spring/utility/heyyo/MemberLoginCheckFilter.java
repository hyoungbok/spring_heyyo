package spring.utility.heyyo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class MemberLoginCheckFilter implements Filter, com.sun.org.apache.xalan.internal.xsltc.dom.Filter {

	@Override
	public boolean test(int arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		
		 throws IOException, ServletException {   
		        
		 
        // Filter가 요청 중간에서 request 객체를 추출합니다.
        HttpServletRequest httpRequest = (HttpServletRequest)request;  
        										//request http로 변환
 
        // 새로운 세션을 생성하지않고 request 객체에서 기존의 세션 반환
        HttpSession session = httpRequest.getSession(false);
        
        // 로그인 하지 않았다고 가정
        boolean login = false;
        
        if (session != null) { // session 객체가 생성되어 있는지 확인
           String sid = (String)session.getAttribute("id");
        	
           String id = request.getParameter("id");
           // 로그인을 했으면서 관리자인지 확인합니다.
            if(sid != null && sid.equals("admin")) {
            	login =true;
            } else if(id != null) {
            	if(sid != null && sid.equals(id)) {
            		login = true;
            	}
            } else if(sid != null ) {
            	login = true;
            }
            
        }
        
        // 정상적으로 로그인이 되었다면 요청 페이지로 이동합니다.
        if (login) {
            chain.doFilter(request, response); //요청 페이지로 이동
        } else {
            // 로그인이 안되었다면 로그인 페이지로 이동
            RequestDispatcher dispatcher = 
                request.getRequestDispatcher("/member/login.do");
            dispatcher.forward(request, response);
        }
    }
 

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
