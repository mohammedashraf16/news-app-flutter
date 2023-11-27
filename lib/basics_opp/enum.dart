enum OrderStatus{ requested ,accepted , refused }
enum PaymentMethods{paypal , cash , visa , mastercard  }
class Payment{
  PaymentMethods paymentMethods;

  Payment(this.paymentMethods);

  void setPaymentMethod({required PaymentMethods paymentMethods}){
    this.paymentMethods = paymentMethods;
  }
  void printPaymentMethod(){
    print(paymentMethods);
    print(paymentMethods.name);
    print(paymentMethods.index);
  }

}
void main(){
  Payment payment = Payment(PaymentMethods.mastercard);
  payment.printPaymentMethod();

  payment.setPaymentMethod(paymentMethods: PaymentMethods.visa);
  payment.printPaymentMethod();

}