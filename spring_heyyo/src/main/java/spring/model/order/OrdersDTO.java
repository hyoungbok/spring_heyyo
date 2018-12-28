package spring.model.order;

public class OrdersDTO {
	
	private int order_num;
	private int o_pay;
	private int o_mileage;
	private String o_req;
	private	String o_address;
	private String m_id;
	private String r_code;
	private String o_date;
	private String o_detailcode;
	private String foodcode;
	private int o_amount;
   
  
	public String getO_detailcode() {
		return o_detailcode;
	}
	public void setO_detailcode(String o_detailcode) {
		this.o_detailcode = o_detailcode;
	}
	public String getFoodcode() {
		return foodcode;
	}
	public void setFoodcode(String foodcode) {
		this.foodcode = foodcode;
	}
	public int getO_amount() {
		return o_amount;
	}
	public void setO_amount(int o_amount) {
		this.o_amount = o_amount;
	}
	public int getM_phone() {
		return m_phone;
	}
	public void setM_phone(int m_phone) {
		this.m_phone = m_phone;
	}
	private int m_phone;
	
	
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public int getO_pay() {
		return o_pay;
	}
	public void setO_pay(int o_pay) {
		this.o_pay = o_pay;
	}
	public int getO_mileage() {
		return o_mileage;
	}
	public void setO_mileage(int o_mileage) {
		this.o_mileage = o_mileage;
	}
	public String getO_req() {
		return o_req;
	}
	public void setO_req(String o_req) {
		this.o_req = o_req;
	}
	public String getO_address() {
		return o_address;
	}
	public void setO_address(String o_address) {
		this.o_address = o_address;
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
	
}
