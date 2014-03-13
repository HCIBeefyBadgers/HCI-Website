package com.example.HCI.servlets;

import java.io.IOException;
import java.util.LinkedList;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.HCI.stores.MessageStore;
import com.example.HCI.stores.PostStore;
import com.sun.rowset.internal.Row;

/**
 * Servlet implementation class HCI
 */
@WebServlet({"/HCI", "/Home", "/Messages", "/Photos", "/Search"})
public class HCI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LinkedList<PostStore> postList = new LinkedList<PostStore>();
	LinkedList<MessageStore> messageList = new LinkedList<MessageStore>();
	String name=null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HCI() {
		super();

		System.out.println("entered HCI.java");
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] url = request.getRequestURI().split("/");
		
		/*RequestDispatcher rd = request.getRequestDispatcher("/Index.jsp"); 
		rd.forward(request, response);
		*/
		
		
		if((url[(url.length)-1]).equals("Home"))
		{
			request.setAttribute("Updates", postList);
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
		}
		
		else if((url[(url.length)-1]).equals("Photos"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("Photos.jsp");
			rd.forward(request, response);
		}
		
		else if((url[(url.length)-1]).equals("Search"))
		{
			System.out.println("in the Search");
			
			String search = request.getParameter("searchText");
			String searchedUser = "Joe Bloggs";

			search.toLowerCase();
			searchedUser.toLowerCase();

			int result = search.compareToIgnoreCase(searchedUser);
			System.out.println(result);

			if(result==0)
			{
				RequestDispatcher rd = request.getRequestDispatcher("Joe.jsp");
				rd.forward(request,response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request,response);
			}
		}
		
		else if((url[(url.length)-1]).equals("Messages"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("Messages.jsp");
			rd.forward(request,response);
		}
		
		else if(request.getParameter("logout")!=null)
		{
			name = null;

			RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
			rd.forward(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] url = request.getRequestURI().split("/");
		
		System.out.println("In the Post method");
		
		if(request.getParameter("login") !=null)
		{
			boolean loggedin = false;
			String username = request.getParameter("username");
			name = username;
			String password = request.getParameter("password");

			if(name.equals("name") && password.equals("pass"))
			{
				loggedin=true;
			}

			if(loggedin==true)
			{
				request.setAttribute("Updates", postList);
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("invalidlogin", name);
				RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
				rd.forward(request,response);
			}
		}
		
		else if(request.getParameter("post")!=null)
		{
			String post = request.getParameter("Message");
			PostStore ps = new PostStore();
			ps.setUser(name);
			ps.setPost(post);			

			postList.add(ps);

			request.setAttribute("Updates", postList);

			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request,response);
		}
		
		/*else if((url[(url.length)-1]).equals("Search"))
		{
			System.out.println("in the Search");
			
			String search = request.getParameter("searchText");
			String searchedUser = "Joe Bloggs";

			search.toLowerCase();
			searchedUser.toLowerCase();

			int result = search.compareToIgnoreCase(searchedUser);
			System.out.println(result);

			if(result==0)
			{
				RequestDispatcher rd = request.getRequestDispatcher("Joe.jsp");
				rd.forward(request,response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request,response);
			}
		}
		
		else if((url[(url.length)-1]).equals("Messages"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("Messages.jsp");
			rd.forward(request,response);
		}*/
		
		
		
		else if(request.getParameter("reply")!=null)
		{		
			String message = request.getParameter("Message");

			MessageStore ms = new MessageStore();
			ms.setUser(name);
			ms.setMessage(message);
			
			messageList.add(ms);
			
			request.setAttribute("message",messageList);

			RequestDispatcher rd = request.getRequestDispatcher("Messages.jsp");
			rd.forward(request,response);
		}
		
		

	}

}
