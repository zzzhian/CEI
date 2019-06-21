package cn.javabs.cei.service;

import cn.javabs.cei.entity.Admin;

public interface AdminService {
    Admin Login(String username, String password);

    int Register(Admin admin);

}
