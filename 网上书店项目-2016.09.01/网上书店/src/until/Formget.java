package until;
import java.io.*;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Formget extends ActionSupport{
	
	String pinglunxinxi;
	String username;
	String bookname;
	String shuming;
	
	
	public String getPinglunxinxi() {
		return pinglunxinxi;
	}
	public void setPinglunxinxi(String pinglunxinxi) {
		this.pinglunxinxi = pinglunxinxi;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getShuming() {
		return shuming;
	}
	public void setShuming(String shuming) {
		this.shuming = shuming;
	}

	public String execute() throws Exception {
		DbBean db=new DbBean();
		String sql = "insert into pinglun (bookname,pinglun,name,shuming) values ('" + bookname
			      + "','" + pinglunxinxi + "','"+username+"','"+shuming+"')" ;
		db.executeUpdate(sql);
		db.close(); 
		return SUCCESS;
		
	}
}
