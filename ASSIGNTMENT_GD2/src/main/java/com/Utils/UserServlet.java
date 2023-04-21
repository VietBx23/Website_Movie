package com.Utils;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import entity.User;
import DAO.UserDAO;

@WebServlet({ "/UserServlet", "/UserServlet/Create", "/UserServlet/Update", "/UserServlet/Delete", "/UserServlet/Edit",
		"/UserServlet/Reset" })
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		User user = null;
		if (uri.contains("Create")) {
			create(req, resp);
			// user = new User();
			req.setAttribute("user", user);
		}
		if (uri.contains("Delete")) {
			remove(req, resp);
			user = new User();
			req.setAttribute("user", user);
		}
		if (uri.contains("Update")) {
			update(req, resp);
			req.setAttribute("user", user);
		}
		if (uri.contains("Reset")) {
			user = new User();
			req.setAttribute("user", user);
			req.setAttribute("disable", "");
		}
		if (uri.contains("Edit")) {
			edit(req, resp);
		}
		findAll(req, resp);
		req.getRequestDispatcher("/page/managerUser.jsp").forward(req, resp);
//		req.getRequestDispatcher("/views/user.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String uri = req.getRequestURI();
		if (uri.contains("Create")) {
			create(req, resp);
		}
		if (uri.contains("Update")) {
			update(req, resp);
		}
		if (uri.contains("Delete")) {
			remove(req, resp);
			req.setAttribute("user", new User());
		}
		if (uri.contains("Reset")) {
			req.setAttribute("disable", "");
			req.setAttribute("user", new User());
		}
		findAll(req, resp);
		req.getRequestDispatcher("/page/managerUser.jsp").forward(req, resp);
//		req.getRequestDispatcher("/views/user.jsp").forward(req, resp);
	}

	public void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UserDAO dao = new UserDAO();
			List<User> list = dao.findAll();
			req.setAttribute("users", list);
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}

	public void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String userID = req.getParameter("id");
			UserDAO dao = new UserDAO();
			User user = dao.findByID(userID);
			req.setAttribute("disable", "disable");
			req.setAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}

	public void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, req.getParameterMap());
			UserDAO dao = new UserDAO();
			dao.update(user);
			req.setAttribute("disable", "");
			req.setAttribute("message", "User update successfully");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("disable", "disable");
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}

	public void create(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, req.getParameterMap());
			UserDAO dao = new UserDAO();
			dao.create(user);
			req.setAttribute("message", "User create successfully");
			findAll(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}

	public void remove(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String id = req.getParameter("id");
			UserDAO dao = new UserDAO();
			dao.delete(id);
			req.setAttribute("message", "User delete successfully");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}
}
