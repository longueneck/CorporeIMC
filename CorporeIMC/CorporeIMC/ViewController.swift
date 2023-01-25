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
    
    var humano: Humano?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        if SelectGender.selectedSegmentIndex == 0{
            humano = Humano(gender: "M", peso: Double(tfPeso.text!)!, altura: Double(tfAltura.text!)!)
            lbResultado.text = humano?.calculateMale()
        }else{
            humano = Humano(gender: "F", peso: Double(tfPeso.text!)!, altura: Double(tfAltura.text!)!)
            lbResultado.text = humano?.calculateFemale()
            
        }
    }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            
        }
        
        
    
}
