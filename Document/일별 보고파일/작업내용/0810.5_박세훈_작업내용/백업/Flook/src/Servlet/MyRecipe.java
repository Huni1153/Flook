package Servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Manager.MyRecipeManager;
import ViewVO.SimpleUserRecipeViewVO;

/**
 * Servlet implementation class MyRecipe
 */
public class MyRecipe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		HttpSession session = request.getSession();
		String userCode = (String)session.getAttribute("userCode");
		MyRecipeManager myRecipeManager = new MyRecipeManager();
		LinkedList<SimpleUserRecipeViewVO> simpleMyRecipeViewList = myRecipeManager.searchMyRecipeList(userCode);
		//SimpleUserRecipeViewVO[] simpleUserRecipeList = simpleUserRecipeViewList.toArray(new SimpleUserRecipeViewVO[simpleUserRecipeViewList.size()]);
		SimpleUserRecipeViewVO res;
		Iterator<SimpleUserRecipeViewVO> iterator = simpleMyRecipeViewList.iterator();
		while (iterator.hasNext()) {
			res = iterator.next();
			System.out.println(res.toString());
		}
		
		request.setAttribute("simpleMyRecipeViewList", simpleMyRecipeViewList);
		
		RequestDispatcher rd = request.getRequestDispatcher("myWriteRecipe.jsp");
		rd.forward(request, response);
		
	}

}
