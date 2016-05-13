package until;
import java.io.*;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Getliu extends ActionSupport{
	
	String liuyan;
	String username;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	public String getLiuyan() {
		return liuyan;
	}
	public void setLiuyan(String liuyan) {
		this.liuyan = liuyan;
	}

	public String execute() throws Exception {
		DbBean db=new DbBean();
		String sql = "insert into liuyan (name,liuyan) values ('" +username+"','"+ liuyan + "')" ;
		db.executeUpdate(sql);
		db.close(); 
		return SUCCESS;
	}
}

