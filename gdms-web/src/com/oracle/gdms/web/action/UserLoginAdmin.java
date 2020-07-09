package com.oracle.gdms.web.action;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracle.gdms.entity.UserModel;
import com.oracle.gdms.service.UserService;
import com.oracle.gdms.service.impl.AreaServiceImpl;
import com.oracle.gdms.service.impl.UserServiceImpl;
import com.oracle.gdms.util.GDMSUtil;


/**
 * Servlet implementation class UserAdmin
 */
@WebServlet("/admin/user/login.php")
public class UserLoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	String account=request.getParameter("name");
	String password=request.getParameter("password");
	String code=request.getParameter("code");
	
	//拿到服务的session中正确的验证码
	HttpSession session=request.getSession();   //先获取当前会话
	String yzm=(String)session.getAttribute("code");	//从会话中取得正确的验证码
	//用过的验证码无效，销毁
	session.removeAttribute("code");
	
	
	if(yzm==null || !yzm.equalsIgnoreCase(code)) {
		
		request.setAttribute("login_msg", "验证码无效");
		//执行转发
		request.getRequestDispatcher("../../index.jsp").forward(request, response);
		return;
	}
	
	
	
//	System.out.println("account="+account);
//	System.out.println("password="+password);


		UserModel user=new UserModel();
		user.setAccount(account);
		try {
			user.setLogpwd(GDMSUtil.getMD5(password.getBytes()));
		} catch (Exception e1) {
			
			e1.printStackTrace();
		}
	
		//传给业务逻辑层对象
		UserService userservice=new UserServiceImpl() ;
		UserModel loginUser=userservice.login(user);
		
		if(loginUser !=null) {
		
			session.setAttribute("loginUser", loginUser);   	//登录成功就把用户对象存进会话中
			response.sendRedirect("../main.jsp");				//重定向页面到admin/main.jsp
		}else {
			request.setAttribute("login_msg", "用户名或密码无效"); //执行转发
			//执行转发
			request.getRequestDispatcher("../../index.jsp").forward(request, response);
		}
		
//		System.out.println(count>0? "成功":"失败");
					
		
	}
	
		

}
