package repository;

import bean.Employee;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    List<Employee> employeeList;

    @Override
    public List<Employee> showListEmployee() {
        employeeList = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.connection.prepareStatement("select *\n" +
                    "from nhan_vien");
            ResultSet resultSet = statement.executeQuery();
            Employee employee = null;
            while (resultSet.next()) {
                employee = new Employee();
                employee.setEmployeeId(Integer.parseInt(resultSet.getString("ma_nhan_vien")));
                employee.setEmployeeName(resultSet.getString("ho_va_ten"));
                employee.setEmployeeBirthday(resultSet.getString("ngay_sinh"));
                employee.setEmployeeIdCard(resultSet.getString("so_cmnd"));
                employee.setEmployeeSalary(Double.parseDouble(resultSet.getString("luong")));
                employee.setEmployeePhone(resultSet.getString("so_dien_thoai"));
                employee.setEmployeeEmail(resultSet.getString("email"));
                employee.setEmployeeAdress(resultSet.getString("dia_chi"));
                employee.setPossitionId(Integer.parseInt(resultSet.getString("ma_vi_tri")));
                employee.setEducationDegreeId(Integer.parseInt(resultSet.getString("ma_trinh_do")));
                employee.setDivisionId(Integer.parseInt(resultSet.getString("ma_bo_phan")));
                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public void insertEmployee(Employee employee) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("insert into nhan_vien \n" +
                    "values(?,?,?,?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, employee.getEmployeeId());
            preparedStatement.setString(2, employee.getEmployeeName());
            preparedStatement.setString(3, employee.getEmployeeBirthday());
            preparedStatement.setString(4, employee.getEmployeeIdCard());
            preparedStatement.setDouble(5, employee.getEmployeeSalary());
            preparedStatement.setString(6, employee.getEmployeePhone());
            preparedStatement.setString(7, employee.getEmployeeEmail());
            preparedStatement.setString(8, employee.getEmployeeAdress());
            preparedStatement.setInt(9, employee.getPossitionId());
            preparedStatement.setInt(10, employee.getEducationDegreeId());
            preparedStatement.setInt(11, employee.getDivisionId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void deleteEmployee(Employee employee) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement(
                    " delete from nhan_vien\n" +
                            " where ma_nhan_vien=?");
            preparedStatement.setInt(1, employee.getEmployeeId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void updateEmployee(Employee employee) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement(
                    "update nhan_vien\n" +
                    "set ho_va_ten=?, ngay_sinh=?,so_cmnd=?,luong=?,so_dien_thoai=?,email=?,dia_chi=?,ma_vi_tri=?,ma_trinh_do=?,ma_bo_phan=?\n" +
                    "where ma_nhan_vien=?");
            preparedStatement.setString(1, employee.getEmployeeName());
            preparedStatement.setString(2, employee.getEmployeeBirthday());
            preparedStatement.setString(3, employee.getEmployeeIdCard());
            preparedStatement.setDouble(4, employee.getEmployeeSalary());
            preparedStatement.setString(5, employee.getEmployeePhone());
            preparedStatement.setString(6, employee.getEmployeeEmail());
            preparedStatement.setString(7, employee.getEmployeeAdress());
            preparedStatement.setInt(8, employee.getPossitionId());
            preparedStatement.setInt(9, employee.getEducationDegreeId());
            preparedStatement.setInt(10, employee.getDivisionId());
            preparedStatement.setInt(11, employee.getEmployeeId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
