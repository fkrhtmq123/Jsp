package kr.farmstory2.service.user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.farmstory2.config.DBConfig;
import kr.farmstory2.config.SQL;
import kr.farmstory2.controller.CommonService;
import kr.farmstory2.dao.UserDAO;
import kr.farmstory2.vo.MemberVO;

public class RegisterService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		if(req.getMethod().equals("POST")) {
			
			MemberVO vo = new MemberVO();
			vo.setUid(req.getParameter("uid"));
			vo.setPass(req.getParameter("pass1"));
			vo.setName(req.getParameter("name"));
			vo.setNick(req.getParameter("nick"));
			vo.setEmail(req.getParameter("email"));
			vo.setHp(req.getParameter("hp"));
			vo.setZip(req.getParameter("zip"));
			vo.setAddr1(req.getParameter("addr1"));
			vo.setAddr2(req.getParameter("addr2"));
			vo.setRegip(req.getRemoteAddr());
			
			UserDAO dao = UserDAO.getInstance();
			dao.registerUser(vo);
			
			return "redirect:/Farmstory2/user/login.do";
		} else {
			return "/user/register.jsp";
		}
	}

}
