package commands.impl;

import commands.Command;
import entity.Room;
import services.Impl.RoomServiceImpl;
import services.RoomService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetRoomsCommand implements Command {
    @Override
    public void execute(HttpServletRequest req, HttpServletResponse res) {
        System.out.println("Came in right place");
        RoomService roomService = new RoomServiceImpl();
        List<Room> rooms = roomService.getRooms();
        try {
//            req.setAttribute("rooms", rooms);
            req.getSession().setAttribute("rooms", rooms);
//            GET_RESERVATIONS
            res.sendRedirect("FrontController?COMMAND=GET_RESERVATIONS");
        } catch (IOException e) {
            e.printStackTrace();
        }
//        req.setAttribute("rooms", rooms);
//        req.getRequestDispatcher("userPage.jsp");
    }
}
