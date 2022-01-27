import java.util.ArrayList;

public class CustomerService {
    public static ArrayList<Customer> getAllCustomer() {
        ArrayList<Customer> customers = new ArrayList<>();

        customers.add(new Customer("Lione Messi","1987","Argentina","https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR_BSXPlBjoBeJruSaCamv7kQuMNjoIIWX0CITXUVoapFCbRM9g"));
        customers.add(new Customer("Cristiano Ronaldo","1985","Por","https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg"));
        customers.add(new Customer("Neymar Jr","1992","Brazil","https://vnn-imgs-f.vgcloud.vn/2022/01/10/13/neymar-psg.jpg"));
        customers.add(new Customer("Kylian Mbappe","1998","France","https://vcdn-vnexpress.vnecdn.net/2021/07/19/mbappe-5x3-4884-1626687569.jpg"));
        customers.add(new Customer("Zlatan Ibrahimovic","1981","Thuy Dien","https://s.hs-data.com/bilder/spieler/gross/1274.jpg"));

        return customers;
    }
}
