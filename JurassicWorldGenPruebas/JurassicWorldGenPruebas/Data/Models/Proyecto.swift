//
//  Proyecto.swift
//  JurassicWorldGenPruebas
//
//  Created by CONRADO DELSO GONZALEZ on 6/6/19.
//  Copyright © 2019 CONRADO DELSO GONZALEZ. All rights reserved.
//

import Foundation


class Proyecto{
    var nombreProyecto: String?
    var especieBase: String?
    var especieComplementaria: String?
    var descripcion: String?
    
    
    convenience init(nombreProyecto: String? = nil,  especieBase: String? = nil,  especieComplementaria: String? = nil, descripcion: String? = nil) {
        self.init()
        self.nombreProyecto = nombreProyecto
        self.especieBase = especieBase
        self.especieComplementaria = especieComplementaria
        self.descripcion = descripcion
        
    }
}
