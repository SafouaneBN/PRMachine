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
public class Marque {
    private int id;
    private String code;
    private String libelle;

    public Marque(int id, String code, String libelle) {
            super();
            this.id = id;
            this.code = code;
            this.libelle = libelle;
    }

    public Marque(String code, String libelle) {
            super();
            this.code = code;
            this.libelle = libelle;
    }

    public int getId() {
            return id;
    }

    public void setId(int id) {
            this.id = id;
    }

    public String getCode() {
            return code;
    }

    public void setCode(String code) {
            this.code = code;
    }

    public String getLibelle() {
            return libelle;
    }

    public void setLibelle(String libelle) {
            this.libelle = libelle;
    }

    @Override
    public String toString() {
            return "libelle " + libelle ;
    }
}
