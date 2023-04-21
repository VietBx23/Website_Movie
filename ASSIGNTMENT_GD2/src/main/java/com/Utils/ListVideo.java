package com.Utils;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Report;

@WebServlet("/list-video1")
public class ListVideo extends HttpServlet{

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Movie");
	EntityManager em = emf.createEntityManager();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jpql = "select new Report(o.video.title, count(o.id), max(o.likeDate), min(o.likeDate)) from Favorite o group by o.video.title";
		List<Report> report = (List<Report>) em.createQuery(jpql, Report.class).getResultList();
		req.setAttribute("reports", report);
		req.getRequestDispatcher("/views/list-video.jsp").forward(req, resp);
	}
}