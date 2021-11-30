package services;

public interface ICalculatorDiscount {
    public float calcuDiscountAmount(float price,float discountPercent);
    public float calcuDiscountPrice(float price,float discountAmount);
}
