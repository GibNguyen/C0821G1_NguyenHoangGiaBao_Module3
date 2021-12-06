package repository;

import model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {

    @Override
    public List<User> findAll() {
        List<User> userList=new ArrayList<>();
        try {
            Statement statement=BaseRepository.connection.createStatement();
            ResultSet resultSet= statement.executeQuery("select *\n" +
                                                            "from users");
            User user = null;
            while(resultSet.next()){
                user=new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));

                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public List<User> sortByName() {
        List<User> userList=new ArrayList<>();
        try {
            Statement statement=BaseRepository.connection.createStatement();
            ResultSet resultSet=statement.executeQuery("select *\n" +
                    "from users\n" +
                    "order by country");
            User user=null;
            while (resultSet.next()){
                user=new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public List<User> findByCountry(String str) {
        List<User> findList =new ArrayList<>();
        PreparedStatement preparedStatement= null;
        try {
            preparedStatement = BaseRepository.connection.prepareStatement("select *\n" +
                    "from users\n" +
                    "where country(?)");
            preparedStatement.setString(1,str);
            ResultSet resultSet=preparedStatement.executeQuery();
            User user=null;
            while (resultSet.next()){
                user=new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                findList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return findList;
    }
}
