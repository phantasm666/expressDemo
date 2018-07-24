package com.zhbit.express.repository;
        import java.io.Serializable;
        import java.util.List;
        import java.util.Map;


public interface DomainRepository<T,PK extends Serializable>{
    T load(PK id);

    T get(PK id);

    List<T> findAll();

    void persist(T entity);

    PK save(T entity);

    void saveOrUpdate(T entity);

    void Update(T entity);

    void delete(PK id);

    void flush();


    List<T> list(String hql, Object[] args);
    List<T> list(String hql, Object arg);
    List<T> list(String hql);

}