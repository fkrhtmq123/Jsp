package sub1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.PortableServer.RequestProcessingPolicy;

public class HelloServlet extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		System.out.println("Hello init!!!");
		//init(초기화) - 실행 시 최초 한번만 실행 됨
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestProc(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestProc(req, resp);
	}
	
	private void requestProc(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>HelloServlet</title>");
		out.println("<meta charset='UTF-8' />");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello Servlet!!!</h1>");
		out.println("<a href='/Ch17/welcome.do'>welcome</a>");
		out.println("<a href='/Ch17/Greeting.do'>greeting</a>");
		out.println("</body>");
		out.println("</html>");
	}

}
