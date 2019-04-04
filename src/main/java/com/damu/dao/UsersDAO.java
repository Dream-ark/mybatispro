package com.damu.dao;

import com.damu.entity.Users;
import com.damu.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

/**
 * Created by Vivian on 2019/4/3.
 */
public class UsersDAO {
    private SqlSession sqlSession;
    private List<Users> list;
    private Users user;

    private SqlSession getSession() {
        sqlSession = SqlSessionFactoryUtils.getSqlSessionFactory().openSession();
        return sqlSession;
    }

    /**
     * 查询全部用户
     * @return
     */
    public List<Users> findAll() {
        try {
            list = getSession().selectList("findAll");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return list;
    }

    /**
     *查询单个用户
     */
    public Users findById(Integer id) {
        try {
            user = getSession().selectOne("findById",id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return user;

    }
}
