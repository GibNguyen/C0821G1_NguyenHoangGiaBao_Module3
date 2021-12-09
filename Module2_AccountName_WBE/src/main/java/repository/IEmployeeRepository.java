package repository;

import bean.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> showListEmployee();
    public void insertEmployee(Employee employee);
    public void deleteEmployee(Employee employee);
    public void updateEmployee(Employee employee);
}
