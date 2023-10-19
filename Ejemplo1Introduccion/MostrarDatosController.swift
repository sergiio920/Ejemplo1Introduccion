//
//  MostrarDatosController.swift
//  Ejemplo1Introduccion
//
//  Created by Sergio Morón on 19/10/2023.
//

import UIKit

class MostrarDatosController: UIViewController {

    @IBOutlet var lbEmail: UILabel!
    @IBOutlet var lbPassword: UILabel!
    
    var usuarioMostar: Usuario!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbEmail.text = usuarioMostar.email
        lbPassword.text = usuarioMostar.password
    }
}
