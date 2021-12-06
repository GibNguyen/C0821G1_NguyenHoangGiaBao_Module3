package service;

import model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    List<User> sortByName();
    List<User> findByCountry(String str);
}
