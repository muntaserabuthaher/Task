package muntaserTask;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

import muntaserTask.DataBase;

@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LogInServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		

		try {
			Connection conn = (Connection) DataBase.getConnection();
			Statement stm = conn.createStatement();
			ResultSet rs = (ResultSet) stm.executeQuery("SELECT * FROM `users` WHERE email='"+email+"' and password= '"+password+"'");
			if(rs.next()) {
				session.setAttribute("authorized","true");
				String position=rs.getString("position");
				session.setAttribute("position",position);
				session.setAttribute("nameUser",rs.getString("name"));
				response.sendRedirect("Home.jsp");
			}else {
				out.println("Wrong email and password ...");
			}
			conn.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
	}
}



