
package cn.javabs.cei.dao.impl;

        import cn.javabs.cei.dao.AdminDao;
        import cn.javabs.cei.entity.Admin;

        import cn.javabs.cei.util.DruidUtils;
        import org.apache.commons.dbutils.QueryRunner;
        import org.apache.commons.dbutils.handlers.BeanHandler;

        import java.sql.SQLException;

public class AdminDaoImpl implements AdminDao {
    QueryRunner qr = new QueryRunner(DruidUtils.getDataSource());

    @Override
    public Admin login(String username, String password)  {
        try {
            Admin admin = qr.query("select * from users where username = ? and password = ?", new BeanHandler<Admin>(Admin.class), username, password);
            System.out.println("AdminDaoImpl中的admin：" + admin);
            return admin;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int register(Admin admin) {
        try {
            return qr.update("insert into users(uaername,password,phone,email) values (?,?,?,?)",
                    admin.getUsername(), admin.getPassword(), admin.getPhone(), admin.getEmail());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}



