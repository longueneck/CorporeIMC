//
//  humano.swift
//  CorporeIMC
//
//  Created by Kevin Longue on 25/01/23.
//

import Foundation

class Humano {
    
    var gender: Character
    var peso : Double
    var altura : Double
    
    init(gender: Character, peso: Double, altura: Double){
        self.gender = gender
        self.peso = peso
        self.altura = altura
    }
    
    func calculateMale() -> String{
        var resultadoMale: String?
        if gender == "M"{
            altura *= altura
            var contaMale = peso / altura
            
            switch contaMale {
            case 17.9...18.9:
                print("Magresa");
                resultadoMale = "Magresa"
            case 19...24.9:
                print("Peso Ideal");
                resultadoMale = "Peso Ideal"
            case 25...27.7:
                print("Acima do Peso");
                resultadoMale = "Acima do Peso"
            case 27.8...29.8:
                print("Obesidade");
                resultadoMale = "Obesidade"
            default:
                print("Obesidade Extrema");
                resultadoMale = "Obesidade Extrema"
                
            }
        }
        return resultadoMale!
    }
    func calculateFemale() -> String{
        var resultadoFemale: String?
        if gender == "F"{
            altura *= altura
            var contaFemale = peso / altura
            
            switch contaFemale {
                case 15...17.9:
                    print("Magresa");
                case 18...24.4:
                    print("Peso Ideal");
                case 24.5...27.2:
                    print("Acima do Peso");
                case 27.3...29.3:
                    print("Obesidade");
                default:
                    print("Obesidade Extrema");
                
            }
        }
        return resultadoFemale!
    }
}
