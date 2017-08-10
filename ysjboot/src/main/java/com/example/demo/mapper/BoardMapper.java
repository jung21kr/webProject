package com.example.demo.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.query.Param;

import com.example.demo.domain.BoardInfo;

@Mapper
public interface BoardMapper{
	List<BoardInfo> getBoardList(Map<String, String> param);
	BoardInfo getBoard(@Param("binum")long binum);
	Integer getBoardTotalCount(Map<String, String> param);
	Integer deleteBoard(Map<String, String> param);
}
