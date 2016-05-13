package until;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class register extends ActionSupport{
	
	String firstname;
	String secondname;
	String username;
	String emailaddress;
	String password;
	
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}


	public String getSecondname() {
		return secondname;
	}
	public void setSecondname(String secondname) {
		this.secondname = secondname;
	}


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmailaddress() {
		return emailaddress;
	}
	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}


	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String execute() throws Exception {
		DbBean db=new DbBean();
		String sql="select * from 用户表  where 账户='"+getUsername()+"'";
		ResultSet rs=db.executeQuery(sql);
		if(rs.next()){
			//if(rs.getString(1).equals(getUsername())){
			System.out.println("用户名已存在，请重新注册");	
			db.close();
			return ERROR;
		}
		sql="insert into 用户表 values('"+getUsername()+"','"+getPassword()+"','"+getEmailaddress()+"','"+getFirstname()+"','"+getSecondname()+"')";
		db.executeUpdate(sql);
		db.close();
		return SUCCESS;
	}
}
