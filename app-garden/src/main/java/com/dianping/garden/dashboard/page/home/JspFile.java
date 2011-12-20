package com.dianping.garden.dashboard.page.home;

public enum JspFile {
	HOME("/jsp/dashboard/home.jsp"),

	;

	private String m_path;

	private JspFile(String path) {
		m_path = path;
	}

	public String getPath() {
		return m_path;
	}
}
