package repository.imp;

import model.Employee;
import repository.IEmployeeRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    @Override
    public List<Employee> loadListEmployee() {
        List<Employee> employeeList = new ArrayList<>();

        try {
            PreparedStatement preparedStatement =BaseRepository.connection.prepareStatement("select * from nhan_vien");
            ResultSet resultSet = preparedStatement.executeQuery();

            Employee employee = null;

            while (resultSet.next()){
                employee = new Employee();
                employee.setId(resultSet.getString("ma_nhan_vien"));
                employee.setName(resultSet.getString("ho_va_ten"));
                employee.setBirthDay(resultSet.getString("ngay_sinh"));
                employee.setIdentityCard(resultSet.getString("so_cmnd"));
                employee.setPhoneNumber(resultSet.getString("so_dien_thoai"));
                employee.setEmail(resultSet.getString("email"));
                employee.setAddress(resultSet.getString("dia_chi"));
                employee.setSalary(Double.parseDouble(resultSet.getString("luong")));
                employee.setPositionId(resultSet.getString("ma_vi_tri"));
                employee.setEducationDegreeId(resultSet.getString("ma_trinh_do"));
                employee.setDivisionId(resultSet.getString("ma_bo_phan"));

                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public void createNewEmployee(Employee employee) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("insert into nhan_vien value (?,?,?, ?,?,?,?, ?,?,?,?)");
            preparedStatement.setString(1,employee.getId());
            preparedStatement.setString(2,employee.getName());
            preparedStatement.setString(3,employee.getBirthDay());
            preparedStatement.setString(4,employee.getIdentityCard());
            preparedStatement.setString(5, String.valueOf(employee.getSalary()));
            preparedStatement.setString(6,employee.getPhoneNumber());
            preparedStatement.setString(7,employee.getEmail());
            preparedStatement.setString(8,employee.getAddress());
            preparedStatement.setString(9,employee.getPositionId());
            preparedStatement.setString(10,employee.getEducationDegreeId());
            preparedStatement.setString(11,employee.getDivisionId());

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void editEmployee(Employee employee) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("update nhan_vien set ho_va_ten = ?, ngay_sinh=?,so_cmnd=?,luong=?,so_dien_thoai =?,email=?,dia_chi=?,ma_vi_tri=?,ma_trinh_do=?,ma_bo_phan=? where ma_nhan_vien = ?");

            preparedStatement.setString(1,employee.getName());
            preparedStatement.setString(2,employee.getBirthDay());
            preparedStatement.setString(3,employee.getIdentityCard());
            preparedStatement.setString(4, String.valueOf(employee.getSalary()));
            preparedStatement.setString(5,employee.getPhoneNumber());
            preparedStatement.setString(6,employee.getEmail());
            preparedStatement.setString(7,employee.getAddress());
            preparedStatement.setString(8,employee.getPositionId());
            preparedStatement.setString(9,employee.getEducationDegreeId());
            preparedStatement.setString(10,employee.getDivisionId());
            preparedStatement.setString(11,employee.getId());

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteEmployee(Employee employee) {
        try {
            PreparedStatement preparedStatement=BaseRepository.connection.prepareStatement("delete from nhan_vien where ma_nhan_vien=?");
            preparedStatement.setString(1,employee.getId());
            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
