package cn.javabs.cei.dao;

import cn.javabs.cei.entity.Admin;

public interface AdminDao {
    Admin login(String username, String password);

    int register(Admin admin);
}
