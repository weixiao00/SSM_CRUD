package com.lishilin.util;

import java.util.HashMap;
import java.util.Map;

public class UserInfo {

	private Map<String, Object> infomap = new HashMap<>();
	
	public static UserInfo add(String key,Object value){
		UserInfo uf = new UserInfo();
		uf.getInfomap().put(key, value);
		return uf;
	}

	public Map<String, Object> getInfomap() {
		return infomap;
	}

	public void setInfomap(Map<String, Object> infomap) {
		this.infomap = infomap;
	}
	
}
