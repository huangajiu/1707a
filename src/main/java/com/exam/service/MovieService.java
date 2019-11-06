package com.exam.service;

import java.util.List;
import java.util.Map;

import com.exam.entity.Movie;

public interface MovieService {
	
	List<Movie> queryMovieAll(Map<String, Object> map);
	
	void addMovie(Movie movie);
	
	boolean deleteMovie(String[] mids);
	
}