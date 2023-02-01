import Foundation

class Humano {
  var altura: Double
  var peso: Double
  var genero: String
  
  init(altura: Double, peso: Double, genero: String) {
    self.altura = altura
    self.peso = peso
    self.genero = genero
  }
  
  func calcularIMC() -> String {
    let conta = peso / (altura * altura)
    switch genero {
      case "Masculino":
        switch conta {
          case 17.9...18.9:
            return "Magreza"
          case 19...24.9:
            return "Peso Ideal"
          case 25...27.7:
            return "Acima do Peso"
          case 27.8...29.8:
            return "Obesidade"
          default:
            return "Obesidade Extrema"
        }
      case "Feminino":
        switch conta {
          case 15...17.9:
            return "Magreza"
          case 18...24.4:
            return "Peso Ideal"
          case 24.5...27.2:
            return "Acima do Peso"
          case 27.3...29.3:
            return "Obesidade"
          default:
            return "Obesidade Extrema"
        }
      default:
        return "Desconhecido"
    }
  }
}
