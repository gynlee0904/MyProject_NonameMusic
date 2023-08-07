package free.model.vo;

import java.util.List;

public class PageData {
	private List<FreeBoard>bList;
	private String pageNavi;
	
	public PageData() {}

	
	public PageData(List<FreeBoard> bList, String pageNavi) {
		super();
		this.bList = bList;
		this.pageNavi = pageNavi;
	}


	public List<FreeBoard> getbList() {
		return bList;
	}

	public void setbList(List<FreeBoard> bList) {
		this.bList = bList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	@Override
	public String toString() {
		return "PageData [bList=" + bList + ", pageNavi=" + pageNavi + "]";
	}
	
	
	
	
}
