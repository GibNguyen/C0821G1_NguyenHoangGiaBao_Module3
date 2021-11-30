package services;

public class CalculatorDiscount implements ICalculatorDiscount {
    @Override
    public float calcuDiscountAmount(float price, float discountPercent) {
        float discountAmount=(price*discountPercent)/100;
        return discountAmount;
    }

    @Override
    public float calcuDiscountPrice(float price, float discountAmount) {
        float discountPrice=price-discountAmount;
        return discountPrice;
    }
}
