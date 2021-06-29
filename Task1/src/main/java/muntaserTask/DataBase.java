package muntaserTask;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class DataBase {
	
	public static Connection getConnection()
{
		
        Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/task";
		    con =DriverManager.getConnection(url,"root","");
		 } catch (ClassNotFoundException |SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		 }
		  return con ;
	  }
	
	
	public static int save(Users u){  
	    int status=0;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement(  
	"INSERT INTO `users`(`name`, `email`, `password`, `gender`, `location`, `position`) VALUES (?,?,?,?,?,?)");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getEmail()); 
	        ps.setString(3,u.getPassword());   
	        ps.setString(4,u.getGender());  
	        ps.setString(5,u.getLocation());  
	        ps.setString(6,u.getPosition());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	public static int update(Users u){  
	    int status=0;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement(  
	        "UPDATE `users` SET `name`=?,`email`=?,`password`=?,`gender`=?,`location`=?,`position`=? WHERE id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getEmail()); 
	        ps.setString(3,u.getPassword());  
	        ps.setString(4,u.getGender());  
	        ps.setString(5,u.getLocation());
	        ps.setString(6,u.getPosition());
	        ps.setInt(7,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	public static int delete(Users u){  
	    int status=0;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("DELETE FROM `users` WHERE id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}
		
	
	public static List<Users> getAllRecords(){  
		
	    List<Users> list=new ArrayList<Users>();  
	      
	    try{  
	    	
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("SELECT * FROM `users`");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Users u=new Users();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmail(rs.getString("email")); 
	            u.setPassword(rs.getString("password"));  
	            u.setGender(rs.getString("gender"));  
	            u.setLocation(rs.getString("location"));  
	            u.setPosition(rs.getString("position")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){
	    	
	    	System.out.println(e);}  
	    return list;  
	}  
	
	
	public static Users getRecordById(int id){  

		Users u=null;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("select * from users where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Users();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name")); 
	            u.setEmail(rs.getString("email"));
	            u.setPassword(rs.getString("password"));  
	            u.setGender(rs.getString("gender"));  
	            u.setLocation(rs.getString("location"));  
	            u.setPosition(rs.getString("position"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	
	public static Users getRecordByName(String nameX){  

		Users u=null;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("select * from users where name=?");  
	        ps.setString(1,nameX);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Users();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name")); 
	            u.setEmail(rs.getString("email"));
	            u.setPassword(rs.getString("password"));  
	            u.setGender(rs.getString("gender"));  
	            u.setLocation(rs.getString("location"));  
	            u.setPosition(rs.getString("position"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	} 

	
	
	// for task
	
	
	public static int saveTask(Task t){  
	    int status=0;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement(  
	"INSERT INTO `task`(`type`, `name`, `description`, `estimatedTime`, `manager`, `liability`, `status`) VALUES (?,?,?,?,?,?,'In-Progress')");  
	        ps.setString(1,t.getType());  
	        ps.setString(2,t.getName()); 
	        ps.setString(3,t.getDescription());   
	        ps.setString(4,t.getEstimatedTime());  
	        ps.setString(5,t.getManager());  
	        ps.setString(6,t.getLiability());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	public static int updateTask(Task t){  
	    int status=0;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement(  
	"UPDATE `task` SET `type`=?,`name`=?,`description`=?,`estimatedTime`=?,`manager`=?,`liability`=?,`status`=? WHERE id=?");  
	        ps.setString(1,t.getType());  
	        ps.setString(2,t.getName()); 
	        ps.setString(3,t.getDescription());   
	        ps.setString(4,t.getEstimatedTime());  
	        ps.setString(5,t.getManager());  
	        ps.setString(6,t.getLiability());
	        ps.setString(7,t.getStatus()); 
	        ps.setInt(8,t.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	public static int deleteTask(Task t){  
	    int status=0;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("DELETE FROM `task` WHERE id=?");  
	        ps.setInt(1,t.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}
		
	
	public static List<Task> getAllTesks(){  
		
	    List<Task> list=new ArrayList<Task>();  
	      
	    try{  
	    	
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("SELECT * FROM `task`");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Task t=new Task();  
	            t.setId(rs.getInt("id"));  
	            t.setType(rs.getString("type")); 
	            t.setName(rs.getString("name"));  
	            t.setDescription(rs.getString("description"));  
	            t.setEstimatedTime(rs.getString("estimatedTime"));  
	            t.setManager(rs.getString("manager"));  
	            t.setLiability(rs.getString("liability"));
	            t.setStatus(rs.getString("status")); 
	            list.add(t);  
	        }  
	    }catch(Exception e){
	    	
	    	System.out.println(e);}  
	    return list;  
	}  
	
	
	public static Task getTaskById(int id){  

		Task t=null;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("SELECT * FROM `users` WHERE id = ?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            t=new Task();  
	            t.setId(rs.getInt("id"));  
	            t.setType(rs.getString("type"));
	            t.setName(rs.getString("name")); 
	            t.setDescription(rs.getString("description"));  
	            t.setEstimatedTime(rs.getString("estimatedTime"));  
	            t.setManager(rs.getString("manager"));  
	            t.setLiability(rs.getString("liability"));
	            t.setStatus(rs.getString("status"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return t;  
	} 
	
	public static int updateTaskBtId(int id){  
	    int status=0; 
	    Task t=getTaskById(id);
	 
	    	

	    try{  
	    	
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement(  
	        "UPDATE `task` SET `status`=? WHERE id=?");  
	        ps.setString(1,t.getStatus());  
	        ps.setInt(2,t.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	
	
	public static Task getTaskByName(String name){  

		Task t=null;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement("select * from users where manager=? or liability=?");  
	        ps.setString(1,name);
	        ps.setString(2,name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            t=new Task();  
	            t.setId(rs.getInt("id"));  
	            t.setType(rs.getString("type"));
	            t.setName(rs.getString("name")); 
	            t.setDescription(rs.getString("description"));  
	            t.setEstimatedTime(rs.getString("estimatedTime"));  
	            t.setManager(rs.getString("manager"));  
	            t.setLiability(rs.getString("liability"));
	            t.setStatus(rs.getString("status"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return t;  
	} 
	
	
	
	
	
	
	public static int updateTaskByID(int id , String ss){  
	    int status=0;  
	    try{  
	        Connection conn=getConnection();  
	        PreparedStatement ps=conn.prepareStatement(  
	        "UPDATE `task` SET `status`=? WHERE id=?");  
	        ps.setString(1,ss); 
	        ps.setInt(2,id);  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	
	
	
	
	
	
	
	
	
	
	
}
