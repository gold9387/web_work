package member.util;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

public class DbcpBean {
    //필드
    private Connection conn;

    //생성자
    public DbcpBean() {
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/oracle");
            conn = ds.getConnection();
            System.out.println("Connection Success");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Connection 객체를 리턴해주는 메소드
    public Connection getConn() {
        return conn;
    }
}