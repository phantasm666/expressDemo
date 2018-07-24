package com.zhbit.express.service;

import com.zhbit.express.entity.User;

/**
 * Created by hugo on 2018/1/26/.
 */
public interface UserService {
    Long saveUser();
    Long saveUser(User user);//用户保存
    void saveOrUpdate(User user);//用户保存或更新

    public boolean deleteUser(User user);//用户删除
    public boolean updateUser(User user);//用户更新
    public User findUser(String username,String password);//查找用户

    Boolean findUserbyEmail(String email);
    public User userLogin(String username, String password);
    public void editInfo(Long id, User user);
    public User getUser(Long id);
}
