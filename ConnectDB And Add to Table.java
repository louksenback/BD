import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.swing.table.DefaultTableModel;


//Database Connection
        
        try{
            //open connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bd_2022_2023", "root", "root");
            //username is root and password is root
            
            
            
            Statement st = con.createStatement();
            //mysql query
            String sql = "select * from log";
            ResultSet rs = st.executeQuery(sql);
            
            
            while(rs.next()){
                //data will be added until finish
                String date = String.valueOf(rs.getDate("date_of_event"));
                String event_type = String.valueOf(rs.getString("event_type"));
                String table_name = String.valueOf(rs.getString("table_name"));
                String user_id = String.valueOf(rs.getInt("user_id"));
                
                //String array for store data into jtable
                String tbData[] = {date,event_type,table_name,user_id};
                DefaultTableModel tblModel = (DefaultTableModel)tableLog.getModel();
                
                //Add string array data into jtable
                tblModel.addRow(tbData);
                
                
                
            }
            
            
            
            con.close();
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e.getMessage());    
        }
