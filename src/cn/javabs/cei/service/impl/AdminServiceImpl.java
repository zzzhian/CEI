package cn.javabs.cei.service.impl;


import cn.javabs.cei.dao.AdminDao;
import cn.javabs.cei.dao.impl.AdminDaoImpl;
import cn.javabs.cei.entity.Admin;
import cn.javabs.cei.service.AdminService;

public class AdminServiceImpl implements AdminService {


    AdminDao adminDao = new AdminDaoImpl();



    @Override
    public Admin Login(String username, String password) {
        return adminDao.login(username,password);
    }

    @Override
    public int Register(Admin admin) {
        return adminDao.register(admin);
    }
}