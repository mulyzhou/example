package com.muly.service.impl;

import com.muly.dao.UserMapper;
import com.muly.entity.User;
import com.muly.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户操作
 *
 * @author zhoubo
 * @create 2017-03-02 15:29
 **/
@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource
    private UserMapper userMapper;
    private static Logger logger = Logger.getLogger(UserServiceImpl.class);
    public User getUserById(int userId) {
        User user = this.userMapper.selectByPrimaryKey(userId);
        logger.info(user.toString());
        return user;
    }

    public List<User> list() {
        List<User> list = this.userMapper.list();
        logger.info(list.toString());
        return list;
    }
}
