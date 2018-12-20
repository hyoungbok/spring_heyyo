package spring.model.order;

public class OrdersDTO {
	
	private int order_num;
	private int o_pay;
	private int o_mileage;
	private String o_req;
	private	String o_address;
	private String m_id;
	private String r_code;
	private int m_mileage;
	private String m_grade;
	private String f_name;
    private int f_price;
    private int o_amount;
    private String food_code;
    private String foodcode;
	
	
	
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public int getF_price() {
		return f_price;
	}
	public void setF_price(int f_price) {
		this.f_price = f_price;
	}
	public int getO_amount() {
		return o_amount;
	}
	public void setO_amount(int o_amount) {
		this.o_amount = o_amount;
	}
	public String getFood_code() {
		return food_code;
	}
	public void setFood_code(String food_code) {
		this.food_code = food_code;
	}
	public String getFoodcode() {
		return foodcode;
	}
	public void setFoodcode(String foodcode) {
		this.foodcode = foodcode;
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
	public int getM_mileage() {
		return m_mileage;
	}
	public void setM_mileage(int m_mileage) {
		this.m_mileage = m_mileage;
	}
	public String getM_grade() {
		return m_grade;
	}
	public void setM_grade(String m_grade) {
		this.m_grade = m_grade;
	}
}
