package service.imp;

import model.Employee;
import repository.IEmployeeRepository;
import repository.imp.EmployeeRepository;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    IEmployeeRepository employeeRepository = new EmployeeRepository();


    @Override
    public List<Employee> loadListEmployee() {
        List<Employee> employeeList = employeeRepository.loadListEmployee();

        return employeeList;
    }

    @Override
    public void createNewEmployee(Employee employee) {
        employeeRepository.createNewEmployee(employee);
    }

    @Override
    public void editEmployee(Employee employee) {
        employeeRepository.editEmployee(employee);
    }

    @Override
    public void deleteEmployee(Employee employee) {
        employeeRepository.deleteEmployee(employee);
    }
}
