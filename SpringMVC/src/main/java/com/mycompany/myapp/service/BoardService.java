package com.mycompany.myapp.service;

import java.util.List;

import com.mycompany.myapp.beans.BoardVO;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int updateBoard(BoardVO vo);
	public int deleteBoard(int id);
	public BoardVO getBoard(int seq);
	public List<BoardVO> getBoardList();
}
