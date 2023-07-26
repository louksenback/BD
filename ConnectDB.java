import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.swing.table.DefaultTableModel;


try{
            //open connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bd_2022_2023", "root", "root");
            //username is root and password is root
            
            
            
            Statement st = con.createStatement();
            //mysql query
            String sql = "select * from log";
            ResultSet rs = st.executeQuery(sql);

  
            con.close();

}
catch(ClassNotFoundException | SQLException e){
            System.out.println(e.getMessage());    
}
