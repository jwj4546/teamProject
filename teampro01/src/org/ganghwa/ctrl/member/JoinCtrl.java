package org.ganghwa.ctrl.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join.do")
public class JoinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		
		request.setAttribute("msg", "<strong>회원가입이 필요합니다.</strong>");
		RequestDispatcher view = request.getRequestDispatcher("/member/join.jsp");
		view.forward(request, response);
	}

}
