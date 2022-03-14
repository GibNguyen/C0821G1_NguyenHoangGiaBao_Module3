package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepository {

    List<Employee> loadListEmployee();

    void createNewEmployee(Employee employee);

    void editEmployee(Employee employee);

    void deleteEmployee(Employee employee);
}
