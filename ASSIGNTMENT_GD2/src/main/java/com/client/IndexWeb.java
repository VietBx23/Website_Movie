package com.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.VideoDAO;
import entity.Video;
@WebServlet("/indexPage")
public class IndexWeb extends HttpServlet {

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			findAll(req, resp);
			req.getRequestDispatcher("/page/index.jsp").forward(req, resp);
		}
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		}
		public void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				VideoDAO dao = new VideoDAO();
				List<Video> list = dao.findAll();
				req.setAttribute("video", list);
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("error", "Error" + e.getMessage());
			}
		}
}
