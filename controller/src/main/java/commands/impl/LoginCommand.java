package commands.impl;

import commands.Command;
import entity.User;
import org.apache.commons.codec.digest.DigestUtils;
import services.Impl.UserServiceImpl;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class LoginCommand implements Command {
    @Override
    public void execute(HttpServletRequest req, HttpServletResponse res) {
        try {
            String login = req.getParameter("LogUserLogin");
            String password = DigestUtils.md5Hex(req.getParameter("LogUserPassword"));
            User user = new User(login, password);
            UserService userService = new UserServiceImpl();
            User foundUser = userService.findUser(user);
            if (foundUser != null) {
                System.out.println("There is a user");

                req.getSession(true).setAttribute("userId", foundUser.getId());
                req.getSession().setAttribute("userLogin", foundUser.getLogin());
                req.getSession().setAttribute("userRole", foundUser.getRole());

                res.sendRedirect("FrontController?COMMAND=GET_ROOMS");
            } else {
                System.out.println("There is no such user");
            }
        } catch (SQLException | IOException throwables) {
            throwables.printStackTrace();
        }
    }
}
