package com.koreait.mooda.comment;

public class CommentSearch {
	private String searchKey;
	private String searchValue;
	
	
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	
	
	@Override
	public String toString() {
		return "Comment [searchKey=" + searchKey + ", searchValue=" + searchValue + "]";
	}

	
}
