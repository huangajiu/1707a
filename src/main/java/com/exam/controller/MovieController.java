package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.entity.Movie;
import com.exam.service.MovieService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class MovieController {
	
	@Resource
	public MovieService service;
	
	@RequestMapping("/queryMovieAll")
	public String queryMovieAll(String mname,String pname,String time,String hiredate,String price,String mlen,@RequestParam(defaultValue="1")Integer pageNum,Model model){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mname", mname);
		map.put("pname", pname);
		map.put("time", time);
		map.put("hiredate", hiredate);
		map.put("price", price);
		map.put("mlen", mlen);
		
		PageHelper.startPage(pageNum, 3);
		List<Movie> list = service.queryMovieAll(map);
		
		PageInfo<Movie> page = new PageInfo<Movie>(list);
		model.addAttribute("page", page);
		
		return "movie_list";
		
	}
	
	@RequestMapping("/queryMovieByMid")
	public String queryMovieByMid(Integer mid,Model model){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mid", mid);
		
		List<Movie> movie = service.queryMovieAll(map);
		model.addAttribute("movie", movie.get(0));
		
		return "show_movie";
		
	}
	
	@RequestMapping("/addMovie")
	public String addMovie(Movie movie){
		
		service.addMovie(movie);
		
		return "redirect:queryMovieAll";
		
	}
	
	@RequestMapping("/deleteMovie")
	@ResponseBody
	public boolean deleteMovie(String[] mids){
		
		boolean flag = service.deleteMovie(mids);
		
		return flag;
		
	}
	
}