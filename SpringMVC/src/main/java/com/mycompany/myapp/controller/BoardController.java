package com.mycompany.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.myapp.beans.BoardVO;
import com.mycompany.myapp.dao.BoardDAO;
import com.mycompany.myapp.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping(value="/board/list", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardlist(Model model) {
		model.addAttribute("list",boardService.getBoardList());
		return "list";
	}
	
	@RequestMapping(value="/board/add", method = {RequestMethod.GET, RequestMethod.POST})
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value="/board/addok", method = {RequestMethod.GET, RequestMethod.POST})
	public String addPostOK(BoardVO vo) {
		int i = boardService.insertBoard(vo);
		if(i==0) {
			System.out.println("데이터 추가 실패!");
		}
		else {
			System.out.println("데이터 추가 성공!!");
		}
		return "redirect:list";
	}
	
	@RequestMapping(value="/board/editform/{id}", method = {RequestMethod.GET, RequestMethod.POST})
	public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO vo = boardService.getBoard(id);
		model.addAttribute("boardVO",vo);
		
		return "editform";
	}
	
	@RequestMapping(value="/board/editok", method = {RequestMethod.GET, RequestMethod.POST})
	public String editPostOK(BoardVO vo) {
		int i = boardService.updateBoard(vo);
		if(i==0) {
			System.out.println("데이터 수정 실패!");
		}
		else {
			System.out.println("데이터 수정 성공!!");
		}
		return "redirect:list";
	}
	
	@RequestMapping(value="/board/deleteok/{id}", method = {RequestMethod.GET, RequestMethod.POST})
	public String deletePost (@PathVariable("id") int id, Model model) {
		 
		int i = boardService.deleteBoard(id);
		if(i==0) {
			System.out.println("데이터 삭제 실패!");
		}
		else {
			System.out.println("데이터 삭제 성공!!");
		}
		
		return "redirect:list";
	}
	
	
}
