package org.gangseo.ctrl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gangseo.dto.Notice;
import org.gangseo.dto.Qna;

import java.io.IOException;
import java.util.ArrayList;
import java.util.*;


@WebServlet("/pro1") //요청 url
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Main() {
        super();
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String author = "김응원";
		
		ServletContext application = request.getServletContext();
		String realPath = request.getSession().getServletContext().getRealPath("/");// http://ip주소:포트넘버/~ url 주소
		application.setAttribute("realPath", realPath);
		application.setAttribute("title", "강서구 마곡동 소개");
		List<Notice> latestNotiList = new ArrayList<>();
		List<Qna> latestQnaList = new ArrayList<>();

		
		//request.setAttribute("latestQnaList", latestQnaList);  //최근 게시글
		//request.setAttribute("latestNotiList", latestNotiList);
		request.setAttribute("magok01", "./images/magok01.jpg");
		request.setAttribute("author", author);
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}
}
