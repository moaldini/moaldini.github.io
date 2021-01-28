package project.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Optional;

@WebServlet({"/loginController"})
public class loginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/loginController").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("inputUsername");
        String password = req.getParameter("inputPassword");
        boolean rememberMe = req.getParameter("rememberMe") == "on";

        User usr = new User(userName,password);
        userList valid = new userList();
        if(valid.validate(usr)){
            req.getSession().setAttribute("username",userName);

            Cookie cookie = new Cookie("rememberMe", "1");
            if(rememberMe){
                cookie.setMaxAge(2592000); //in seconds= 30 days
            } else {
                cookie.setMaxAge(-1); //remove the cookie
            }
            resp.addCookie(cookie);
            if(readCookie(req, "promo").isEmpty()) {
                Cookie promo = new Cookie("promo", "$100");
                promo.setMaxAge(259200);
                resp.addCookie(promo);
            }
            req.getRequestDispatcher("Profile.jsp").forward(req, resp);
        } else {
            doGet(req , resp);
        }
    }
    public Optional<String> readCookie(HttpServletRequest req,String key) {
        return Arrays.stream(req.getCookies())
                .filter(c -> key.equals(c.getName()))
                .map(Cookie::getValue)
                .findAny();
    }
}
