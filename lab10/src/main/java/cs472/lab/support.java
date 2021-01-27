package cs472.lab;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.annotation.WebServlet;

@WebServlet("/support")
public class support extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        PrintWriter out = resp.getWriter();
        out.print("<html><head><title>Support Page</title></head><body>");
        out.print("<form method='POST'><h1>Let me know how i can help you:</h1>");
        out.print("<fieldset>");
        out.print("<p>Name: <input name='name' required /></p>");
        out.print("<p>Email: <input type='mail' name='email' required /></p>");
        out.print("<p>Problem: <input name='problem'></p>");
        out.print("<p>Description:</p><p> <textarea name='desc' cols='30' rows='15'></textarea></p>");

        out.print("<p><input type='submit' value='Help' /></p>");
        out.print("</form></fieldset></form></body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext sc = this.getServletContext();
        Random id = new Random();
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String problem = req.getParameter("problem");
        String desc = req.getParameter("desc");

        PrintWriter out = resp.getWriter();
        out.println("Thank you! "+name+" for contacting us. We should receive reply from us with in 24 hrs in your email address ["+email+"]. Let us know in our support email ["+sc.getInitParameter("support_email")+"] if you don’t receive reply within 24 hrs." +
                "<br> Your Ticket ID:"+id.nextInt(14));

    }
}
