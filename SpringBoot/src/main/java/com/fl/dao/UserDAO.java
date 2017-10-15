package com.fl.dao;

import com.fl.pojo.UserVo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * Created by Administrator on 2017/9/30.
 */
@Repository
public interface  UserDAO extends JpaRepository<UserVo,String> {
    public List<UserVo> pageList();
}
