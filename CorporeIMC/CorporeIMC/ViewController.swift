//
//  ViewController.swift
//  CorporeIMC
//
//  Created by Kevin Longue on 25/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfAltura: UITextField!
    
    @IBOutlet weak var tfPeso: UITextField!
    
    @IBOutlet weak var lbResultado: UILabel!
    
    @IBOutlet weak var SelectGender: UISegmentedControl!
    
    @IBOutlet weak var images: UIImageView!
    var humano: Humano?
    
    override func viewDidLoad() {
        let selectedTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(red: 67/255, green: 150/255, blue: 213/255, alpha: 1.0) ]
        let normalTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        SelectGender.setTitleTextAttributes(selectedTitleTextAttributes, for: .selected)
        SelectGender.setTitleTextAttributes(normalTitleTextAttributes, for: .normal)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        if SelectGender.selectedSegmentIndex == 0{
            lbResultado.text = showResultMale()
        }else{
            lbResultado.text = showResultFemale()
            
        }
    }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            
        }
        
    func showResultMale() -> String{
        var resultadoMale: String = ""
        if let altura = Double(tfAltura.text!), let peso = Double(tfPeso.text!) {
            let contaMale = peso / (altura * altura)
            
            switch contaMale {
            case 17.9...18.9:
                resultadoMale = "Magresa"
                images.image = UIImage(named: "magreza")
            case 19...24.9:
                resultadoMale = "Peso Ideal"
                images.image = UIImage(named: "ideal")
            case 25...27.7:
                resultadoMale = "Acima do Peso"
                images.image = UIImage(named: "sobre")
            case 27.8...29.8:
                resultadoMale = "Obesidade"
                images.image = UIImage(named: "obesidade")
            default:
                resultadoMale = "Obesidade Extrema"
                images.image = UIImage(named: "obesidade")
                
            }
        }
        return resultadoMale
    }
    func showResultFemale() -> String{
        var resultadoFemale: String = ""
        if let altura = Double(tfAltura.text!), let peso = Double(tfPeso.text!) {
            let contaFemale = peso / (altura * altura)
            
            switch contaFemale {
            case 15...17.9:
                resultadoFemale = "Magresa"
                images.image = UIImage(named: "magreza")
            case 18...24.4:
                resultadoFemale = "Peso Ideal"
                images.image = UIImage(named: "ideal")
            case 24.5...27.2:
                resultadoFemale = "Acima do Peso"
                images.image = UIImage(named: "sobre")
            case 27.3...29.3:
                resultadoFemale = "Obesidade"
                images.image = UIImage(named: "obesidade")
            default:
                resultadoFemale = "Obesidade Extrema"
                images.image = UIImage(named: "obesidade")
                
            }
        }
        return resultadoFemale
    }
}
