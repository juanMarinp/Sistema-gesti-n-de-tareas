import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.ejb.EJB;
import java.io.IOException;

@WebServlet("/TareaServlet")
public class TareaServlet extends HttpServlet {
    @EJB
    private TareaBean tareaBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("tareas", tareaBean.obtenerTodasLasTareas());
        request.getRequestDispatcher("listarTareas.jsp").forward(request, response);
    }
}
