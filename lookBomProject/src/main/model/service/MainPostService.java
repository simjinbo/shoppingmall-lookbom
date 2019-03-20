package main.model.service;

import main.model.dao.MainPostDao;
import main.model.vo.MainPost;

import static common.JDBCTemplate.*;

import java.sql.Connection;

public class MainPostService {
	public MainPostService() {}
	private MainPostDao mdao = new MainPostDao();
	public MainPost insertPost(String url,String img) {
		Connection conn = getConnection();
		MainPost mpost = mdao.insertPost(conn, url, img);
		close(conn);
		return mpost;
	}
	public MainPost deletePost(String url,String img) {
		Connection conn = getConnection();
		MainPost mpost = mdao.deletePost(conn, url, img);
		close(conn);
		return mpost;
	}
	
	
}
