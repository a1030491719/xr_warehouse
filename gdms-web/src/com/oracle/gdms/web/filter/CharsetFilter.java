package com.oracle.gdms.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class CharsetFilter
 */
@WebFilter("/admin/*")
public class CharsetFilter implements Filter {

   

	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req=(HttpServletRequest) request;
			
		String uri=req.getRequestURI();
		System.out.println("当前请求的资源目标"+uri);
		req.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);//放行，这儿就调用后台的资源，调用结束后，会回到这一行处
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
