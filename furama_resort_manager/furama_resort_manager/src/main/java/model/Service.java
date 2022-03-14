package model;

public abstract class Service {
    private String serviceId;
    private String serviceName;
    private double usableArea;
    private double rentPrice;
    private int maxOfPeople;
    private String typeOfRent;

    public Service() {
    }

    public Service(String serviceId, String serviceName, double usableArea, double rentPrice, int maxOfPeople, String typeOfRent) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.usableArea = usableArea;
        this.rentPrice = rentPrice;
        this.maxOfPeople = maxOfPeople;
        this.typeOfRent = typeOfRent;
    }

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public double getUsableArea() {
        return usableArea;
    }

    public void setUsableArea(double usableArea) {
        this.usableArea = usableArea;
    }

    public double getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(double rentPrice) {
        this.rentPrice = rentPrice;
    }

    public int getMaxOfPeople() {
        return maxOfPeople;
    }

    public void setMaxOfPeople(int maxOfPeople) {
        this.maxOfPeople = maxOfPeople;
    }

    public String getTypeOfRent() {
        return typeOfRent;
    }

    public void setTypeOfRent(String typeOfRent) {
        this.typeOfRent = typeOfRent;
    }
}
