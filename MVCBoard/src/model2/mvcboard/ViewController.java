package model2.mvcboard;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewController
 */
@WebServlet("/mvcboard/view.do")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 게시물 불러오기
		MVCBoardDAO dao = new MVCBoardDAO();
		String idx = req.getParameter("idx");
		dao.updateVisitCount(idx); // 조회수 1 증가
		MVCBoardDTO dto = dao.selectView(idx);
		dao.close();
		
		// 줄바꿈 처리
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br />"));
		
		// 게시물(dto) 저장 후 뷰로 포워드
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/View.jsp").forward(req, resp);
	}

}
