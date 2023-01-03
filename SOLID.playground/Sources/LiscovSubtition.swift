import Foundation

//İlk olarak bu yazılma şekli yanlış. Çünkü pluto bir cüce gezegen ve etrafını temizleyemiyor.

class Planet {
    func orbitAroundSun() {
        
    }
}

class Earth: Planet {
    func description() {
        print("It is Earth!")
    }
}

// Çözüm için buraya Pluto için bir üst class oluşturucam ve temizleyemiyor yazdırıcam.

class DwarfPlanet: Planet {
    func notClearedNeighborhood() {
        
    }
}

// Artık Pluto Dwarf'dan türüyor.

class Pluto: DwarfPlanet {
    func description() {
        print("It is Pluto!")
    }
}

class Sender {
    func senderOrigin(planet: Planet) {
        planet.orbitAroundSun()
    }
}
