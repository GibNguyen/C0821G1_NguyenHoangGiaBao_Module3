package model;

public class Employee extends Person{
    private double salary;
    private String positionId;
    private String educationDegreeId;
    private String divisionId;


    public Employee() {
    }

    public Employee(String id, String name, String birthDay, String identityCard, String phoneNumber, String email, String address, double salary, String positionId, String educationDegreeId, String divisionId) {
        super(id, name, birthDay, identityCard, phoneNumber, email, address);
        this.salary = salary;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;

    }


    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getPositionId() {
        return positionId;
    }

    public void setPositionId(String positionId) {
        this.positionId = positionId;
    }

    public String getEducationDegreeId() {
        return educationDegreeId;
    }

    public void setEducationDegreeId(String educationDegreeId) {
        this.educationDegreeId = educationDegreeId;
    }

    public String getDivisionId() {
        return divisionId;
    }

    public void setDivisionId(String divisionId) {
        this.divisionId = divisionId;
    }
}
