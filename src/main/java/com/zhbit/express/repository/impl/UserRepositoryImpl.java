package com.zhbit.express.repository.impl;

import com.zhbit.express.entity.User;
import com.zhbit.express.repository.UserRepository;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Map;


@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        Session s=null;
        try
        {
            s= sessionFactory.getCurrentSession();
        }
        catch(Exception ex)
        {
            s= sessionFactory.openSession();
        }

        return s;
    }

    public User load(Long id) {
        return (User) getCurrentSession().load(User.class,id);
    }

    public User get(Long id) {
        return (User)getCurrentSession().get(User.class,id);
    }

    public List<User> findAll() {
        return null;
    }

    public void persist(User entity) {
        getCurrentSession().persist(entity);
    }

    public Long save(User entity) {
        return (Long)getCurrentSession().save(entity);
    }

    public void saveOrUpdate(User entity) {
        getCurrentSession().saveOrUpdate(entity);
//        getCurrentSession().flush();
    }

    public void Update(User entity) {
        getCurrentSession().update(entity);
    }

    public void delete(Long id) {
        User user = load(id);
        getCurrentSession().delete(user);
    }

    public void flush() {
        getCurrentSession().flush();
    }

    public List<User> list(String hql, Object[] args) {

        Query query = getCurrentSession().createQuery(hql);
        for(int i = 0;i<args.length;i++){
            query.setParameter(i,args[i]);
        }
        return query.list();
    }

    public List<User> list(String hql, Object arg) {
        return null;
    }

    public List<User> list(String hql) {
        return getCurrentSession().createSQLQuery(hql).list();
    }
}