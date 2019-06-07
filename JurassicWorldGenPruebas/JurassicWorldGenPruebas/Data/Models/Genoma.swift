//
//  Genoma.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 28/5/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import Foundation

class Genoma{
    var especie: String?
    var tipo: String?
    var datos_especie: String?
    
    
    convenience init(especie: String? = nil,  tipo: String? = nil, datos_especie: String? = nil) {
        self.init()
        self.especie = especie
        self.tipo = tipo
        self.datos_especie = datos_especie
        
    }
}
