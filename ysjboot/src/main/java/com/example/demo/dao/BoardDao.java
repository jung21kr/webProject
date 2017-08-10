package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.example.demo.domain.BoardInfo;

@Component
public class BoardDao {
	private final SqlSession sqlSession;

	public BoardDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	public List<BoardInfo> selectCityById(Map<String, String> pMap) {
		return this.sqlSession.selectList("selectCityById", pMap);
	}
	
	public Integer getBoardCount(Map<String, String> pMap){
		return this.sqlSession.selectOne("getBoardCount",pMap);
	}
}
