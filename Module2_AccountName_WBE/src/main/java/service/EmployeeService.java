package service;

import bean.Employee;
import repository.EmployeeRepository;
import repository.IEmployeeRepository;

import java.util.List;

public class EmployeeService implements IEmployeeService {
   IEmployeeRepository employeeRepository=new EmployeeRepository();
    @Override
    public List<Employee> showListEmployee() {
        return employeeRepository.showListEmployee();
    }

    @Override
    public void insertEmployee(Employee employee) {
        employeeRepository.insertEmployee(employee);
    }

    @Override
    public void deleteEmployee(Employee employee) {
        employeeRepository.deleteEmployee(employee);
    }

    @Override
    public void updateEmployee(Employee employee) {
        employeeRepository.updateEmployee(employee);
    }
}
