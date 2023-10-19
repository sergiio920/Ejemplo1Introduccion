//
//  ViewController.swift
//  Ejemplo1Introduccion
//
//  Created by Sergio Morón on 28/09/2023.
//

import UIKit
import Toast

class ViewController: UIViewController {
    
    
    @IBOutlet var lbResultado: UILabel!
    
    @IBOutlet var txtEmail: UITextField!
    
    var contador: UInt!
    
    var listaUsuarios: [Usuario]!
    
    @IBOutlet var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contador = 0
        listaUsuarios = []
    }


    @IBAction func contarClick(_ sender: Any) {
        contador += 1
        lbResultado.text = "\(String (contador)) veces"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let email:String = txtEmail.text!
        let password:String = txtPassword.text!
        
        let usuario:Usuario = Usuario(email: email, password: password)
        
        listaUsuarios.append(usuario)
        
        self.view.makeToast("EMAIL \(email), PASSWORD \(password)")
        self.view.makeToast("Z")
        
        if segue.identifier == "VER" {
            let destino = segue.destination as! MostrarDatosController
            destino.usuarioMostar = usuario
            
        }
    }
}

