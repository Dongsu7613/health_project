package com.health.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.mapper.ShareMapper;

@Service
public class ShareServiceImpl implements ShaerService {
	
	@Autowired
	ShareMapper map;

}
