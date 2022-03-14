package model;

public class Room extends Service{
    private String attachService;

    public Room() {
    }

    public Room(String serviceId, String serviceName, double usableArea, double rentPrice, int maxOfPeople, String typeOfRent, String attachService) {
        super(serviceId, serviceName, usableArea, rentPrice, maxOfPeople, typeOfRent);
        this.attachService = attachService;
    }

    public String getAttachService() {
        return attachService;
    }

    public void setAttachService(String attachService) {
        this.attachService = attachService;
    }
}
