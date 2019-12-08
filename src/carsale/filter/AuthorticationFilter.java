
package carsale.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carsale.model.User;
import carsale.untils.SessionUtil;

public class AuthorticationFilter implements Filter {

  private ServletContext context;

  /**
   * {@inheritDoc}
   * 
   * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
   */
  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    this.setContext(filterConfig.getServletContext());
  }

  /**
   * {@inheritDoc}
   * 
   * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest,
   *      javax.servlet.ServletResponse, javax.servlet.FilterChain)
   */
  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
      throws IOException, ServletException {
    HttpServletRequest req = (HttpServletRequest) request;
    HttpServletResponse resp = (HttpServletResponse) response;
    String url = req.getRequestURI();
    System.out.println("Filter urf: " + url);
    if (url.startsWith(req.getContextPath() + "/admin")) {
      User user = (User) SessionUtil.getInstance().getValue(req, "USER");
      if (user != null) {
        if (user.getRole().getRoleCode().equals("ADMIN")) {
          System.out.println("Filler role admin");
          chain.doFilter(request, response);
        }
      } else {
        resp.sendRedirect(req.getContextPath() + "/login?action=signin&user=null");
      }
    } else {
      chain.doFilter(request, response);
    }

  }

  /**
   * @return the context
   */
  public ServletContext getContext() {
    return context;
  }

  /**
   * @param context
   *          the context to set
   */
  public void setContext(ServletContext context) {
    this.context = context;
  }

  @Override
  public void destroy() {
  }
}
