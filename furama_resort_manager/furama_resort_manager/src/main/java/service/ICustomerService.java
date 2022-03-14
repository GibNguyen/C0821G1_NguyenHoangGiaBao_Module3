package service;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> loadListCustomer();

    void createNewCustomer(Customer customer);

    void editCustomer(Customer customer);

    void deleteCustomer(Customer customer);
}
