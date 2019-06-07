//
//  Trabajador.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import Foundation



class Trabajador{
    var identidad: String?
    var ocupacion: String?
    var tipoProyectos: String?
    var descripcion: String?
    
    
    convenience init(identidad: String? = nil,  ocupacion: String? = nil, tipoProyectos: String?=nil, descripcion: String?=nil){
        self.init()
        self.identidad = identidad
        self.ocupacion = ocupacion
        self.tipoProyectos = tipoProyectos
        self.descripcion = descripcion
        
    }
}
