package com.exam.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.exam.entity.Movie;
import com.exam.mapper.MovieDao;
import com.exam.service.MovieService;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Resource
	public MovieDao dao;
	
	public List<Movie> queryMovieAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.queryMovieAll(map);
	}

	public void addMovie(Movie movie) {
		// TODO Auto-generated method stub
		dao.addMovie(movie);
	}

	public boolean deleteMovie(String[] mids) {
		// TODO Auto-generated method stub
		return dao.deleteMovie(mids)>0?true:false;
	}

}
