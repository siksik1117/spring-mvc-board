package com.board.dao;

import java.util.List;

import com.board.domain.BoardVO;

public interface BoardDAO {
 
 public List<BoardVO> list() throws Exception; 
 
 public void write(BoardVO vo) throws Exception;
 
 public BoardVO view(int id) throws Exception;
 
 public void modify(BoardVO vo) throws Exception;
 
 public void delete(int id) throws Exception;
 
 public int count() throws Exception;
 
 public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;
 

}