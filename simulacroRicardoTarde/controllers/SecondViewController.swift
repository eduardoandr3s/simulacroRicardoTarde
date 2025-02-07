//
//  SecondViewController.swift
//  simulacroRicardoTarde
//
//  Created by Eduardo Segovia on 05/02/2025.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var lblSeleccionado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnVotar(_ sender: Any) {
        let votante = txtNombre.text!;
        let personaje = lblSeleccionado.text!;
        let voto = Voto(nombreVotante: votante, personajeVotado: personaje);
    }
    @IBAction func btnArya(_ sender: Any) {
    }
    @IBAction func btnCersei(_ sender: Any) {
    }
    @IBAction func btnDaenerys(_ sender: Any) {
    }
    @IBAction func btnJohn(_ sender: Any) {
    }
    
}
