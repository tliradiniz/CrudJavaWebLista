//package com.daniel.controller;
//
//import java.io.IOException;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.daniel.dao.UserDao;
//import com.daniel.model.User;
//
///**
// * Servlet implementation class UserTest
// */
//@WebServlet("/UserTest")
//public class UserTest extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	private UserDao dao;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public UserTest() {
//        super();
//        dao = new UserDao();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//		
//		User user = new User();
//        user.setFirstName(request.getParameter("firstName"));
//        user.setLastName(request.getParameter("lastName"));
//        try {
//            Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
//            user.setDob(dob);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        user.setEmail(request.getParameter("email"));
//        String userid = request.getParameter("userid");
//        if(userid == null || userid.isEmpty())
//        {
//            dao.addUser(user);
//        }
//        else
//        {
//            user.setUserid(Integer.parseInt(userid));
//            dao.updateUser(user);
//        }
//        request.setAttribute("users", dao.getAllUsers());
//        response.sendRedirect("listUser.jsp");
//    
//	}
//
//}
