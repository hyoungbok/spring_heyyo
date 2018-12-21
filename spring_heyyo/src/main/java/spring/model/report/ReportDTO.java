package spring.model.report;

public class ReportDTO {
	private int reportnum;
	private String report_content;
	private int reviewnum;
	private String m_id;
	private String review_content;
	private String review_image;
	
	public int getReportnum() {
		return reportnum;
	}
	public void setReportnum(int reportnum) {
		this.reportnum = reportnum;
	}
	public String getReport_content() {
		return report_content;
	}
	public void setReport_content(String report_content) {
		this.report_content = report_content;
	}
	public int getReviewnum() {
		return reviewnum;
	}
	public void setReviewnum(int reviewnum) {
		this.reviewnum = reviewnum;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
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
	
	
	
}
