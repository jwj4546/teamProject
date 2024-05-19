package org.ganghwa.ctrl.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ganghwa.dao.QnaDAO;
import org.ganghwa.dto.Qna;

@WebServlet("/GetQnaList.do")
public class GetQnaListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetQnaListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaDAO dao = new QnaDAO();
		List<Qna> qnaList = dao.getQnaList();
		request.setAttribute("qnaList", qnaList);
		
		RequestDispatcher view = request.getRequestDispatcher("/qna/qnaList.jsp");
		view.forward(request, response);
	}

}
