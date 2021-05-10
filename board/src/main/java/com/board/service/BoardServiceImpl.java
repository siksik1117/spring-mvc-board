package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

 @Inject
 private BoardDAO dao;
 
	@Override
	 public List<BoardVO> list() throws Exception {
	
	  return dao.list();
	 }
	
	@Override
	public void write(BoardVO vo) throws Exception {
		
		dao.write(vo);
		
	}
	
	@Override
	public BoardVO view(int id) throws Exception {

		return dao.view(id);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		
		dao.modify(vo);
		
	}

	@Override
	public void delete(int id) throws Exception {
		dao.delete(id);
		
	}

}