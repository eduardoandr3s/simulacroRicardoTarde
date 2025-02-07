//
//  ViewController.swift
//  simulacroRicardoTarde
//
//  Created by Eduardo Segovia on 05/02/2025.
//

import UIKit


protocol ObtenerVoto {
    func obtener(dato: Voto)
}

class ViewController:
    UIViewController ,
    UITableViewDelegate,
    UITableViewDataSource{
    
    //---------TABLA--------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaVotos.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! CeldaTableViewCell;
        voto = listaVotos[indexPath.row];
        celda.lblVotado.text = voto.personajeVotado;
        celda.lblConteo.text = voto.nombreVotante
        
        return celda;
    }
    @IBOutlet weak var lblVotosArya: UILabel!
    @IBOutlet weak var lblVotosCersei: UILabel!
    
    @IBOutlet weak var lblVotosDaenerys: UILabel!
    @IBOutlet weak var lblVotosJohn: UILabel!
    
    @IBOutlet weak var tablaVotaciones: UITableView!
    var listaVotos: [Voto]!;
    var voto: Voto!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaVotos = [];
        tablaVotaciones.delegate = self;
        tablaVotaciones.dataSource = self;
        
    
    }
    
    func obtener(dato: Voto){
        voto = dato;
        listaVotos.append(voto);
        tablaVotaciones.reloadData();
        
        var contadorArya: Int = 0;
        var contadorCersei: Int = 0;
        var contadorDaenerys: Int = 0;
        var contadorJohn: Int = 0;
        
        
        for voto in listaVotos {
            switch voto.personajeVotado {
            case "ARYA":
                contadorArya += 1;
                break;
                
            case "CERSEI":
                contadorCersei += 1;
                break;
                
            case "DAENERYS":
                contadorDaenerys += 1;
                break;
            case "JOHN":
                contadorJohn += 1;
                break;
            default:
                break
            }
        }
        
        lblVotosJohn.text = "JOHN: \(contadorJohn)"
        lblVotosArya.text = "ARYA: \(contadorArya)"
        lblVotosCersei.text = "CERSEI: \(contadorCersei)"
        lblVotosDaenerys.text = "DAENERYS: \(contadorDaenerys)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "INSERTAR") {
            let destino = segue.destination as! SecondViewController;
            destino.delegate = self;
        }
    }


}

