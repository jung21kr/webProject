package com.example.demo.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.query.Param;

import com.example.demo.domain.BoardInfo;
import com.example.demo.domain.User;

@Mapper
public interface UserMapper{
	User getUser(User user);
	List<User> getUserList();
	Integer deleteUser(User user);
	User insertUser(User user);
}
