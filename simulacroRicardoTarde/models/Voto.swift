//
//  Voto.swift
//  simulacroRicardoTarde
//
//  Created by Eduardo Segovia on 05/02/2025.
//

import Foundation
struct Voto {
    
    var nombreVotante: String;
    var personajeVotado: String;

    func toString() -> String{
        return "Votante: \(nombreVotante), Personaje: \(personajeVotado)"
    }
}
