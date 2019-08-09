//
//  ViewController.swift
//  Practica 1
//
//  Created by Tonny Gammer on 07/08/19.
//  Copyright © 2019 Tonny Gammer. All rights reserved.
//

import UIKit
//unos comentarios
// comentarios

class ViewController: UIViewController {

    @IBOutlet weak var lblTotalConPropina: UILabel!
    @IBOutlet weak var lblCantidadPropina: UILabel!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    @IBOutlet weak var txtTotalSinPropina: UITextField!
    
    
    @IBAction func doChangeValores(_ sender: Any) {
        
        var porcentajePropina = 0.0
        porcentajePropina = Double(sldPorcentajePropina.value)
        porcentajePropina.round()
        lblPorcentajePropina.text = "\(porcentajePropina)%"
        porcentajePropina = porcentajePropina / 100.0
        
        
        
        var cantidadPropina = 0.0
        cantidadPropina = Double(txtTotalSinPropina.text!)! * porcentajePropina
        
        lblCantidadPropina.text = "$\(cantidadPropina)"
        
        let totalConPropina = Double(txtTotalSinPropina.text!)! + cantidadPropina
        lblTotalConPropina.text = "$\(totalConPropina)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

