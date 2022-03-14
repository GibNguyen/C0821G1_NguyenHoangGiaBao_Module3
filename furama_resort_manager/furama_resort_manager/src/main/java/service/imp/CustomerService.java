package service.imp;

import model.Customer;
import repository.ICustomerRepository;
import repository.imp.CustomerRepository;
import service.ICustomerService;

import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> loadListCustomer() {
        List<Customer> customerList;
        customerList = customerRepository.loadListCustomer();
        return customerList;
    }

    @Override
    public void createNewCustomer(Customer customer) {
        customerRepository.createNewCustomer(customer);
    }

    @Override
    public void editCustomer(Customer customer) {
        customerRepository.editCustomer(customer);
    }

    @Override
    public void deleteCustomer(Customer customer) {
        customerRepository.deleteCustomer(customer);
    }
}
