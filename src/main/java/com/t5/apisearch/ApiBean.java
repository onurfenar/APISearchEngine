package com.t5.apisearch;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped

public class ApiBean {
	
	private String keyword;
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public void submit() {
		System.out.println("ApiBean Keyword IS:"+this.getKeyword());
		dataModel = new ApiLazyDataModel(this.getKeyword());	
	}

	ApiLazyDataModel dataModel = new ApiLazyDataModel(this.getKeyword());
	
	public ApiLazyDataModel getModel(){
    	return dataModel;
    }
	
}