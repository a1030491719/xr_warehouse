package com.oracle.gdms.web.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.oracle.gdms.entity.ResponseEntity;
import com.oracle.gdms.util.GDMSUtil;

/**
 * Servlet implementation class UserAdmin
 */
@WebServlet("/admin/user")
public class UserAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//解析请求中传过来的附件对象
		
		FileItemFactory fileItemFactory=new DiskFileItemFactory();
		
		ServletFileUpload sfu= new ServletFileUpload(fileItemFactory);
		
		
		sfu.setFileSizeMax(102400);//指定文件最大尺寸
		
		//指定一个保存路径
		
		String path=this.getServletContext().getRealPath("/images"); //取得当前应用程序下images的绝对路径
		
		path +="/upload";
		
		System.out.println("path="+path);
		
		File f=new File(path);
		
		if(!f.exists()) {
			
			f.mkdir();
		}
		
		try {
			List<DiskFileItem> list=sfu.parseRequest(request);
			for(DiskFileItem item:list) {
				if(!item.isFormField()) {//如果这个item对象不是表单项，我们就把它当文件处理
					String fileName=GDMSUtil.generic(24);
					
					int i=item.getName().lastIndexOf(".");
					fileName+=item.getName().substring(i);
					
					File file=new File(path+"/"+fileName);//产生新文件对象
					
					item.write(file);             				//把源文件内容写到新文件中
					
					
					ResponseEntity entity=new ResponseEntity();
					entity.setCode(0);
					entity.setMessage(fileName);
					entity.setData("<img width='300' height='200' src='images/upload/"+fileName+"'>");
					JSONObject j=new JSONObject();
					j.put("entity",entity);
					
					response.setContentType("application/json;charset=UTF-8");
					response.getWriter().print(j.toJSONString()); //把上传结果以一个json对象返回
//					response.getWriter().print("<img width='300' height='200' src='images/upload/"+fileName+"'>");
					
				}
				
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("上传失败!");
		}
		
		
		
		
		
	}
	
	/*
	 * public static void main(String[] args) { //构造json对象 JSONObject json=new
	 * JSONObject(); json.put("name","族恒"); json.put("sex","男");
	 * json.put("age","20");
	 * 
	 * System.out.println(json.toJSONString()); }
	 */
	
	

}
