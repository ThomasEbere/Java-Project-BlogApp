package apps;

import java.sql.Blob;
import java.util.Date;

public class BlogClass {
	
	

	private int blogid;
	private int bloguuid;
	private String blogTitle;
	private String blogArthur;
	private String blogContent;
	private int blogLikeCount;
	private String blogComments;
	private Date blogDate;

	public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int bloguid) {
		this.blogid = bloguid;
	}
	public int getBloguuid() {
		return bloguuid;
	}
	public void setBloguuid(int bloguuid) {
		this.bloguuid = bloguuid;
	}
	public String getBlogTitle() {
		return blogTitle;
	}
	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public String getBlogArthur() {
		return blogArthur;
	}
	public void setBlogArthur(String blogArthur) {
		this.blogArthur = blogArthur;
	}
	public String getBlogContent() {
		return blogContent;
	}
	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}
	public int getBlogLikeCount() {
		return blogLikeCount;
	}
	public void setBlogLikeCount(int blogLikeCount) {
		this.blogLikeCount = blogLikeCount;
	}
	public String getBlogComments() {
		return blogComments;
	}
	public void setBlogComments(String blogComments) {
		this.blogComments = blogComments;
	}
	public Date getBlogDate() {
		return blogDate;
	}
	public void setBlogDate(Date blogDate) {
		this.blogDate = blogDate;
	}
	

}
