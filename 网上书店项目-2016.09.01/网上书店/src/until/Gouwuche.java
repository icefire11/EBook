package until;
import java.io.*;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Gouwuche extends ActionSupport{
	
	String username;
	String bookname;
	
	
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

	public String execute() throws Exception {
		DbBean db=new DbBean();
		String sql2="select * from gouwuche where bookname='" + bookname+"'AND name='"+username
      + "'";
		ResultSet rs=db.executeQuery(sql2);
		if(rs.next())
		{
			return SUCCESS;
		}
		
		else{
		String sql = "insert into gouwuche (bookname,name) values ('" + bookname
			      + "','" +username+"')" ;
		db.executeUpdate(sql);
		}
		db.close(); 
		return SUCCESS;
		
	}
}
