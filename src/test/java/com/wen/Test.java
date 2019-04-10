package com.wen;

import com.wen.util.MD5Util;

public class Test {
	
	@org.junit.Test
	public void test(){
		String md5 = MD5Util.md5("lu");
		System.out.println(md5);
	}
}
