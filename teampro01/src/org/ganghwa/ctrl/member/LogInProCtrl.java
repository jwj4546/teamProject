package org.ganghwa.ctrl.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ganghwa.dao.MemberDAO;
import org.ganghwa.dto.Member;
import org.ganghwa.util.AES256;

@WebServlet("/LogInPro.do")
public class LogInProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogInProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		Member mem = dao.getMember(id);
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		RequestDispatcher view;
		
		String key = "%02x";
		
		try {
			mem.setPw(AES256.decryptAES256(mem.getPw(), key));
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		if(id.equals(mem.getId()) && pw.equals(mem.getPw())) {
			session.setAttribute("sid", mem.getId());
			response.sendRedirect("/teampro01");
		} else if (id.equals(mem.getId())) {
			request.setAttribute("msg", "해당 회원의 비밀번호가 일치하지 않습니다");
			view = request.getRequestDispatcher("/member/login.jsp");
			view.forward(request, response);
		} else {
			request.setAttribute("msg", "해당 회원이 존재하지 않습니다");
			view = request.getRequestDispatcher("/member/login.jsp");
			view.forward(request, response);
		}
	}

}
