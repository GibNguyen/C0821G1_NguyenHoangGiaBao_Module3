package service;

import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> loadListEmployee();

    void createNewEmployee(Employee employee);

    void editEmployee(Employee employee);

    void deleteEmployee(Employee employee);
}
