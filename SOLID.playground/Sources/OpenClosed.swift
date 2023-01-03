import Foundation

//Kodlar gelişebilir ama var olan kod değiştirilemez.

protocol PaymentManagerWRONGPRINCIPLES {
    func makeVisaPayment(_ amount: Double)
    func makeMastercard (_ amount: Double)
    func makeGooglePlayPayment(_ amount: Double)
}

//Bu şekilde kullanmak yanlış


protocol PaymentManager {
    func payAmount(_ amount: Double, method: PaymentMethod)
}

protocol PaymentMethod {
    func payAmount(_ amount: Double)
}

class VisaPaymentAmount: PaymentMethod {
    func payAmount(_ amount: Double) {
        print("Paid with Visa")
    }
}

class MasterCardPaymentMethod: PaymentMethod {
    func payAmount(_ amount: Double) {
        print("Paid with MasterCard")
    }
}

class GooglePlayPaymentMethod: PaymentMethod {
    func payAmount(_ amount: Double) {
        print("Paid with Google Play")
    }
}
