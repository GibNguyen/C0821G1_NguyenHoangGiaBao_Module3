package repository;

import model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> loadListCustomer();

    void createNewCustomer(Customer customer);

    void editCustomer(Customer customer);

    void deleteCustomer(Customer customer);
}
