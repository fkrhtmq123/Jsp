package kr.farmstory2.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import kr.farmstory2.controller.CommonService;
import kr.farmstory2.dao.BoardDAO;
import kr.farmstory2.vo.ArticleVO;

public class DeleteCommentService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String seq    = req.getParameter("seq");
		String parent = req.getParameter("parent");
		
		ArticleVO vo = new ArticleVO();
		vo.setSeq(Integer.parseInt(seq));
		
		BoardDAO dao = BoardDAO.getInstance();
		int result = dao.deleteComment(vo);
		
		JsonObject json = new JsonObject();
		json.addProperty("result", result);
		
		return "json:"+json.toString();
		
	}
}
