package repository.imp;

import model.Customer;
import repository.ICustomerRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    @Override
    public List<Customer> loadListCustomer() {
        List<Customer> customerList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("select * from khach_hang");
            ResultSet resultSet = preparedStatement.executeQuery();

            Customer customer = null;
            while (resultSet.next()){
                customer = new Customer();
                customer.setId(resultSet.getString("ma_khach_hang"));
                customer.setName(resultSet.getString("ho_ten"));
                customer.setBirthDay(resultSet.getString("ngay_sinh"));
                customer.setGender(Integer.parseInt(resultSet.getString("gioi_tinh")));
                customer.setIdentityCard(resultSet.getString("so_cmnd"));
                customer.setPhoneNumber(resultSet.getString("so_dien_thoai"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("dia_chi"));
                customer.setTypeId(resultSet.getString("ma_loai_khach"));

                customerList.add(customer);
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void createNewCustomer(Customer customer) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("insert into khach_hang value (?,?,?,?,?, ?,?,?,?)");
            preparedStatement.setString(1,customer.getId());
            preparedStatement.setString(2,customer.getTypeId());
            preparedStatement.setString(3,customer.getName());
            preparedStatement.setString(4,customer.getBirthDay());
            if (customer.getGender()==1){
                preparedStatement.setBoolean(5,true);
            }else{
                preparedStatement.setBoolean(5,false);
            }

            preparedStatement.setString(6, customer.getIdentityCard());
            preparedStatement.setString(7, customer.getPhoneNumber());
            preparedStatement.setString(8, customer.getEmail());
            preparedStatement.setString(9, customer.getAddress());

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void editCustomer(Customer customer) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("update khach_hang set ma_loai_khach = ?, ho_ten=?,ngay_sinh=?,gioi_tinh=?,so_cmnd=?,so_dien_thoai=?,email=?,dia_chi=? where ma_khach_hang = ?");

            preparedStatement.setString(1,customer.getTypeId());
            preparedStatement.setString(2,customer.getName());
            preparedStatement.setString(3,customer.getBirthDay());
            if (customer.getGender()==1){
                preparedStatement.setBoolean(4,true);
            }else{
                preparedStatement.setBoolean(4,false);
            }

            preparedStatement.setString(5, customer.getIdentityCard());
            preparedStatement.setString(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setString(9,customer.getId());

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteCustomer(Customer customer) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("delete from khach_hang where ma_khach_hang=?");
            preparedStatement.setString(1,customer.getId());

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
