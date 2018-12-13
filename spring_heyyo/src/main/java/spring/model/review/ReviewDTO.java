package spring.model.review;

import org.springframework.web.multipart.MultipartFile;

public class ReviewDTO {
	
	private int reviewnum;
	private float review_point;
	private String review_content;
	private String review_image;
	private MultipartFile review_imageMF;
	private String f_name;
	private String review_date;
	private int order_num;
	private String m_id;
	private String r_code;
	
	public int getReviewnum() {
		return reviewnum;
	}
	public void setReviewnum(int reviewnum) {
		this.reviewnum = reviewnum;
	}
	public double getReview_point() {
		return review_point;
	}
	public void setReview_point(float review_point) {
		this.review_point = review_point;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_image() {
		return review_image;
	}
	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}

	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getR_code() {
		return r_code;
	}
	public void setR_code(String r_code) {
		this.r_code = r_code;
	}
	public MultipartFile getReview_imageMF() {
		return review_imageMF;
	}
	public void setReview_imageMF(MultipartFile review_imageMF) {
		this.review_imageMF = review_imageMF;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	
	
	
}
