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
    
    var delegate:ViewController?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    func alertError(titulo: String, mensaje: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnVotar(_ sender: Any) {
        let votante = txtNombre.text!;
        let personaje = lblSeleccionado.text!;
        if (votante == "" || personaje == "") {
            alertError(titulo: "ERROR", mensaje: "Debes escribir algo en ambos campos!!")
        }else{
            let voto = Voto(nombreVotante: votante, personajeVotado: personaje);
            
            delegate?.obtener(dato: voto);
            navigationController?.popToRootViewController(animated: true)
        }
        
        
        
       
    }
    @IBAction func btnArya(_ sender: Any) {
        lblSeleccionado.text = "ARYA";
    
    
    }
    
    @IBAction func btnCersei(_ sender: Any) {
        lblSeleccionado.text = "CERSEI";
    }
    @IBAction func btnDaenerys(_ sender: Any) {
        
        lblSeleccionado.text = "DAENERYS";
    }
    @IBAction func btnJohn(_ sender: Any) {
        lblSeleccionado.text = "JOHN";
    }
    
}
