/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.User;

/**
 *
 * @author aditya
 */
public interface UserDeclaration {
    public int insertUser(User u);
    public int updateUser(int id, User u);
    public boolean deleteUser (int id);
    public User selectUser(int id);
    public User insertUsers(User u);
    
}
