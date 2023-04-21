package com.Utils;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.VideoDAO;
import entity.Video;

@WebServlet("/favorite_Video")
public class FavoriteServlet extends HttpServlet {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Movies");
	EntityManager em = emf.createEntityManager();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {

			Query query = em.createNamedQuery("printVideoFavotite");
			List<Video> list = (List<Video>) query.getResultList();
			req.setAttribute("videos", list);
			System.out.println(list);
//			req.setAttribute("videos", list);
			req.getRequestDispatcher("/views/favorite.jsp").forward(req, resp);
		} catch (Exception e) {


			e.printStackTrace();
		}

	}

}
