package util.enc;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncFilter implements Filter{
	private String encType;
	
	@Override
	public void init(FilterConfig config) throws ServletException {
		//config --> web.xml에 정의된 param읽기
		encType=config.getInitParameter("encType");
	}

	@Override
	public void destroy() {	
		
	}

	@Override
	public void doFilter(ServletRequest request, 
			             ServletResponse response, 
			             FilterChain chain)
			throws IOException, ServletException {
		if(encType!=null) {
			request.setCharacterEncoding(encType);
		}else {
			request.setCharacterEncoding("UTF-8");
		}
		chain.doFilter(request, response);
		// 다른 필터 혹은 요청 페이지와의 연결진행
	}


}
