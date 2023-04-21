package com.Utils;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import entity.User;
import entity.Video;
import DAO.UserDAO;
import DAO.VideoDAO;

@WebServlet({ "/VideoServlet","/VideoServlet/index", "/VideoServlet/Create", "/VideoServlet/Update", "/VideoServlett/Delete", "/VideoServlet/Edit",
		"/VideoServlet/Reset" })
public class VideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		Video video = null;
		if (uri.contains("Create")) {
			create(req, resp);
			req.setAttribute("video", video);
		}
		else if (uri.contains("Create")) {
			create(req, resp);
			req.setAttribute("video", video);
		}
		if (uri.contains("Delete")) {
			remove(req, resp);
			video = new Video();
			req.setAttribute("video", video);
		}
		if (uri.contains("Update")) {
			update(req, resp);
			req.setAttribute("video",video);
		}
		if (uri.contains("Reset")) {
			video = new Video();
			req.setAttribute("video", video);
			req.setAttribute("disable", "");
		}
		if (uri.contains("Edit")) {
			edit(req, resp);
		}
		findAll(req, resp);
		req.getRequestDispatcher("/page/managerVideo.jsp").forward(req, resp);
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
			req.setAttribute("user", new Video());
		}
		if (uri.contains("Reset")) {
			req.setAttribute("disable", "");
			req.setAttribute("video", new Video());
		}
		findAll(req, resp);
		req.getRequestDispatcher("/page/managerVideo.jsp").forward(req, resp);
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

	public void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String videoID = req.getParameter("id");
			VideoDAO videoDao = new VideoDAO();
			Video video = videoDao.findByID(videoID);
			req.setAttribute("disable", "disable");
			req.setAttribute("Video", video);
			System.out.println(video.getPoster());
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}

	public void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Video video = new Video();
			BeanUtils.populate(video, req.getParameterMap());
			VideoDAO dao = new VideoDAO();
			dao.update(video);
			req.setAttribute("disable", "");
			req.setAttribute("message", "video update successfully");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("disable", "disable");
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}

	public void create(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
//			// đường dẫn thư mục tính từ gốc của website
//			File dir = new File(req.getServletContext().getRealPath("/files"));
//			if (!dir.exists()) { // tạo nếu chưa tồn tại
//				dir.mkdirs();
//			}
//			// lưu các file upload vào thư mục files
//			Part photo = req.getPart("photo_file"); // file hìnhx
//			File photoFile = new File(dir, photo.getSubmittedFileName());
//			photo.write(photoFile.getAbsolutePath());
			
	
			
			// chia sẻ cho result.jsp để hiển thị
//			req.setAttribute("img", photoFile);
		
//			req.getRequestDispatcher("/views/result.jsp").forward(req, resp);
	
			Video video = new Video();
//			video.setPoster(photoFile.getName());
			// Đọc tham số vào các thuộc tính của bean staff
			BeanUtils.populate(video, req.getParameterMap());
			VideoDAO videoDao = new VideoDAO();
			videoDao.create(video);
		
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
			VideoDAO videodao = new VideoDAO();
			videodao.delete(id);
			req.setAttribute("message", "User delete successfully");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error" + e.getMessage());
		}
	}
	public void favorite(HttpServletRequest req, HttpServletResponse resp) {
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
