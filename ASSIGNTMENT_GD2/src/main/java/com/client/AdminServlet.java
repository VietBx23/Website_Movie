package com.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.VideoDAO;



@WebServlet({"/admin","/edit"})
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private VideoDAO daoVideo = new VideoDAO();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String uri = req.getRequestURI();
		HttpSession session = req.getSession();
		 if(uri.contains("admin")) {
			 req.setAttribute("video", daoVideo.findAll());
			req.getRequestDispatcher("/page/index.jsp").forward(req, resp);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		
	}

}
