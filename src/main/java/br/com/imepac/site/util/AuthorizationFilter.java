package br.com.imepac.site.util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

@Component
public class AuthorizationFilter extends HttpFilter {

	@Override
	protected void doFilter(HttpServletRequest request, HttpServletResponse response,
            FilterChain chain)
			throws IOException, ServletException {

		String uri = request.getRequestURI();

		if (uri.contains("private")) {
			/* ACESSO PRIVADO */
			if (request.getSession().getAttribute("SessionKey") == null) {
				response.sendRedirect("/Login.jsp");
			}
			
		}
		super.doFilter(request, response, chain);
	}

}
