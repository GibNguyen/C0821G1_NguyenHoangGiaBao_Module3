package model;

public class Customer extends Person{

    private int gender;
    private String typeId;


    public Customer() {
    }

    public Customer(String id, String name, String birthDay, String identityCard, String phoneNumber, String email, String address, int gender, String typeId) {
        super(id, name, birthDay, identityCard, phoneNumber, email, address);
        this.typeId = typeId;
        this.gender = gender;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }
}
