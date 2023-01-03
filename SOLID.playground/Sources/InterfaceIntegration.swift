import Foundation

//Yanlış Durum

protocol InterPlanetCommunication {
    func switchOnAntenna()
    func setAntennaAngle()
    func transmitMessage()
    func receivedMessage()
    func displayMessageOnUI()
}

//Doğrusu şöyledir. Mesela Bu Interface içerisinde kullanılan fonksiyonların sadece bir tanesine ihtiyacımız düşüyor ama bir yerde çağırırken hepsini çağırmak zorunda kalıyoruz. Bu yüzden ayrıştırma gerekmektedir.

protocol Antenna {
    func switchOnAntenna()
    func setAntennaAngle()
}

protocol Message {
    func transmitMessage()
    func receivedMessage()
}

protocol Display {
    func displayMessageOnUI()
}
