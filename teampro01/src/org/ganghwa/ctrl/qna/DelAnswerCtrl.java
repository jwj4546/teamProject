package org.ganghwa.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ganghwa.dao.QnaDAO;

@WebServlet("/DelAnswer.do")
public class DelAnswerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DelAnswerCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.delAnswer(no);
		
		if(cnt>=1) {
			response.sendRedirect("/ganghwa/GetQnaList.do");
		} else {
			response.sendRedirect("/ganghwa/GetQna2.do?no="+no);
		}
	}

}