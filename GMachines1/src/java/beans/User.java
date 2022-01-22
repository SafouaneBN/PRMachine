/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author safoi
 */
public class User {
    private int id;
    private String nom;
    private String prenom;
    private String username;
    private String pass;
    
    private int res;

    public User(String nom, String prenom, String username, String pass) {
        this.nom = nom;
        this.prenom = prenom;
        this.username = username;
        this.pass = pass;
        
    }

    public User(int id, String nom, String prenom, String username, String pass) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.username = username;
        this.pass = pass;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    

    

    public int getRes() {
        return res;
    }

    public void setRes(int res) {
        this.res = res;
    }
    
    

    @Override
    public String toString() {
        return "User{" + "username=" + username + '}';
    }
    
    
}
