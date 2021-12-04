package service;

import model.User;
import repository.IUserRepository;
import repository.UserRepository;

import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository=new UserRepository();
    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public List<User> sortByName() {
        return userRepository.sortByName();
    }
}
