package service;

import bean.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> showListEmployee();
    public void insertEmployee(Employee employee);
    public void deleteEmployee(Employee employee);
    public void updateEmployee(Employee employee);
}
