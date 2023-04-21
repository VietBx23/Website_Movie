package com.client;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Utils.SessionU;

import DAO.VideoDAO;
import entity.User;
import entity.Video;

@WebServlet({ "/index", "/detail", "/sendMail" })
public class indexHome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private VideoDAO daoVideo = new VideoDAO();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionU.CURENT_USER);
		String uri = req.getRequestURI();
		if (uri.contains("index")) {
			VideoDAO dao = new VideoDAO();
			req.setAttribute("video", dao.findAll());
			

			req.getRequestDispatcher("/views/index.jsp").forward(req, resp);

		} else if (uri.contains("detail")) {
			List<Video> video = daoVideo.findAll();
			VideoDAO dao = new VideoDAO();

			int idProduct = Integer.parseInt(req.getParameter("idProduct"));
			req.setAttribute("video", video.get(idProduct));
			req.setAttribute("videos", daoVideo.findAll());
			String reqUrl = req.getRequestURL().toString();
			String queryString = req.getQueryString();
//		        System.out.println(req.getContextPath());
//		        System.out.println(req.getRequestURI());
//		        System.out.println(req.getRequestURL());
//		        System.out.println(req.getMethod());
//		        System.out.println(req.getPathInfo());
//		        
//		        System.out.println(reqUrl);
			System.out.println(queryString.charAt(queryString.length() - 1));

//		        System.out.println("Request: "+reqUrl + "?" + queryString);
			req.getRequestDispatcher("/views/detailVideo.jsp").forward(req, resp);

		} else if (uri.contains("sendMail")) {
			List<Video> video = daoVideo.findAll();
			VideoDAO dao = new VideoDAO();

			int idProduct = Integer.parseInt(req.getParameter("idProduct"));
			req.setAttribute("video", video.get(idProduct));
			req.setAttribute("videos", daoVideo.findAll());
			String reqUrl = req.getRequestURL().toString();
			String queryString = req.getQueryString();
//		        System.out.println(req.getContextPath());
//		        System.out.println(req.getRequestURI());
//		        System.out.println(req.getRequestURL());
//		        System.out.println(req.getMethod());
//		        System.out.println(req.getPathInfo());
//		        
//		        System.out.println(reqUrl);
			System.out.println(queryString.charAt(queryString.length() - 1));

//		        System.out.println("Request: "+reqUrl + "?" + queryString);
			req.getRequestDispatcher("/views/sendMail.jsp").forward(req, resp);
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//			String uri = req.getRequestURI();
//			HttpSession session = req.getSession();
//			User currentUser = (User) session.getAttribute(SessionU.CURENT_USER);
//			if(uri.contains("admin")) {
//				if(currentUser!=null && currentUser.getAdmin()==Boolean.TRUE) {
//					req.setAttribute("videos", daoVideo.findAll());
//	    			req.getRequestDispatcher("/views/admin/adindex.jsp").forward(req, resp);
//	    		}else {
//	    			resp.sendRedirect("index");
//	    		}
//			}
	}

	public void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			VideoDAO dao = new VideoDAO();
			List<Video> video = dao.findAll();
			req.setAttribute("video", video);
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}

}
