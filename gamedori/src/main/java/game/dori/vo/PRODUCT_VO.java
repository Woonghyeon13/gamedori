package game.dori.vo;

/* ��ǰ ���̺�	*/

public class PRODUCT_VO {

	private int prod_idx;				// 상품 인덱스
	private int category_tb_code;		// 카테고리 코드 (품번)
	private String prod_name;			// 상품 명
	private int prod_proce;				// 상품 가격
	private String prod_detail;			// 상품 설명
	private int prod_stock;				// 재고 량
	private String prod_wdate;			// 등록 일
	private int prod_hit;				// 조회 수
	private int prod_sales;				// 판매 량
	private String prod_co;				// 제조사
	private String prod_opt;			// 제품 옵션
	private String prod_rdate;			// 출시 일
	private int prod_rating;			// 성인 등급 여부	 [ 1: 일반 / 2 : 성인등급 ]
	private int prod_reserv;			// 예약 판매 여부
	
	public int getProd_reserv() {
		return prod_reserv;
	}
	public void setProd_reserv(int prod_reserv) {
		this.prod_reserv = prod_reserv;
	}
	public int getProd_idx() {
		return prod_idx;
	}
	public void setProd_idx(int prod_idx) {
		this.prod_idx = prod_idx;
	}
	public int getCategory_tb_code() {
		return category_tb_code;
	}
	public void setCategory_tb_code(int category_tb_code) {
		this.category_tb_code = category_tb_code;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public int getProd_proce() {
		return prod_proce;
	}
	public void setProd_proce(int prod_proce) {
		this.prod_proce = prod_proce;
	}
	public String getProd_detail() {
		return prod_detail;
	}
	public void setProd_detail(String prod_detail) {
		this.prod_detail = prod_detail;
	}
	public int getProd_stock() {
		return prod_stock;
	}
	public void setProd_stock(int prod_stock) {
		this.prod_stock = prod_stock;
	}
	public String getProd_wdate() {
		return prod_wdate;
	}
	public void setProd_wdate(String prod_wdate) {
		this.prod_wdate = prod_wdate;
	}
	public int getProd_hit() {
		return prod_hit;
	}
	public void setProd_hit(int prod_hit) {
		this.prod_hit = prod_hit;
	}
	public int getProd_sales() {
		return prod_sales;
	}
	public void setProd_sales(int prod_sales) {
		this.prod_sales = prod_sales;
	}
	public String getProd_co() {
		return prod_co;
	}
	public void setProd_co(String prod_co) {
		this.prod_co = prod_co;
	}
	public String getProd_opt() {
		return prod_opt;
	}
	public void setProd_opt(String prod_opt) {
		this.prod_opt = prod_opt;
	}
	public String getProd_rdate() {
		return prod_rdate;
	}
	public void setProd_rdate(String prod_rdate) {
		this.prod_rdate = prod_rdate;
	}
	public int getProd_rating() {
		return prod_rating;
	}
	public void setProd_rating(int prod_rating) {
		this.prod_rating = prod_rating;
	}
	
	
	
}
