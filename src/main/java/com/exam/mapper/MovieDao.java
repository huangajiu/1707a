package com.exam.mapper;

import java.util.List;
import java.util.Map;

import com.exam.entity.Movie;

public interface MovieDao {
	
	List<Movie> queryMovieAll(Map<String, Object> map);
	
	void addMovie(Movie movie);
	
	Integer deleteMovie(String[] mids);
	
}