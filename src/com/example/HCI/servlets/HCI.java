package com.example.HCI.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.HCI.stores.MessageStore;
import com.example.HCI.stores.PostStore;

/**
 * Servlet implementation class HCI
 */
@WebServlet({ "/HCI", "/Home", "/Messages", "/Photos", "/Search", "/Joe_Bloggs" })
public class HCI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LinkedList<PostStore> StatusList = new LinkedList<PostStore>();
	LinkedList<PostStore> WallPostList = new LinkedList<PostStore>();
	LinkedList<MessageStore> messageList = new LinkedList<MessageStore>();
	String Name = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HCI() {
		super();

		System.out.println("entered HCI.java");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In the Get method");
		String[] url = request.getRequestURI().split("/");

		/*
		 * RequestDispatcher rd = request.getRequestDispatcher("/Index.jsp");
		 * rd.forward(request, response);
		 */

		if ((url[(url.length) - 1]).equals("Home")) {
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
		}

		else if ((url[(url.length) - 1]).equals("Photos")) {
			RequestDispatcher rd = request.getRequestDispatcher("Photos.jsp");
			rd.forward(request, response);
		}

		else if ((url[(url.length) - 1]).equals("Search")) {
			System.out.println("in the Search");

			String search = request.getParameter("searchText");
			String searchedUser = "Joe Bloggs";

			search.toLowerCase();
			searchedUser.toLowerCase();

			int result = search.compareToIgnoreCase(searchedUser);
			System.out.println(result);

			if (result == 0) {
				RequestDispatcher rd = request.getRequestDispatcher("Joe.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
			}
		}

		else if ((url[(url.length) - 1]).equals("Messages")) {
			RequestDispatcher rd = request.getRequestDispatcher("Messages.jsp");
			rd.forward(request, response);
		} else if ((url[(url.length) - 1]).equals("Joe_Bloggs")) {
			System.out.println("In the Joe_Bloggs Statement");
			RequestDispatcher rd = request.getRequestDispatcher("Joe.jsp");
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		System.out.println("In the Post method");

		String[] url = request.getRequestURI().split("/");
		HttpSession session = request.getSession();

		if (request.getParameter("login") != null) {
			boolean loggedin = false;
			String username = request.getParameter("username");
			Name = username;
			String password = request.getParameter("password");

			if (password.equals("pass")) {
				loggedin = true;
			}

			if (loggedin == true) {
				session.setAttribute("UserName", Name);
				request.setAttribute("Updates", StatusList);
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("invalidlogin", Name);
				RequestDispatcher rd = request
						.getRequestDispatcher("Index.jsp");
				rd.forward(request, response);
			}
		}

		else if ((url[(url.length) - 1]).equals("Home")) {
			if (request.getParameter("Status") != null
					&& !(request.getParameter("Status").isEmpty())) {
				String post = request.getParameter("Status");
				PostStore ps = new PostStore();
				ps.setUser(Name);
				ps.setPost(post);

				StatusList.addFirst(ps);

				session.setAttribute("StatusUpdates", StatusList);

				/*
				 * RequestDispatcher rd =
				 * request.getRequestDispatcher("Home.jsp");
				 * rd.forward(request,response);
				 */
			}
			this.doGet(request, response);
		}

		else if ((url[(url.length) - 1]).equals("Joe_Bloggs")) {
			if (request.getParameter("WallPost") != null
					&& !(request.getParameter("WallPost").isEmpty())) {
				String post = request.getParameter("WallPost");
				PostStore ps = new PostStore();
				ps.setUser(Name);
				ps.setPost(post);

				WallPostList.addFirst(ps);

				session.setAttribute("WallUpdates", WallPostList);

				/*
				 * RequestDispatcher rd =
				 * request.getRequestDispatcher("Home.jsp");
				 * rd.forward(request,response);
				 */
			}
			this.doGet(request, response);
		}

		/*
		 * else if((url[(url.length)-1]).equals("Search")) {
		 * System.out.println("in the Search");
		 * 
		 * String search = request.getParameter("searchText"); String
		 * searchedUser = "Joe Bloggs";
		 * 
		 * search.toLowerCase(); searchedUser.toLowerCase();
		 * 
		 * int result = search.compareToIgnoreCase(searchedUser);
		 * System.out.println(result);
		 * 
		 * if(result==0) { RequestDispatcher rd =
		 * request.getRequestDispatcher("Joe.jsp");
		 * rd.forward(request,response); } else { RequestDispatcher rd =
		 * request.getRequestDispatcher("Home.jsp");
		 * rd.forward(request,response); } }
		 * 
		 * else if((url[(url.length)-1]).equals("Messages")) { RequestDispatcher
		 * rd = request.getRequestDispatcher("Messages.jsp");
		 * rd.forward(request,response); }
		 */

		else if ((url[(url.length) - 1]).equals("Messages")) {

			if (request.getParameter("reply") != null) {
				String message = request.getParameter("Message");
				String Name = (String) session.getAttribute("UserName");

				Calendar cal = Calendar.getInstance();
				cal.getTime();
				SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");

				MessageStore ms = new MessageStore();
				ms.setUser(Name);
				ms.setMessage(message);
				ms.setTime(sdf.format(cal.getTime()));

				messageList.addFirst(ms);

				session.setAttribute("message", messageList);

				RequestDispatcher rd = request
						.getRequestDispatcher("Messages.jsp");
				rd.forward(request, response);
			}
			/* this.doGet(request, response); */
		}

	}
}
