package com.zhbit.express.service.impl;


import com.zhbit.express.entity.User;
import com.zhbit.express.repository.UserRepository;
import com.zhbit.express.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by XRog
 * On 2/2/2017.2:40 PM
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;


    public Long saveUser() {//测试 用
        User user = new User();
        user.setId((long) 123);
        user.setName("hugoo");
        return userRepository.save(user);
    }

    public Long saveUser(User user){
        return  userRepository.save(user);
    }

    public void saveOrUpdate(User user) {
        userRepository.saveOrUpdate(user);
    }

    public boolean deleteUser(User user) {
        return false;
    }

    public boolean updateUser(User user) {
        return false;
    }

    public User findUser(String email, String password) {
        return null;
    }


    public Boolean findUserbyEmail(String email) {//查找这个邮箱是否重复
       List list = userRepository.list("from User where email = ?",new Object[]{email});
       if(list.isEmpty()){
           return true;
       }
        return false;
    }
    public User userLogin(String username, String password) {//查找登录名和密码
        List list = userRepository.list("from User where  name = ? and password = ?",new Object[]{username,password});
        if(list.isEmpty()){
            return null;
        }else {
        return (User) list.get(0);
        }
    }

    @Transactional
    public void editInfo(Long id, User user){

        User user1 = userRepository.get((long)id);

        user1.setName(user.getName());
        user1.setPassword(user.getPassword());
        user1.setAddress(user.getAddress());
        user1.setSex(user.getSex());
        user1.setPhone(user.getPhone());
        user1.setnickname(user.getnickname());
        userRepository.saveOrUpdate(user1);
    }
    public User getUser(Long id){
        return userRepository.get(id);
    }
}