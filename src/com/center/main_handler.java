package com.center;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface main_handler {

	public String action(HttpServletRequest request, HttpServletResponse response);
}
