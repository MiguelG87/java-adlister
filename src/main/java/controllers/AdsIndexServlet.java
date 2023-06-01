package controllers;

import dao.Ads;
import dao.DaoFactory;
import models.Ad;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    private final Ads adsDao;

    public AdsIndexServlet() {
        adsDao = DaoFactory.getAdsDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", adsDao.all());
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        Ad ad = new Ad(user.getId(), title, description);
        adsDao.insert(ad);

        response.sendRedirect("/ads/" + ad.getId());
    }
}
