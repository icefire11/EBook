package until;
import java.io.*;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Denglu extends ActionSupport{
	
	String username;
	String password;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String Username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String Password) {
		this.password = password;
	}

	public String execute() throws Exception {
		DbBean db=new DbBean();
		String sql = "select * from yonghu where name='" + username
			      + "' and mima = '" + password + "'";       
			    ResultSet rs = db.executeQuery ( sql );
			   if ( rs.next ( ) )
			    {
				  return SUCCESS;
			    } else
			    {
			     return ERROR;
			    }
		
	}
}
