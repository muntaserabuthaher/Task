package muntaserTask;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 * Servlet implementation class ChangeTaskServlet
 */
@WebServlet("/ChangeTaskServlet")
public class ChangeTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeTaskServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("muntaser you can change");
        String statusX=( request.getParameter("status")).split(",")[0];
        String idX=( request.getParameter("status")).split(",")[1];
  
            try{
            	
            	DataBase.updateTaskByID(Integer.parseInt(idX),statusX);

            }catch(Exception e){ System.out.println(e);}
         
        
            RequestDispatcher requestDispatcher =request.getRequestDispatcher("Home.jsp");


            requestDispatcher.forward(request,response);

        }

		

    }

  




