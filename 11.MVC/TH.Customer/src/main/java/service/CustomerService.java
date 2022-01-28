package service;

import model.Customer;

import java.util.ArrayList;

public class CustomerService {
    private final static ArrayList<Customer> customers;
    private final static ArrayList<String> adds;

    static {
        customers = new ArrayList<>();
        customers.add(new Customer(1, "Nguyen Duy Tien", "tientien123@gmail.com", "BN"));
        customers.add(new Customer(2, "Duong Van Trung", "trungtrung123@gmail.com", "BN"));
        customers.add(new Customer(3, "Tran Tan Huan ", "huanhuan123@gmail.com", "HD"));
        customers.add(new Customer(4, "Le Van Hung", "hunghung123@gmail.com", "HD"));
        adds = new ArrayList<>();
        adds.add("BN");
        adds.add("HD");
        adds.add("HN");
    }

    public ArrayList<String> getAdds() {
        return adds;
    }

    public ArrayList<Customer> getCustomers() {
        return customers;
    }

    public Customer getCustomer(int id) {
        for (Customer c :
                customers) {
            if (c.getId() == id) {
                return c;
            }
        }
        return null;
    }

    public void createCus(Customer customer) {
        customers.add(customer);
    }

    public void editCus(int id, Customer customer) {
        customers.set(id, customer);
    }

    public void deleteCus(Customer customer) {
        customers.remove(customer);
    }
}
