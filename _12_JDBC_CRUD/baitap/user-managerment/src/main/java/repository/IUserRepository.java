package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> findAll();
    List<User> sortByName();
    List<User> findByCountry(String str);
}
