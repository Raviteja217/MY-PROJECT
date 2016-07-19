package product;

public class Testproduct1 {
	public static void main(String[] args) {
		Product1 p1 =new Product1("product","motog3",13000);
		Product1 p2 =new Product1("product","motog4",14000);
		System.out.println(p1.getId());
		System.out.println(p1.getName());
		System.out.println(p1.getPrice());
		System.out.println(p2.getId());
		System.out.println(p2.getName());
		System.out.println(p2.getPrice());
		
	}

}
