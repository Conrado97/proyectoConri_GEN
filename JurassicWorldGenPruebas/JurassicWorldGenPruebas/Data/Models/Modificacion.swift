//
//  Modificacion.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import Foundation


class Modificacion{
    var nombre: String?
    var descripcion: String?
    
    
    convenience init(nombre: String? = nil,  descripcion: String? = nil) {
        self.init()
        self.nombre = nombre
        self.descripcion = descripcion
        
    }
}
